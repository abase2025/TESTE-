-- Scripts SQL para criação do banco de dados do sistema LocaFácil no Supabase
-- Arquivo: 04_politicas_rls.sql
-- Descrição: Configuração de políticas de segurança Row Level Security (RLS)

-- Habilitar RLS em todas as tabelas
ALTER TABLE locafacil.usuarios ENABLE ROW LEVEL SECURITY;
ALTER TABLE locafacil.veiculos ENABLE ROW LEVEL SECURITY;
ALTER TABLE locafacil.veiculos_fotos ENABLE ROW LEVEL SECURITY;
ALTER TABLE locafacil.contratos ENABLE ROW LEVEL SECURITY;
ALTER TABLE locafacil.vistorias ENABLE ROW LEVEL SECURITY;
ALTER TABLE locafacil.vistorias_componentes ENABLE ROW LEVEL SECURITY;
ALTER TABLE locafacil.vistorias_fotos ENABLE ROW LEVEL SECURITY;
ALTER TABLE locafacil.documentos ENABLE ROW LEVEL SECURITY;
ALTER TABLE locafacil.multas ENABLE ROW LEVEL SECURITY;
ALTER TABLE locafacil.multas_pagamentos ENABLE ROW LEVEL SECURITY;
ALTER TABLE locafacil.multas_recursos ENABLE ROW LEVEL SECURITY;
ALTER TABLE locafacil.multas_recursos_documentos ENABLE ROW LEVEL SECURITY;
ALTER TABLE locafacil.quilometragem ENABLE ROW LEVEL SECURITY;
ALTER TABLE locafacil.pagamentos ENABLE ROW LEVEL SECURITY;
ALTER TABLE locafacil.relatorios ENABLE ROW LEVEL SECURITY;
ALTER TABLE locafacil.notificacoes ENABLE ROW LEVEL SECURITY;

-- Função auxiliar para verificar se o usuário é administrador
CREATE OR REPLACE FUNCTION locafacil.is_admin()
RETURNS BOOLEAN AS $$
DECLARE
  user_type VARCHAR;
BEGIN
  SELECT tipo INTO user_type
  FROM locafacil.usuarios
  WHERE id = auth.uid();
  
  RETURN user_type = 'administrador';
EXCEPTION
  WHEN OTHERS THEN
    RETURN FALSE;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- Função auxiliar para verificar se o usuário é proprietário
CREATE OR REPLACE FUNCTION locafacil.is_proprietario()
RETURNS BOOLEAN AS $$
DECLARE
  user_type VARCHAR;
BEGIN
  SELECT tipo INTO user_type
  FROM locafacil.usuarios
  WHERE id = auth.uid();
  
  RETURN user_type = 'proprietario';
EXCEPTION
  WHEN OTHERS THEN
    RETURN FALSE;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- Função auxiliar para verificar se o usuário é motorista
CREATE OR REPLACE FUNCTION locafacil.is_motorista()
RETURNS BOOLEAN AS $$
DECLARE
  user_type VARCHAR;
BEGIN
  SELECT tipo INTO user_type
  FROM locafacil.usuarios
  WHERE id = auth.uid();
  
  RETURN user_type = 'motorista';
EXCEPTION
  WHEN OTHERS THEN
    RETURN FALSE;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- Políticas para tabela de usuários
-- Administradores podem ver todos os usuários
CREATE POLICY admin_view_all_usuarios
  ON locafacil.usuarios
  FOR SELECT
  USING (locafacil.is_admin());

-- Proprietários podem ver seus próprios dados e dados dos motoristas associados aos seus veículos
CREATE POLICY proprietario_view_usuarios
  ON locafacil.usuarios
  FOR SELECT
  USING (
    auth.uid() = id OR
    locafacil.is_proprietario() AND (
      tipo = 'motorista' AND
      EXISTS (
        SELECT 1 FROM locafacil.veiculos
        WHERE proprietario_id = auth.uid() AND motorista_atual_id = locafacil.usuarios.id
      )
    )
  );

