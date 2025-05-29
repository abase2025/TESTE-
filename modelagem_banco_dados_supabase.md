# Modelagem do Banco de Dados no Supabase

## Visão Geral

A modelagem do banco de dados para o sistema "LocaFácil" foi adaptada para implementação no Supabase, uma plataforma de backend que oferece banco de dados PostgreSQL, autenticação, armazenamento e funcionalidades em tempo real. Esta modelagem considera as particularidades do Supabase e aproveita seus recursos específicos para criar uma estrutura robusta e eficiente.

## Estrutura do Banco de Dados no Supabase

O Supabase utiliza PostgreSQL como banco de dados relacional, o que permite implementar uma modelagem tradicional com tabelas, relacionamentos e restrições. Além disso, oferece recursos adicionais como políticas de segurança em nível de linha (RLS), triggers, funções e extensões.

### Tabelas Principais

#### 1. users (Gerenciada pelo Supabase Auth)

O Supabase possui um sistema de autenticação integrado que gerencia automaticamente a tabela de usuários.

**Campos padrão do Supabase Auth:**
- id (UUID, PK)
- email (string, único)
- encrypted_password (string)
- email_confirmed_at (timestamp)
- last_sign_in_at (timestamp)
- created_at (timestamp)
- updated_at (timestamp)

**Campos personalizados a serem adicionados:**
- full_name (text)
- phone (text)
- user_type (enum: 'proprietario', 'motorista')
- profile_image_url (text)
- status (enum: 'ativo', 'inativo', 'suspenso')

#### 2. profiles

Armazena informações adicionais dos usuários, complementando a tabela de autenticação.

**Campos:**
- id (UUID, PK, referência a users.id)
- full_name (text)
- phone (text)
- user_type (enum: 'proprietario', 'motorista')
- profile_image_url (text)
- address (text)
- city (text)
- state (text)
- postal_code (text)
- document_id (text, CPF/CNPJ)
- birth_date (date)
- created_at (timestamp)
- updated_at (timestamp)

#### 3. vehicles

Armazena informações sobre os veículos gerenciados no sistema.

**Campos:**
- id (UUID, PK)
- owner_id (UUID, FK referência a profiles.id)
- current_driver_id (UUID, FK referência a profiles.id, nullable)
- plate (text, único)
- brand (text)
- model (text)
- year_manufacture (integer)
- year_model (integer)
- color (text)
- renavam (text)
- chassis (text)
- current_mileage (numeric)
- acquisition_date (date)
- acquisition_value (numeric)
- rental_value (numeric)
- status (enum: 'disponivel', 'locado', 'manutencao', 'inativo')
- created_at (timestamp)
- updated_at (timestamp)

#### 4. vehicle_images

Armazena referências às imagens dos veículos.

**Campos:**
- id (UUID, PK)
- vehicle_id (UUID, FK referência a vehicles.id)
- storage_path (text)
- description (text)
- is_main (boolean)
- created_at (timestamp)

#### 5. contracts

Armazena informações sobre contratos de locação.

**Campos:**
- id (UUID, PK)
- vehicle_id (UUID, FK referência a vehicles.id)
- owner_id (UUID, FK referência a profiles.id)
- driver_id (UUID, FK referência a profiles.id)
- start_date (date)
- end_date (date, nullable)
- rental_value (numeric)
- payment_frequency (enum: 'diario', 'semanal', 'quinzenal', 'mensal')
- max_mileage (numeric, nullable)
- special_conditions (text)
- status (enum: 'ativo', 'encerrado', 'suspenso')
- document_url (text)
- created_at (timestamp)
- updated_at (timestamp)

#### 6. inspections

Armazena informações sobre vistorias realizadas nos veículos.

**Campos:**
- id (UUID, PK)
- vehicle_id (UUID, FK referência a vehicles.id)
- performed_by (UUID, FK referência a profiles.id)
- approved_by (UUID, FK referência a profiles.id, nullable)
- inspection_date (timestamp)
- mileage (numeric)
- general_condition (integer, 1-5)
- fuel_level (enum: 'vazio', '1/4', '1/2', '3/4', 'cheio')
- tires_condition (integer, 1-5)
- brakes_condition (integer, 1-5)
- suspension_condition (integer, 1-5)
- body_condition (integer, 1-5)
- interior_condition (integer, 1-5)
- observations (text)
- type (enum: 'inicial', 'periodica', 'final')
- status (enum: 'pendente', 'realizada', 'aprovada', 'rejeitada')
- created_at (timestamp)
- updated_at (timestamp)

