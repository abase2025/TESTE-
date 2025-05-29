-- Scripts SQL para criação do banco de dados do sistema LocaFácil no Supabase
-- Arquivo: 02_tabelas_principais.sql
-- Descrição: Criação das tabelas principais do sistema

-- Tabela de Usuários (estende a tabela auth.users do Supabase)
CREATE TABLE locafacil.usuarios (
  id UUID PRIMARY KEY REFERENCES auth.users(id) ON DELETE CASCADE,
  nome VARCHAR(100) NOT NULL,
  email VARCHAR(255) NOT NULL UNIQUE,
  telefone VARCHAR(20),
  cpf VARCHAR(14) UNIQUE,
  tipo VARCHAR(20) NOT NULL CHECK (tipo IN ('proprietario', 'motorista', 'administrador')),
  foto_url TEXT,
  data_nascimento DATE,
  endereco_cep VARCHAR(10),
  endereco_logradouro VARCHAR(100),
  endereco_numero VARCHAR(20),
  endereco_complemento VARCHAR(50),
  endereco_bairro VARCHAR(50),
  endereco_cidade VARCHAR(50),
  endereco_estado CHAR(2),
  cnh_numero VARCHAR(20),
  cnh_categoria VARCHAR(5),
  cnh_validade DATE,
  cnh_url TEXT,
  status VARCHAR(20) NOT NULL DEFAULT 'ativo' CHECK (status IN ('ativo', 'inativo', 'bloqueado', 'pendente')),
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- Trigger para atualização automática do campo updated_at
CREATE TRIGGER set_usuarios_updated_at
BEFORE UPDATE ON locafacil.usuarios
FOR EACH ROW
EXECUTE FUNCTION locafacil.set_updated_at();

-- Tabela de Veículos
CREATE TABLE locafacil.veiculos (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  proprietario_id UUID NOT NULL REFERENCES locafacil.usuarios(id) ON DELETE RESTRICT,
  motorista_atual_id UUID REFERENCES locafacil.usuarios(id) ON DELETE SET NULL,
  placa VARCHAR(10) NOT NULL UNIQUE,
  renavam VARCHAR(30) NOT NULL UNIQUE,
  chassi VARCHAR(30) NOT NULL UNIQUE,
  marca VARCHAR(50) NOT NULL,
  modelo VARCHAR(50) NOT NULL,
  ano_fabricacao INTEGER NOT NULL,
  ano_modelo INTEGER NOT NULL,
  cor VARCHAR(30) NOT NULL,
  quilometragem INTEGER NOT NULL DEFAULT 0,
  status VARCHAR(20) NOT NULL DEFAULT 'disponivel' CHECK (status IN ('ativo', 'em_manutencao', 'disponivel', 'inativo')),
  data_aquisicao DATE NOT NULL,
  valor_aquisicao DECIMAL(10, 2) NOT NULL,
  valor_locacao DECIMAL(10, 2) NOT NULL,
  observacoes TEXT,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  created_by UUID REFERENCES auth.users(id),
  updated_by UUID REFERENCES auth.users(id)
);

-- Trigger para atualização automática do campo updated_at
CREATE TRIGGER set_veiculos_updated_at
BEFORE UPDATE ON locafacil.veiculos
FOR EACH ROW
EXECUTE FUNCTION locafacil.set_updated_at();

-- Trigger para auditoria de veículos
CREATE OR REPLACE FUNCTION locafacil.veiculos_audit_trigger()
RETURNS TRIGGER AS $$
BEGIN
  IF TG_OP = 'INSERT' THEN
    PERFORM locafacil.log_audit_event('veiculos', NEW.id, 'INSERT', NULL, to_jsonb(NEW));
  ELSIF TG_OP = 'UPDATE' THEN
    PERFORM locafacil.log_audit_event('veiculos', NEW.id, 'UPDATE', to_jsonb(OLD), to_jsonb(NEW));
  ELSIF TG_OP = 'DELETE' THEN
    PERFORM locafacil.log_audit_event('veiculos', OLD.id, 'DELETE', to_jsonb(OLD), NULL);
  END IF;
  RETURN NULL;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER veiculos_audit
AFTER INSERT OR UPDATE OR DELETE ON locafacil.veiculos
FOR EACH ROW EXECUTE FUNCTION locafacil.veiculos_audit_trigger();

-- Tabela de Fotos de Veículos
CREATE TABLE locafacil.veiculos_fotos (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  veiculo_id UUID NOT NULL REFERENCES locafacil.veiculos(id) ON DELETE CASCADE,
  url TEXT NOT NULL,
  tipo VARCHAR(30) NOT NULL DEFAULT 'geral' CHECK (tipo IN ('geral', 'frente', 'traseira', 'lateral_esquerda', 'lateral_direita', 'interior', 'motor', 'documento')),
  principal BOOLEAN NOT NULL DEFAULT false,
  ordem INTEGER NOT NULL DEFAULT 0,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  created_by UUID REFERENCES auth.users(id)
);

-- Tabela de Contratos
CREATE TABLE locafacil.contratos (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  veiculo_id UUID NOT NULL REFERENCES locafacil.veiculos(id) ON DELETE RESTRICT,
  proprietario_id UUID NOT NULL REFERENCES locafacil.usuarios(id) ON DELETE RESTRICT,
  motorista_id UUID NOT NULL REFERENCES locafacil.usuarios(id) ON DELETE RESTRICT,
  data_inicio DATE NOT NULL,
  data_fim DATE,
  valor DECIMAL(10, 2) NOT NULL,
  periodicidade VARCHAR(20) NOT NULL DEFAULT 'semanal' CHECK (periodicidade IN ('diario', 'semanal', 'quinzenal', 'mensal')),
  dia_pagamento INTEGER,
  status VARCHAR(20) NOT NULL DEFAULT 'ativo' CHECK (status IN ('pendente', 'ativo', 'encerrado', 'cancelado')),
  documento_url TEXT,
  observacoes TEXT,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  created_by UUID REFERENCES auth.users(id),
  updated_by UUID REFERENCES auth.users(id)
);

-- Trigger para atualização automática do campo updated_at
CREATE TRIGGER set_contratos_updated_at
BEFORE UPDATE ON locafacil.contratos
FOR EACH ROW
EXECUTE FUNCTION locafacil.set_updated_at();

-- Trigger para auditoria de contratos
CREATE TRIGGER contratos_audit
AFTER INSERT OR UPDATE OR DELETE ON locafacil.contratos
FOR EACH ROW EXECUTE FUNCTION locafacil.veiculos_audit_trigger();

-- Tabela de Vistorias
CREATE TABLE locafacil.vistorias (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  veiculo_id UUID NOT NULL REFERENCES locafacil.veiculos(id) ON DELETE RESTRICT,
  realizada_por_id UUID NOT NULL REFERENCES locafacil.usuarios(id) ON DELETE RESTRICT,
  aprovada_por_id UUID REFERENCES locafacil.usuarios(id) ON DELETE RESTRICT,
  data_hora TIMESTAMPTZ NOT NULL,
  tipo VARCHAR(20) NOT NULL CHECK (tipo IN ('inicial', 'periodica', 'final')),
  quilometragem INTEGER NOT NULL,
  nivel_combustivel VARCHAR(10) NOT NULL CHECK (nivel_combustivel IN ('vazio', '1/4', '1/2', '3/4', 'cheio')),
  status VARCHAR(20) NOT NULL DEFAULT 'pendente' CHECK (status IN ('pendente', 'realizada', 'aprovada', 'rejeitada')),
  observacoes TEXT,
  data_aprovacao TIMESTAMPTZ,
  motivo_rejeicao TEXT,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  created_by UUID REFERENCES auth.users(id),
  updated_by UUID REFERENCES auth.users(id)
);

-- Trigger para atualização automática do campo updated_at
CREATE TRIGGER set_vistorias_updated_at
BEFORE UPDATE ON locafacil.vistorias
FOR EACH ROW
EXECUTE FUNCTION locafacil.set_updated_at();

-- Tabela de Avaliações de Componentes nas Vistorias
CREATE TABLE locafacil.vistorias_componentes (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  vistoria_id UUID NOT NULL REFERENCES locafacil.vistorias(id) ON DELETE CASCADE,
  componente VARCHAR(30) NOT NULL,
  avaliacao INTEGER NOT NULL CHECK (avaliacao BETWEEN 1 AND 5),
  observacoes TEXT,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- Tabela de Fotos de Vistorias
CREATE TABLE locafacil.vistorias_fotos (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  vistoria_id UUID NOT NULL REFERENCES locafacil.vistorias(id) ON DELETE CASCADE,
  url TEXT NOT NULL,
  tipo VARCHAR(30) NOT NULL DEFAULT 'geral' CHECK (tipo IN ('geral', 'frente', 'traseira', 'lateral_esquerda', 'lateral_direita', 'interior', 'motor', 'dano')),
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  created_by UUID REFERENCES auth.users(id)
);

-- Tabela de Documentos
CREATE TABLE locafacil.documentos (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  tipo VARCHAR(30) NOT NULL CHECK (tipo IN ('crlv', 'seguro', 'revisao', 'cnh', 'contrato', 'outro')),
  nome VARCHAR(100) NOT NULL,
  relacionado_tipo VARCHAR(20) NOT NULL CHECK (relacionado_tipo IN ('veiculo', 'motorista', 'empresa')),
  relacionado_id UUID NOT NULL,
  url TEXT NOT NULL,
  data_emissao DATE NOT NULL,
  data_vencimento DATE,
  alerta_vencimento INTEGER, -- Dias antes para alertar
  descricao TEXT,
  status VARCHAR(20) NOT NULL DEFAULT 'valido' CHECK (status IN ('valido', 'proximo_vencimento', 'vencido')),
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  created_by UUID REFERENCES auth.users(id),
  updated_by UUID REFERENCES auth.users(id)
);

-- Trigger para atualização automática do campo updated_at
CREATE TRIGGER set_documentos_updated_at
BEFORE UPDATE ON locafacil.documentos
FOR EACH ROW
EXECUTE FUNCTION locafacil.set_updated_at();

-- Tabela de Multas
CREATE TABLE locafacil.multas (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  veiculo_id UUID NOT NULL REFERENCES locafacil.veiculos(id) ON DELETE RESTRICT,
  responsavel_id UUID REFERENCES locafacil.usuarios(id) ON DELETE SET NULL,
  data_infracao TIMESTAMPTZ NOT NULL,
  local_infracao TEXT NOT NULL,
  tipo_infracao VARCHAR(100) NOT NULL,
  valor DECIMAL(10, 2) NOT NULL,
  pontuacao INTEGER NOT NULL CHECK (pontuacao BETWEEN 0 AND 10),
  data_limite_pagamento DATE NOT NULL,
  data_limite_recurso DATE NOT NULL,
  status VARCHAR(20) NOT NULL DEFAULT 'pendente' CHECK (status IN ('pendente', 'em_recurso', 'paga', 'cancelada')),
  notificacao_url TEXT,
  observacoes TEXT,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  created_by UUID REFERENCES auth.users(id),
  updated_by UUID REFERENCES auth.users(id)
);

-- Trigger para atualização automática do campo updated_at
CREATE TRIGGER set_multas_updated_at
BEFORE UPDATE ON locafacil.multas
FOR EACH ROW
EXECUTE FUNCTION locafacil.set_updated_at();

-- Tabela de Pagamentos de Multas
CREATE TABLE locafacil.multas_pagamentos (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  multa_id UUID NOT NULL REFERENCES locafacil.multas(id) ON DELETE RESTRICT,
  data_pagamento DATE NOT NULL,
  valor_pago DECIMAL(10, 2) NOT NULL,
  metodo_pagamento VARCHAR(30) NOT NULL,
  comprovante_url TEXT,
  observacoes TEXT,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  created_by UUID REFERENCES auth.users(id)
);

-- Tabela de Recursos de Multas
CREATE TABLE locafacil.multas_recursos (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  multa_id UUID NOT NULL REFERENCES locafacil.multas(id) ON DELETE RESTRICT,
  data_recurso DATE NOT NULL,
  motivo VARCHAR(50) NOT NULL,
  argumentacao TEXT NOT NULL,
  status VARCHAR(20) NOT NULL DEFAULT 'em_analise' CHECK (status IN ('em_analise', 'deferido', 'indeferido')),
  data_resultado DATE,
  resultado_observacoes TEXT,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  created_by UUID REFERENCES auth.users(id),
  updated_by UUID REFERENCES auth.users(id)
);

-- Trigger para atualização automática do campo updated_at
CREATE TRIGGER set_multas_recursos_updated_at
BEFORE UPDATE ON locafacil.multas_recursos
FOR EACH ROW
EXECUTE FUNCTION locafacil.set_updated_at();

-- Tabela de Documentos de Recursos de Multas
CREATE TABLE locafacil.multas_recursos_documentos (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  recurso_id UUID NOT NULL REFERENCES locafacil.multas_recursos(id) ON DELETE CASCADE,
  url TEXT NOT NULL,
  nome VARCHAR(100) NOT NULL,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  created_by UUID REFERENCES auth.users(id)
);

-- Tabela de Registros de Quilometragem
CREATE TABLE locafacil.quilometragem (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  veiculo_id UUID NOT NULL REFERENCES locafacil.veiculos(id) ON DELETE RESTRICT,
  motorista_id UUID NOT NULL REFERENCES locafacil.usuarios(id) ON DELETE RESTRICT,
  data DATE NOT NULL,
  quilometragem INTEGER NOT NULL,
  tipo_uso VARCHAR(20) NOT NULL DEFAULT 'aplicativo' CHECK (tipo_uso IN ('aplicativo', 'particular', 'misto')),
  foto_url TEXT,
  observacoes TEXT,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  created_by UUID REFERENCES auth.users(id)
);

-- Tabela de Pagamentos (do contrato)
CREATE TABLE locafacil.pagamentos (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  contrato_id UUID NOT NULL REFERENCES locafacil.contratos(id) ON DELETE RESTRICT,
  data_vencimento DATE NOT NULL,
  valor DECIMAL(10, 2) NOT NULL,
  status VARCHAR(20) NOT NULL DEFAULT 'pendente' CHECK (status IN ('pendente', 'pago', 'atrasado', 'cancelado')),
  data_pagamento DATE,
  metodo_pagamento VARCHAR(30),
  comprovante_url TEXT,
  observacoes TEXT,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  created_by UUID REFERENCES auth.users(id),
  updated_by UUID REFERENCES auth.users(id)
);

-- Trigger para atualização automática do campo updated_at
CREATE TRIGGER set_pagamentos_updated_at
BEFORE UPDATE ON locafacil.pagamentos
FOR EACH ROW
EXECUTE FUNCTION locafacil.set_updated_at();

-- Tabela de Relatórios Salvos
CREATE TABLE locafacil.relatorios (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  usuario_id UUID NOT NULL REFERENCES locafacil.usuarios(id) ON DELETE CASCADE,
  nome VARCHAR(100) NOT NULL,
  descricao TEXT,
  configuracao JSONB NOT NULL,
  ultima_execucao TIMESTAMPTZ,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- Trigger para atualização automática do campo updated_at
CREATE TRIGGER set_relatorios_updated_at
BEFORE UPDATE ON locafacil.relatorios
FOR EACH ROW
EXECUTE FUNCTION locafacil.set_updated_at();

-- Tabela de Logs de Auditoria
CREATE TABLE locafacil.audit_logs (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  table_name TEXT NOT NULL,
  record_id UUID NOT NULL,
  action TEXT NOT NULL,
  old_data JSONB,
  new_data JSONB,
  user_id UUID,
  ip_address INET,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- Tabela de Notificações
CREATE TABLE locafacil.notificacoes (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  usuario_id UUID NOT NULL REFERENCES locafacil.usuarios(id) ON DELETE CASCADE,
  titulo VARCHAR(100) NOT NULL,
  mensagem TEXT NOT NULL,
  tipo VARCHAR(30) NOT NULL CHECK (tipo IN ('info', 'alerta', 'erro', 'sucesso')),
  relacionado_tipo VARCHAR(30),
  relacionado_id UUID,
  lida BOOLEAN NOT NULL DEFAULT false,
  data_leitura TIMESTAMPTZ,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- Comentários nas tabelas
COMMENT ON TABLE locafacil.usuarios IS 'Usuários do sistema, estendendo a tabela auth.users do Supabase';
COMMENT ON TABLE locafacil.veiculos IS 'Veículos gerenciados pelo sistema';
COMMENT ON TABLE locafacil.veiculos_fotos IS 'Fotos dos veículos';
COMMENT ON TABLE locafacil.contratos IS 'Contratos de locação entre proprietários e motoristas';
COMMENT ON TABLE locafacil.vistorias IS 'Vistorias realizadas nos veículos';
COMMENT ON TABLE locafacil.vistorias_componentes IS 'Avaliações de componentes nas vistorias';
COMMENT ON TABLE locafacil.vistorias_fotos IS 'Fotos das vistorias';
COMMENT ON TABLE locafacil.documentos IS 'Documentos relacionados a veículos, motoristas ou empresa';
COMMENT ON TABLE locafacil.multas IS 'Multas de trânsito dos veículos';
COMMENT ON TABLE locafacil.multas_pagamentos IS 'Pagamentos de multas';
COMMENT ON TABLE locafacil.multas_recursos IS 'Recursos contra multas';
COMMENT ON TABLE locafacil.multas_recursos_documentos IS 'Documentos de recursos contra multas';
COMMENT ON TABLE locafacil.quilometragem IS 'Registros de quilometragem dos veículos';
COMMENT ON TABLE locafacil.pagamentos IS 'Pagamentos dos contratos de locação';
COMMENT ON TABLE locafacil.relatorios IS 'Configurações de relatórios salvos pelos usuários';
COMMENT ON TABLE locafacil.audit_logs IS 'Logs de auditoria do sistema';
COMMENT ON TABLE locafacil.notificacoes IS 'Notificações para os usuários';