-- Motoristas podem ver apenas seus próprios dados e dados do proprietário do veículo que utilizam
CREATE POLICY motorista_view_usuarios
  ON locafacil.usuarios
  FOR SELECT
  USING (
    auth.uid() = id OR
    locafacil.is_motorista() AND (
      tipo = 'proprietario' AND
      EXISTS (
        SELECT 1 FROM locafacil.veiculos
        WHERE motorista_atual_id = auth.uid() AND proprietario_id = locafacil.usuarios.id
      )
    )
  );

-- Usuários podem atualizar apenas seus próprios dados
CREATE POLICY update_own_usuario
  ON locafacil.usuarios
  FOR UPDATE
  USING (auth.uid() = id);

-- Administradores podem atualizar qualquer usuário
CREATE POLICY admin_update_usuarios
  ON locafacil.usuarios
  FOR UPDATE
  USING (locafacil.is_admin());

-- Políticas para tabela de veículos
-- Administradores podem ver todos os veículos
CREATE POLICY admin_view_all_veiculos
  ON locafacil.veiculos
  FOR SELECT
  USING (locafacil.is_admin());

-- Proprietários podem ver apenas seus próprios veículos
CREATE POLICY proprietario_view_veiculos
  ON locafacil.veiculos
  FOR SELECT
  USING (proprietario_id = auth.uid());

-- Motoristas podem ver apenas o veículo que estão utilizando
CREATE POLICY motorista_view_veiculos
  ON locafacil.veiculos
  FOR SELECT
  USING (motorista_atual_id = auth.uid());

-- Proprietários podem inserir novos veículos
CREATE POLICY proprietario_insert_veiculos
  ON locafacil.veiculos
  FOR INSERT
  WITH CHECK (proprietario_id = auth.uid());

-- Proprietários podem atualizar seus próprios veículos
CREATE POLICY proprietario_update_veiculos
  ON locafacil.veiculos
  FOR UPDATE
  USING (proprietario_id = auth.uid());

-- Administradores podem atualizar qualquer veículo
CREATE POLICY admin_update_veiculos
  ON locafacil.veiculos
  FOR UPDATE
  USING (locafacil.is_admin());

-- Proprietários podem excluir seus próprios veículos
CREATE POLICY proprietario_delete_veiculos
  ON locafacil.veiculos
  FOR DELETE
  USING (proprietario_id = auth.uid());

-- Administradores podem excluir qualquer veículo
CREATE POLICY admin_delete_veiculos
  ON locafacil.veiculos
  FOR DELETE
  USING (locafacil.is_admin());

-- Políticas para tabela de fotos de veículos
-- Mesmas permissões que a tabela de veículos
CREATE POLICY view_veiculos_fotos
  ON locafacil.veiculos_fotos
  FOR SELECT
  USING (
    EXISTS (
      SELECT 1 FROM locafacil.veiculos
      WHERE id = veiculo_id AND (
        proprietario_id = auth.uid() OR
        motorista_atual_id = auth.uid() OR
        locafacil.is_admin()
      )
    )
  );

CREATE POLICY insert_veiculos_fotos
  ON locafacil.veiculos_fotos
  FOR INSERT
  WITH CHECK (
    EXISTS (
      SELECT 1 FROM locafacil.veiculos
      WHERE id = veiculo_id AND (
        proprietario_id = auth.uid() OR
        locafacil.is_admin()
      )
    )
  );

CREATE POLICY delete_veiculos_fotos
  ON locafacil.veiculos_fotos
  FOR DELETE
  USING (
    EXISTS (
      SELECT 1 FROM locafacil.veiculos
      WHERE id = veiculo_id AND (
        proprietario_id = auth.uid() OR
        locafacil.is_admin()
      )
    )
  );

-- Políticas para tabela de contratos
-- Administradores podem ver todos os contratos
CREATE POLICY admin_view_all_contratos
  ON locafacil.contratos
  FOR SELECT
  USING (locafacil.is_admin());

-- Proprietários podem ver contratos onde são proprietários
CREATE POLICY proprietario_view_contratos
  ON locafacil.contratos
  FOR SELECT
  USING (proprietario_id = auth.uid());

-- Motoristas podem ver contratos onde são motoristas
CREATE POLICY motorista_view_contratos
  ON locafacil.contratos
  FOR SELECT
  USING (motorista_id = auth.uid());

-- Proprietários podem inserir novos contratos
CREATE POLICY proprietario_insert_contratos
  ON locafacil.contratos
  FOR INSERT
  WITH CHECK (proprietario_id = auth.uid());