#### 7. inspection_images

Armazena referências às imagens das vistorias.

**Campos:**
- id (UUID, PK)
- inspection_id (UUID, FK referência a inspections.id)
- storage_path (text)
- description (text)
- angle (enum: 'frente', 'traseira', 'lateral_esquerda', 'lateral_direita', 'interior', 'outro')
- created_at (timestamp)

#### 8. documents

Armazena informações sobre documentos relacionados a veículos e motoristas.

**Campos:**
- id (UUID, PK)
- vehicle_id (UUID, FK referência a vehicles.id, nullable)
- profile_id (UUID, FK referência a profiles.id, nullable)
- contract_id (UUID, FK referência a contracts.id, nullable)
- type (enum: 'crlv', 'seguro', 'revisao', 'cnh', 'contrato', 'outro')
- name (text)
- description (text)
- storage_path (text)
- issue_date (date)
- expiry_date (date, nullable)
- status (enum: 'valido', 'vencido', 'proximo_vencimento')
- expiry_alert_days (integer)
- created_at (timestamp)
- updated_at (timestamp)

#### 9. traffic_tickets

Armazena informações sobre multas de trânsito.

**Campos:**
- id (UUID, PK)
- vehicle_id (UUID, FK referência a vehicles.id)
- driver_id (UUID, FK referência a profiles.id, nullable)
- infraction_date (timestamp)
- location (text)
- description (text)
- value (numeric)
- points (integer)
- discount_payment_deadline (date)
- appeal_deadline (date)
- responsible (enum: 'proprietario', 'motorista')
- status (enum: 'pendente', 'em_recurso', 'paga', 'cancelada')
- payment_proof_url (text, nullable)
- appeal_details (text, nullable)
- notification_url (text, nullable)
- created_at (timestamp)
- updated_at (timestamp)

#### 10. mileage_records

Armazena registros periódicos de quilometragem dos veículos.

**Campos:**
- id (UUID, PK)
- vehicle_id (UUID, FK referência a vehicles.id)
- recorded_by (UUID, FK referência a profiles.id)
- record_date (date)
- mileage (numeric)
- record_type (enum: 'manual', 'vistoria', 'manutencao')
- observations (text)
- odometer_image_url (text, nullable)
- created_at (timestamp)

#### 11. payments

Armazena registros de pagamentos relacionados aos contratos.

**Campos:**
- id (UUID, PK)
- contract_id (UUID, FK referência a contracts.id)
- traffic_ticket_id (UUID, FK referência a traffic_tickets.id, nullable)
- due_date (date)
- payment_date (date, nullable)
- value (numeric)
- payment_method (enum: 'dinheiro', 'pix', 'transferencia', 'outro')
- status (enum: 'pendente', 'pago', 'atrasado')
- proof_url (text, nullable)
- observations (text)
- created_at (timestamp)
- updated_at (timestamp)

#### 12. reports

Armazena configurações e metadados de relatórios gerados pelos usuários.

**Campos:**
- id (UUID, PK)
- created_by (UUID, FK referência a profiles.id)
- type (enum: 'quilometragem', 'custos', 'desempenho', 'vistorias', 'personalizado')
- name (text)
- description (text)
- parameters (jsonb)
- generation_date (timestamp)
- file_url (text, nullable)
- is_favorite (boolean)
- created_at (timestamp)
- updated_at (timestamp)

#### 13. report_vehicles

Tabela de junção para relacionar relatórios a múltiplos veículos.

**Campos:**
- id (UUID, PK)
- report_id (UUID, FK referência a reports.id)
- vehicle_id (UUID, FK referência a vehicles.id)

#### 14. notifications

Armazena notificações do sistema para os usuários.

