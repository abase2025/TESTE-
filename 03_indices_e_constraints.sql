-- Scripts SQL para criação do banco de dados do sistema LocaFácil no Supabase
-- Arquivo: 03_indices_e_constraints.sql
-- Descrição: Criação de índices e constraints adicionais para otimização

-- Índices para otimização de consultas frequentes

-- Índices para tabela de usuários
CREATE INDEX idx_usuarios_tipo ON locafacil.usuarios(tipo);
CREATE INDEX idx_usuarios_status ON locafacil.usuarios(status);
CREATE INDEX idx_usuarios_nome ON locafacil.usuarios(nome);
CREATE INDEX idx_usuarios_email ON locafacil.usuarios(email);
CREATE INDEX idx_usuarios_cpf ON locafacil.usuarios(cpf);

-- Índices para tabela de veículos
CREATE INDEX idx_veiculos_proprietario ON locafacil.veiculos(proprietario_id);
CREATE INDEX idx_veiculos_motorista ON locafacil.veiculos(motorista_atual_id);
CREATE INDEX idx_veiculos_status ON locafacil.veiculos(status);
CREATE INDEX idx_veiculos_placa ON locafacil.veiculos(placa);
CREATE INDEX idx_veiculos_marca_modelo ON locafacil.veiculos(marca, modelo);

-- Índices para tabela de contratos
CREATE INDEX idx_contratos_veiculo ON locafacil.contratos(veiculo_id);
CREATE INDEX idx_contratos_proprietario ON locafacil.contratos(proprietario_id);
CREATE INDEX idx_contratos_motorista ON locafacil.contratos(motorista_id);
CREATE INDEX idx_contratos_status ON locafacil.contratos(status);
CREATE INDEX idx_contratos_datas ON locafacil.contratos(data_inicio, data_fim);

-- Índices para tabela de vistorias
CREATE INDEX idx_vistorias_veiculo ON locafacil.vistorias(veiculo_id);
CREATE INDEX idx_vistorias_realizada_por ON locafacil.vistorias(realizada_por_id);
CREATE INDEX idx_vistorias_status ON locafacil.vistorias(status);
CREATE INDEX idx_vistorias_data ON locafacil.vistorias(data_hora);
CREATE INDEX idx_vistorias_tipo ON locafacil.vistorias(tipo);

-- Índices para tabela de documentos
CREATE INDEX idx_documentos_tipo ON locafacil.documentos(tipo);
CREATE INDEX idx_documentos_relacionado ON locafacil.documentos(relacionado_tipo, relacionado_id);
CREATE INDEX idx_documentos_vencimento ON locafacil.documentos(data_vencimento);
CREATE INDEX idx_documentos_status ON locafacil.documentos(status);

-- Índices para tabela de multas
CREATE INDEX idx_multas_veiculo ON locafacil.multas(veiculo_id);
CREATE INDEX idx_multas_responsavel ON locafacil.multas(responsavel_id);
CREATE INDEX idx_multas_status ON locafacil.multas(status);
CREATE INDEX idx_multas_data ON locafacil.multas(data_infracao);
CREATE INDEX idx_multas_limite_pagamento ON locafacil.multas(data_limite_pagamento);

-- Índices para tabela de quilometragem
CREATE INDEX idx_quilometragem_veiculo ON locafacil.quilometragem(veiculo_id);
CREATE INDEX idx_quilometragem_motorista ON locafacil.quilometragem(motorista_id);
CREATE INDEX idx_quilometragem_data ON locafacil.quilometragem(data);

-- Índices para tabela de pagamentos
CREATE INDEX idx_pagamentos_contrato ON locafacil.pagamentos(contrato_id);
CREATE INDEX idx_pagamentos_status ON locafacil.pagamentos(status);
CREATE INDEX idx_pagamentos_vencimento ON locafacil.pagamentos(data_vencimento);

-- Índices para tabela de notificações
CREATE INDEX idx_notificacoes_usuario ON locafacil.notificacoes(usuario_id);
CREATE INDEX idx_notificacoes_lida ON locafacil.notificacoes(lida);
CREATE INDEX idx_notificacoes_tipo ON locafacil.notificacoes(tipo);