-- Proprietários podem atualizar seus próprios contratos
CREATE POLICY proprietario_update_contratos
  ON locafacil.contratos
  FOR UPDATE
  USING (proprietario_id = auth.uid());

-- Administradores podem atualizar qualquer contrato
CREATE POLICY admin_update_contratos
  ON locafacil.contratos
  FOR UPDATE
  USING (locafacil.is_admin());

-- Políticas para tabela de vistorias
-- Administradores podem ver todas as vistorias
CREATE POLICY admin_view_all_vistorias
  ON locafacil.vistorias
  FOR SELECT
  USING (locafacil.is_admin());

-- Proprietários podem ver vistorias de seus veículos
CREATE POLICY proprietario_view_vistorias
  ON locafacil.vistorias
  FOR SELECT
  USING (
    EXISTS (
      SELECT 1 FROM locafacil.veiculos
      WHERE id = veiculo_id AND proprietario_id = auth.uid()
    )
  );

-- Motoristas podem ver vistorias do veículo que utilizam
CREATE POLICY motorista_view_vistorias
  ON locafacil.vistorias
  FOR SELECT
  USING (
    EXISTS (
      SELECT 1 FROM locafacil.veiculos
      WHERE id = veiculo_id AND motorista_atual_id = auth.uid()
    )
  );

-- Proprietários e motoristas podem inserir vistorias
CREATE POLICY insert_vistorias
  ON locafacil.vistorias
  FOR INSERT
  WITH CHECK (
    realizada_por_id = auth.uid() AND
    EXISTS (
      SELECT 1 FROM locafacil.veiculos
      WHERE id = veiculo_id AND (
        proprietario_id = auth.uid() OR
        motorista_atual_id = auth.uid()
      )
    )
  );

-- Proprietários podem aprovar vistorias de seus veículos
CREATE POLICY proprietario_update_vistorias
  ON locafacil.vistorias
  FOR UPDATE
  USING (
    EXISTS (
      SELECT 1 FROM locafacil.veiculos
      WHERE id = veiculo_id AND proprietario_id = auth.uid()
    )
  );

-- Administradores podem atualizar qualquer vistoria
CREATE POLICY admin_update_vistorias
  ON locafacil.vistorias
  FOR UPDATE
  USING (locafacil.is_admin());

-- Políticas para componentes e fotos de vistorias (similar às vistorias)
-- Componentes de vistorias
CREATE POLICY view_vistorias_componentes
  ON locafacil.vistorias_componentes
  FOR SELECT
  USING (
    EXISTS (
      SELECT 1 FROM locafacil.vistorias v
      JOIN locafacil.veiculos ve ON v.veiculo_id = ve.id
      WHERE v.id = vistoria_id AND (
        ve.proprietario_id = auth.uid() OR
        ve.motorista_atual_id = auth.uid() OR
        locafacil.is_admin()
      )
    )
  );

CREATE POLICY insert_vistorias_componentes
  ON locafacil.vistorias_componentes
  FOR INSERT
  WITH CHECK (
    EXISTS (
      SELECT 1 FROM locafacil.vistorias v
      JOIN locafacil.veiculos ve ON v.veiculo_id = ve.id
      WHERE v.id = vistoria_id AND (
        v.realizada_por_id = auth.uid() OR
        locafacil.is_admin()
      )
    )
  );

-- Fotos de vistorias
CREATE POLICY view_vistorias_fotos
  ON locafacil.vistorias_fotos
  FOR SELECT
  USING (
    EXISTS (
      SELECT 1 FROM locafacil.vistorias v
      JOIN locafacil.veiculos ve ON v.veiculo_id = ve.id
      WHERE v.id = vistoria_id AND (
        ve.proprietario_id = auth.uid() OR
        ve.motorista_atual_id = auth.uid() OR
        locafacil.is_admin()
      )
    )
  );

CREATE POLICY insert_vistorias_fotos
  ON locafacil.vistorias_fotos
  FOR INSERT
  WITH CHECK (
    EXISTS (
      SELECT 1 FROM locafacil.vistorias v
      JOIN locafacil.veiculos ve ON v.veiculo_id = ve.id
      WHERE v.id = vistoria_id AND (
        v.realizada_por_id = auth.uid() OR
        locafacil.is_admin()
      )
    )
  );

