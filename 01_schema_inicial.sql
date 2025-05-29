-- Scripts SQL para criação do banco de dados do sistema LocaFácil no Supabase
-- Arquivo: 01_schema_inicial.sql
-- Descrição: Criação do schema inicial e configurações básicas

-- Criação de schema personalizado para organização das tabelas
CREATE SCHEMA IF NOT EXISTS locafacil;

-- Configuração de extensões necessárias
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";      -- Para geração de UUIDs
CREATE EXTENSION IF NOT EXISTS "pg_stat_statements"; -- Para análise de performance
CREATE EXTENSION IF NOT EXISTS "pg_trgm";        -- Para busca por similaridade de texto
CREATE EXTENSION IF NOT EXISTS "unaccent";       -- Para busca sem acentos

-- Configuração de funções auxiliares para auditoria
CREATE OR REPLACE FUNCTION locafacil.set_updated_at()
RETURNS TRIGGER AS $$
BEGIN
  NEW.updated_at = now();
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Função para obter o usuário atual do Supabase
CREATE OR REPLACE FUNCTION locafacil.get_current_user_id()
RETURNS uuid AS $$
BEGIN
  RETURN auth.uid();
EXCEPTION
  WHEN OTHERS THEN
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;

-- Função para registrar ações de auditoria
CREATE OR REPLACE FUNCTION locafacil.log_audit_event(
  p_table_name text,
  p_record_id uuid,
  p_action text,
  p_old_data jsonb DEFAULT NULL,
  p_new_data jsonb DEFAULT NULL
)
RETURNS void AS $$
BEGIN
  INSERT INTO locafacil.audit_logs (
    table_name,
    record_id,
    action,
    old_data,
    new_data,
    user_id,
    ip_address
  ) VALUES (
    p_table_name,
    p_record_id,
    p_action,
    p_old_data,
    p_new_data,
    locafacil.get_current_user_id(),
    inet_client_addr()
  );
EXCEPTION
  WHEN OTHERS THEN
    -- Log silenciosamente falhas de auditoria para não interromper operações principais
    NULL;
END;
$$ LANGUAGE plpgsql;

COMMENT ON SCHEMA locafacil IS 'Schema principal para o sistema LocaFácil de gerenciamento de carros locados para aplicativos';