**Campos:**
- id (UUID, PK)
- user_id (UUID, FK referência a profiles.id)
- title (text)
- message (text)
- type (enum: 'info', 'warning', 'alert', 'success')
- related_entity (enum: 'vehicle', 'inspection', 'document', 'traffic_ticket', 'payment', 'other')
- entity_id (UUID, nullable)
- is_read (boolean)
- created_at (timestamp)

#### 15. audit_logs

Registra ações importantes realizadas no sistema para fins de auditoria.

**Campos:**
- id (UUID, PK)
- user_id (UUID, FK referência a profiles.id)
- action (text)
- entity_type (text)
- entity_id (UUID)
- details (jsonb)
- ip_address (text)
- created_at (timestamp)

### Configurações de Armazenamento (Storage)

O Supabase Storage será configurado com os seguintes buckets:

1. **profile-images**: Para armazenar fotos de perfil dos usuários
2. **vehicle-images**: Para armazenar fotos dos veículos
3. **inspection-images**: Para armazenar fotos das vistorias
4. **documents**: Para armazenar documentos digitalizados
5. **payment-proofs**: Para armazenar comprovantes de pagamento
6. **ticket-notifications**: Para armazenar notificações de multas
7. **reports**: Para armazenar relatórios gerados

### Políticas de Segurança (RLS)

O Supabase permite definir políticas de segurança em nível de linha (Row Level Security), que serão configuradas para garantir que os usuários só tenham acesso aos dados apropriados:

#### Exemplo de políticas para a tabela vehicles:

1. **Política de leitura para proprietários**:
```sql
CREATE POLICY "Proprietários podem ver seus próprios veículos"
ON vehicles FOR SELECT
USING (auth.uid() IN (
  SELECT id FROM profiles WHERE id = owner_id AND user_type = 'proprietario'
));
```

2. **Política de leitura para motoristas**:
```sql
CREATE POLICY "Motoristas podem ver veículos associados a eles"
ON vehicles FOR SELECT
USING (auth.uid() IN (
  SELECT id FROM profiles WHERE id = current_driver_id AND user_type = 'motorista'
));
```

3. **Política de inserção para proprietários**:
```sql
CREATE POLICY "Proprietários podem adicionar veículos"
ON vehicles FOR INSERT
WITH CHECK (auth.uid() IN (
  SELECT id FROM profiles WHERE id = owner_id AND user_type = 'proprietario'
));
```

Políticas similares serão definidas para todas as tabelas, garantindo a segurança e privacidade dos dados.

### Funções e Triggers

O Supabase permite a criação de funções PostgreSQL e triggers para implementar lógicas de negócio complexas:

#### Exemplo de função para atualizar quilometragem atual:

```sql
CREATE OR REPLACE FUNCTION update_vehicle_mileage()
RETURNS TRIGGER AS $$
BEGIN
  UPDATE vehicles
  SET current_mileage = NEW.mileage,
      updated_at = NOW()
  WHERE id = NEW.vehicle_id;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER after_mileage_record_insert
AFTER INSERT ON mileage_records
FOR EACH ROW
EXECUTE FUNCTION update_vehicle_mileage();
```

#### Exemplo de função para criar notificação de documento próximo do vencimento:

```sql
CREATE OR REPLACE FUNCTION check_document_expiry()
RETURNS TRIGGER AS $$
BEGIN
  IF NEW.expiry_date IS NOT NULL AND 
     NEW.expiry_date - CURRENT_DATE <= NEW.expiry_alert_days THEN
    
    INSERT INTO notifications (
      id, user_id, title, message, type, related_entity, entity_id, is_read, created_at
    ) VALUES (
      gen_random_uuid(),
      (SELECT owner_id FROM vehicles WHERE id = NEW.vehicle_id),
      'Documento próximo do vencimento',
      'O documento ' || NEW.name || ' vencerá em ' || (NEW.expiry_date - CURRENT_DATE) || ' dias.',
      'warning',
      'document',
      NEW.id,
      false,
      NOW()
    );
  END IF;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER check_document_expiry_trigger
AFTER INSERT OR UPDATE ON documents
FOR EACH ROW
EXECUTE FUNCTION check_document_expiry();
```

### Índices

Para otimizar o desempenho das consultas, serão criados índices nas colunas frequentemente utilizadas em filtros e ordenações:

```sql
-- Índices para vehicles
CREATE INDEX idx_vehicles_owner_id ON vehicles(owner_id);
CREATE INDEX idx_vehicles_current_driver_id ON vehicles(current_driver_id);
CREATE INDEX idx_vehicles_status ON vehicles(status);
CREATE INDEX idx_vehicles_plate ON vehicles(plate);

-- Índices para inspections
CREATE INDEX idx_inspections_vehicle_id ON inspections(vehicle_id);
CREATE INDEX idx_inspections_status ON inspections(status);
CREATE INDEX idx_inspections_date ON inspections(inspection_date);

-- Índices para documents
CREATE INDEX idx_documents_vehicle_id ON documents(vehicle_id);
CREATE INDEX idx_documents_profile_id ON documents(profile_id);
CREATE INDEX idx_documents_expiry_date ON documents(expiry_date);
CREATE INDEX idx_documents_status ON documents(status);

-- Índices para traffic_tickets
CREATE INDEX idx_traffic_tickets_vehicle_id ON traffic_tickets(vehicle_id);
CREATE INDEX idx_traffic_tickets_status ON traffic_tickets(status);
CREATE INDEX idx_traffic_tickets_deadline ON traffic_tickets(discount_payment_deadline);
```

## Funcionalidades em Tempo Real

O Supabase oferece funcionalidades em tempo real através de WebSockets, que serão utilizadas para:

1. **Atualizações de Dashboard**: Atualizar automaticamente os dados do dashboard quando houver mudanças relevantes.

2. **Notificações**: Enviar notificações em tempo real para os usuários quando eventos importantes ocorrerem.

3. **Atualizações de Quilometragem**: Refletir imediatamente os novos registros de quilometragem em todas as visualizações relevantes.

4. **Status de Veículos**: Atualizar o status dos veículos em tempo real quando houver mudanças.

Exemplo de configuração de canal em tempo real no cliente FlutterFlow:

```dart
final subscription = supabase
  .from('vehicles')
  .on(SupabaseEventTypes.update, (payload) {
    // Atualizar a interface do usuário com os novos dados
  })
  .subscribe();
```

## Autenticação e Autorização

O sistema de autenticação do Supabase será configurado para:

1. **Métodos de Autenticação**:
   - E-mail e senha
   - Autenticação de dois fatores (2FA) para maior segurança

2. **Níveis de Acesso**:
   - Administrador: Acesso total ao sistema
   - Proprietário: Acesso aos seus veículos e motoristas associados
   - Motorista: Acesso limitado ao seu veículo e suas próprias informações

3. **Recuperação de Senha**: Fluxo seguro para recuperação de senhas esquecidas.

4. **Sessões**: Gerenciamento de sessões com tokens JWT e refresh tokens para manter os usuários conectados de forma segura.

## Estratégia de Migração e Backup

O Supabase oferece recursos para backup e restauração de dados:

1. **Backups Automáticos**: Configuração de backups diários automáticos do banco de dados.

2. **Exportação de Dados**: Implementação de funcionalidade para exportação de dados em formatos comuns (CSV, Excel) para uso offline ou migração futura.

3. **Versionamento**: Manutenção de um registro de alterações significativas na estrutura do banco de dados para facilitar futuras migrações.

## Considerações de Desempenho e Escalabilidade

Para garantir o bom desempenho e a escalabilidade do sistema:

1. **Paginação**: Implementação de paginação em todas as listagens para limitar o volume de dados transferidos.

2. **Consultas Otimizadas**: Utilização de consultas eficientes e índices apropriados para minimizar o tempo de resposta.

3. **Monitoramento**: Configuração de monitoramento de desempenho para identificar e resolver gargalos.

4. **Caching**: Utilização de estratégias de cache para dados frequentemente acessados e que não mudam constantemente.

Esta modelagem de banco de dados no Supabase foi projetada para atender às necessidades do sistema "LocaFácil", aproveitando os recursos específicos da plataforma para criar uma solução robusta, segura e escalável. A estrutura permite a implementação de todas as funcionalidades definidas, incluindo as novas solicitações de autenticação avançada e envio de dados em tempo real.