-- Políticas para tabela de documentos
-- Administradores podem ver todos os documentos
CREATE POLICY admin_view_all_documentos
  ON locafacil.documentos
  FOR SELECT
  USING (locafacil.is_admin());

-- Proprietários podem ver documentos relacionados a eles ou seus veículos
CREATE POLICY proprietario_view_documentos
  ON locafacil.documentos
  FOR SELECT
  USING (
    (relacionado_tipo = 'motorista' AND relacionado_id = auth.uid()) OR
    (relacionado_tipo = 'empresa') OR
    (relacionado_tipo = 'veiculo' AND
      EXISTS (
        SELECT 1 FROM locafacil.veiculos
        WHERE id = relacionado_id AND proprietario_id = auth.uid()
      )
    )
  );

-- Motoristas podem ver documentos relacionados a eles ou ao veículo que utilizam
CREATE POLICY motorista_view_documentos
  ON locafacil.documentos
  FOR SELECT
  USING (
    (relacionado_tipo = 'motorista' AND relacionado_id = auth.uid()) OR
    (relacionado_tipo = 'empresa') OR
    (relacionado_tipo = 'veiculo' AND
      EXISTS (
        SELECT 1 FROM locafacil.veiculos
        WHERE id = relacionado_id AND motorista_atual_id = auth.uid()
      )
    )
  );

-- Proprietários podem inserir documentos relacionados a eles, seus veículos ou seus motoristas
CREATE POLICY proprietario_insert_documentos
  ON locafacil.documentos
  FOR INSERT
  WITH CHECK (
    (relacionado_tipo = 'motorista' AND relacionado_id = auth.uid()) OR
    (relacionado_tipo = 'veiculo' AND
      EXISTS (
        SELECT 1 FROM locafacil.veiculos
        WHERE id = relacionado_id AND proprietario_id = auth.uid()
      )
    )
  );

-- Motoristas podem inserir documentos relacionados a eles
CREATE POLICY motorista_insert_documentos
  ON locafacil.documentos
  FOR INSERT
  WITH CHECK (
    relacionado_tipo = 'motorista' AND relacionado_id = auth.uid()
  );

-- Administradores podem inserir qualquer documento
CREATE POLICY admin_insert_documentos
  ON locafacil.documentos
  FOR INSERT
  WITH CHECK (locafacil.is_admin());

-- Políticas para tabela de multas
-- Administradores podem ver todas as multas
CREATE POLICY admin_view_all_multas
  ON locafacil.multas
  FOR SELECT
  USING (locafacil.is_admin());

-- Proprietários podem ver multas de seus veículos
CREATE POLICY proprietario_view_multas
  ON locafacil.multas
  FOR SELECT
  USING (
    EXISTS (
      SELECT 1 FROM locafacil.veiculos
      WHERE id = veiculo_id AND proprietario_id = auth.uid()
    )
  );

-- Motoristas podem ver multas onde são responsáveis ou do veículo que utilizam
CREATE POLICY motorista_view_multas
  ON locafacil.multas
  FOR SELECT
  USING (
    responsavel_id = auth.uid() OR
    EXISTS (
      SELECT 1 FROM locafacil.veiculos
      WHERE id = veiculo_id AND motorista_atual_id = auth.uid()
    )
  );

-- Proprietários podem inserir multas para seus veículos
CREATE POLICY proprietario_insert_multas
  ON locafacil.multas
  FOR INSERT
  WITH CHECK (
    EXISTS (
      SELECT 1 FROM locafacil.veiculos
      WHERE id = veiculo_id AND proprietario_id = auth.uid()
    )
  );

-- Administradores podem inserir qualquer multa
CREATE POLICY admin_insert_multas
  ON locafacil.multas
  FOR INSERT
  WITH CHECK (locafacil.is_admin());

-- Políticas para pagamentos e recursos de multas (similar às multas)
-- Pagamentos de multas
CREATE POLICY view_multas_pagamentos
  ON locafacil.multas_pagamentos
  FOR SELECT
  USING (
    EXISTS (
      SELECT 1 FROM locafacil.multas m
      JOIN locafacil.veiculos v ON m.veiculo_id = v.id
      WHERE m.id = multa_id AND (
        v.proprietario_id = auth.uid() OR
        m.responsavel_id = auth.uid() OR
        locafacil.is_admin()
      )
    )
  );