-- Índices para tabela de auditoria
CREATE INDEX idx_audit_logs_table ON locafacil.audit_logs(table_name);
CREATE INDEX idx_audit_logs_record ON locafacil.audit_logs(record_id);
CREATE INDEX idx_audit_logs_user ON locafacil.audit_logs(user_id);
CREATE INDEX idx_audit_logs_created ON locafacil.audit_logs(created_at);

-- Constraints adicionais

-- Constraint para garantir que o motorista atual de um veículo seja do tipo 'motorista'
ALTER TABLE locafacil.veiculos
ADD CONSTRAINT check_motorista_tipo
CHECK (
  motorista_atual_id IS NULL OR 
  EXISTS (
    SELECT 1 FROM locafacil.usuarios 
    WHERE id = motorista_atual_id AND tipo = 'motorista'
  )
);

-- Constraint para garantir que o proprietário de um veículo seja do tipo 'proprietario'
ALTER TABLE locafacil.veiculos
ADD CONSTRAINT check_proprietario_tipo
CHECK (
  EXISTS (
    SELECT 1 FROM locafacil.usuarios 
    WHERE id = proprietario_id AND tipo = 'proprietario'
  )
);

-- Constraint para garantir que a data de fim do contrato seja posterior à data de início
ALTER TABLE locafacil.contratos
ADD CONSTRAINT check_contrato_datas
CHECK (data_fim IS NULL OR data_fim > data_inicio);

-- Constraint para garantir que a quilometragem registrada seja maior que a anterior
CREATE OR REPLACE FUNCTION locafacil.check_quilometragem()
RETURNS TRIGGER AS $$
DECLARE
  ultima_km INTEGER;
BEGIN
  SELECT quilometragem INTO ultima_km
  FROM locafacil.veiculos
  WHERE id = NEW.veiculo_id;
  
  IF NEW.quilometragem < ultima_km THEN
    RAISE EXCEPTION 'A quilometragem registrada (%) não pode ser menor que a atual (%)', 
      NEW.quilometragem, ultima_km;
  END IF;
  
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER check_quilometragem_before_insert
BEFORE INSERT ON locafacil.quilometragem
FOR EACH ROW
EXECUTE FUNCTION locafacil.check_quilometragem();

-- Função para atualizar a quilometragem do veículo após novo registro
CREATE OR REPLACE FUNCTION locafacil.update_veiculo_quilometragem()
RETURNS TRIGGER AS $$
BEGIN
  UPDATE locafacil.veiculos
  SET 
    quilometragem = NEW.quilometragem,
    updated_at = NOW(),
    updated_by = NEW.created_by
  WHERE id = NEW.veiculo_id;
  
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER update_veiculo_km_after_insert
AFTER INSERT ON locafacil.quilometragem
FOR EACH ROW
EXECUTE FUNCTION locafacil.update_veiculo_quilometragem();

-- Função para atualizar o status de documentos baseado na data de vencimento
CREATE OR REPLACE FUNCTION locafacil.update_documento_status()
RETURNS TRIGGER AS $$
BEGIN
  IF NEW.data_vencimento IS NOT NULL THEN
    IF NEW.data_vencimento < CURRENT_DATE THEN
      NEW.status := 'vencido';
    ELSIF NEW.data_vencimento < (CURRENT_DATE + (COALESCE(NEW.alerta_vencimento, 30) * INTERVAL '1 day')) THEN
      NEW.status := 'proximo_vencimento';
    ELSE
      NEW.status := 'valido';
    END IF;
  ELSE
    NEW.status := 'valido';
  END IF;
  
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER update_documento_status_trigger
BEFORE INSERT OR UPDATE ON locafacil.documentos
FOR EACH ROW
EXECUTE FUNCTION locafacil.update_documento_status();

-- Função para atualizar o status de multas após pagamento
CREATE OR REPLACE FUNCTION locafacil.update_multa_status_after_payment()
RETURNS TRIGGER AS $$
BEGIN
  UPDATE locafacil.multas
  SET 
    status = 'paga',
    updated_at = NOW(),
    updated_by = NEW.created_by
  WHERE id = NEW.multa_id;
  
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER update_multa_status_trigger
AFTER INSERT ON locafacil.multas_pagamentos
FOR EACH ROW
EXECUTE FUNCTION locafacil.update_multa_status_after_payment();