CREATE POLICY insert_multas_pagamentos
  ON locafacil.multas_pagamentos
  FOR INSERT
  WITH CHECK (
    EXISTS (
      SELECT 1 FROM locafacil.multas m
      JOIN locafacil.veiculos v ON m.veiculo_id = v.id
      WHERE m.id = multa_id AND (
        v.proprietario_id = auth.uid() OR
        m.responsavel_id = auth.uid() OR
        locafacil.is_admin()
      )
    )
  );

-- Recursos de multas
CREATE POLICY view_multas_recursos
  ON locafacil.multas_recursos
  FOR SELECT
  USING (
    EXISTS (
      SELECT 1 FROM locafacil.multas m
      JOIN locafacil.veiculos v ON m.veiculo_id = v.id
      WHERE m.id = multa_id AND (
        v.proprietario_id = auth.uid() OR
        m.responsavel_id = auth.uid() OR
        locafacil.is_admin()
      )
    )
  );

CREATE POLICY insert_multas_recursos
  ON locafacil.multas_recursos
  FOR INSERT
  WITH CHECK (
    EXISTS (
      SELECT 1 FROM locafacil.multas m
      JOIN locafacil.veiculos v ON m.veiculo_id = v.id
      WHERE m.id = multa_id AND (
        v.proprietario_id = auth.uid() OR
        m.responsavel_id = auth.uid() OR
        locafacil.is_admin()
      )
    )
  );

-- Documentos de recursos
CREATE POLICY view_multas_recursos_documentos
  ON locafacil.multas_recursos_documentos
  FOR SELECT
  USING (
    EXISTS (
      SELECT 1 FROM locafacil.multas_recursos mr
      JOIN locafacil.multas m ON mr.multa_id = m.id
      JOIN locafacil.veiculos v ON m.veiculo_id = v.id
      WHERE mr.id = recurso_id AND (
        v.proprietario_id = auth.uid() OR
        m.responsavel_id = auth.uid() OR
        locafacil.is_admin()
      )
    )
  );

CREATE POLICY insert_multas_recursos_documentos
  ON locafacil.multas_recursos_documentos
  FOR INSERT
  WITH CHECK (
    EXISTS (
      SELECT 1 FROM locafacil.multas_recursos mr
      JOIN locafacil.multas m ON mr.multa_id = m.id
      JOIN locafacil.veiculos v ON m.veiculo_id = v.id
      WHERE mr.id = recurso_id AND (
        v.proprietario_id = auth.uid() OR
        m.responsavel_id = auth.uid() OR
        locafacil.is_admin()
      )
    )
  );

-- Políticas para tabela de quilometragem
-- Administradores podem ver todos os registros
CREATE POLICY admin_view_all_quilometragem
  ON locafacil.quilometragem
  FOR SELECT
  USING (locafacil.is_admin());

-- Proprietários podem ver registros de seus veículos
CREATE POLICY proprietario_view_quilometragem
  ON locafacil.quilometragem
  FOR SELECT
  USING (
    EXISTS (
      SELECT 1 FROM locafacil.veiculos
      WHERE id = veiculo_id AND proprietario_id = auth.uid()
    )
  );

-- Motoristas podem ver registros do veículo que utilizam
CREATE POLICY motorista_view_quilometragem
  ON locafacil.quilometragem
  FOR SELECT
  USING (
    motorista_id = auth.uid()
  );

-- Motoristas podem inserir registros para o veículo que utilizam
CREATE POLICY motorista_insert_quilometragem
  ON locafacil.quilometragem
  FOR INSERT
  WITH CHECK (
    motorista_id = auth.uid() AND
    EXISTS (
      SELECT 1 FROM locafacil.veiculos
      WHERE id = veiculo_id AND motorista_atual_id = auth.uid()
    )
  );

-- Proprietários podem inserir registros para seus veículos
CREATE POLICY proprietario_insert_quilometragem
  ON locafacil.quilometragem
  FOR INSERT
  WITH CHECK (
    EXISTS (
      SELECT 1 FROM locafacil.veiculos
      WHERE id = veiculo_id AND proprietario_id = auth.uid()
    )
  );

-- Políticas para tabela de pagamentos
-- Administradores podem ver todos os pagamentos
CREATE POLICY admin_view_all_pagamentos
  ON locafacil.pagamentos
  FOR SELECT
  USING (locafacil.is_admin());

-- Proprietários podem ver pagamentos de seus contratos
CREATE POLICY proprietario_view_pagamentos
  ON locafacil.pagamentos
  FOR SELECT
  USING (
    EXISTS (
      SELECT 1 FROM locafacil.contratos
      WHERE id = contrato_id AND proprietario_id = auth.uid()
    )
  );

-- Motoristas podem ver pagamentos de seus contratos
CREATE POLICY motorista_view_pagamentos
  ON locafacil.pagamentos
  FOR SELECT
  USING (
    EXISTS (
      SELECT 1 FROM locafacil.contratos
      WHERE id = contrato_id AND motorista_id = auth.uid()
    )
  );

-- Proprietários podem inserir pagamentos para seus contratos
CREATE POLICY proprietario_insert_pagamentos
  ON locafacil.pagamentos
  FOR INSERT
  WITH CHECK (
    EXISTS (
      SELECT 1 FROM locafacil.contratos
      WHERE id = contrato_id AND proprietario_id = auth.uid()
    )
  );

-- Motoristas podem registrar pagamentos para seus contratos
CREATE POLICY motorista_insert_pagamentos
  ON locafacil.pagamentos
  FOR INSERT
  WITH CHECK (
    EXISTS (
      SELECT 1 FROM locafacil.contratos
      WHERE id = contrato_id AND motorista_id = auth.uid()
    )
  );

-- Políticas para tabela de relatórios
-- Usuários podem ver apenas seus próprios relatórios
CREATE POLICY view_own_relatorios
  ON locafacil.relatorios
  FOR SELECT
  USING (usuario_id = auth.uid());

-- Administradores podem ver todos os relatórios
CREATE POLICY admin_view_all_relatorios
  ON locafacil.relatorios
  FOR SELECT
  USING (locafacil.is_admin());

-- Usuários podem inserir seus próprios relatórios
CREATE POLICY insert_own_relatorios
  ON locafacil.relatorios
  FOR INSERT
  WITH CHECK (usuario_id = auth.uid());

-- Usuários podem atualizar seus próprios relatórios
CREATE POLICY update_own_relatorios
  ON locafacil.relatorios
  FOR UPDATE
  USING (usuario_id = auth.uid());

-- Usuários podem excluir seus próprios relatórios
CREATE POLICY delete_own_relatorios
  ON locafacil.relatorios
  FOR DELETE
  USING (usuario_id = auth.uid());

-- Políticas para tabela de notificações
-- Usuários podem ver apenas suas próprias notificações
CREATE POLICY view_own_notificacoes
  ON locafacil.notificacoes
  FOR SELECT
  USING (usuario_id = auth.uid());

-- Usuários podem atualizar apenas suas próprias notificações (marcar como lidas)
CREATE POLICY update_own_notificacoes
  ON locafacil.notificacoes
  FOR UPDATE
  USING (usuario_id = auth.uid());

-- Administradores podem inserir notificações para qualquer usuário
CREATE POLICY admin_insert_notificacoes
  ON locafacil.notificacoes
  FOR INSERT
  WITH CHECK (locafacil.is_admin());

-- Comentários sobre as políticas RLS
COMMENT ON POLICY admin_view_all_usuarios ON locafacil.usuarios IS 'Administradores podem ver todos os usuários';
COMMENT ON POLICY proprietario_view_usuarios ON locafacil.usuarios IS 'Proprietários podem ver seus próprios dados e dados dos motoristas associados aos seus veículos';
COMMENT ON POLICY motorista_view_usuarios ON locafacil.usuarios IS 'Motoristas podem ver apenas seus próprios dados e dados do proprietário do veículo que utilizam';
COMMENT ON POLICY update_own_usuario ON locafacil.usuarios IS 'Usuários podem atualizar apenas seus próprios dados';
COMMENT ON POLICY admin_update_usuarios ON locafacil.usuarios IS 'Administradores podem atualizar qualquer usuário';