-- Função para atualizar o status de multas após recurso
CREATE OR REPLACE FUNCTION locafacil.update_multa_status_after_recurso()
RETURNS TRIGGER AS $$
BEGIN
  UPDATE locafacil.multas
  SET 
    status = 'em_recurso',
    updated_at = NOW(),
    updated_by = NEW.created_by
  WHERE id = NEW.multa_id;
  
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER update_multa_status_after_recurso_trigger
AFTER INSERT ON locafacil.multas_recursos
FOR EACH ROW
EXECUTE FUNCTION locafacil.update_multa_status_after_recurso();

-- Função para criar notificação automática para documentos próximos do vencimento
CREATE OR REPLACE FUNCTION locafacil.create_documento_notification()
RETURNS TRIGGER AS $$
DECLARE
  usuario_id UUID;
  titulo TEXT;
  mensagem TEXT;
BEGIN
  IF NEW.status = 'proximo_vencimento' AND (OLD IS NULL OR OLD.status <> 'proximo_vencimento') THEN
    -- Determinar o usuário para notificar
    IF NEW.relacionado_tipo = 'veiculo' THEN
      SELECT proprietario_id INTO usuario_id
      FROM locafacil.veiculos
      WHERE id = NEW.relacionado_id;
    ELSIF NEW.relacionado_tipo = 'motorista' THEN
      usuario_id := NEW.relacionado_id;
    ELSE
      -- Para documentos da empresa, notificar todos os administradores
      -- (implementação simplificada para um administrador)
      SELECT id INTO usuario_id
      FROM locafacil.usuarios
      WHERE tipo = 'administrador'
      LIMIT 1;
    END IF;
    
    titulo := 'Documento próximo do vencimento';
    mensagem := 'O documento ' || NEW.nome || ' vencerá em ' || 
                (NEW.data_vencimento - CURRENT_DATE) || ' dias (' || 
                to_char(NEW.data_vencimento, 'DD/MM/YYYY') || ').';
    
    INSERT INTO locafacil.notificacoes (
      usuario_id, titulo, mensagem, tipo, relacionado_tipo, relacionado_id
    ) VALUES (
      usuario_id, titulo, mensagem, 'alerta', 'documento', NEW.id
    );
  END IF;
  
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER create_documento_notification_trigger
AFTER INSERT OR UPDATE ON locafacil.documentos
FOR EACH ROW
EXECUTE FUNCTION locafacil.create_documento_notification();

-- Função para criar notificação automática para multas próximas do vencimento
CREATE OR REPLACE FUNCTION locafacil.create_multa_notification()
RETURNS TRIGGER AS $$
DECLARE
  usuario_id UUID;
  titulo TEXT;
  mensagem TEXT;
  dias_restantes INTEGER;
BEGIN
  -- Verificar se está próximo do vencimento (7 dias)
  dias_restantes := NEW.data_limite_pagamento - CURRENT_DATE;
  
  IF dias_restantes <= 7 AND dias_restantes > 0 AND NEW.status = 'pendente' THEN
    -- Notificar o responsável pela multa
    usuario_id := NEW.responsavel_id;
    
    titulo := 'Multa próxima do vencimento';
    mensagem := 'A multa no valor de R$ ' || NEW.valor || 
                ' vencerá em ' || dias_restantes || ' dias (' || 
                to_char(NEW.data_limite_pagamento, 'DD/MM/YYYY') || ').';
    
    INSERT INTO locafacil.notificacoes (
      usuario_id, titulo, mensagem, tipo, relacionado_tipo, relacionado_id
    ) VALUES (
      usuario_id, titulo, mensagem, 'alerta', 'multa', NEW.id
    );
  END IF;
  
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER create_multa_notification_trigger
AFTER INSERT OR UPDATE ON locafacil.multas
FOR EACH ROW
EXECUTE FUNCTION locafacil.create_multa_notification();
