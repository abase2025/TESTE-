# Modelagem do Banco de Dados

## Visão Geral

A modelagem do banco de dados para o sistema de gerenciamento de carros locados para aplicativos foi desenvolvida considerando as necessidades específicas do negócio, as funcionalidades planejadas e os relacionamentos entre as diferentes entidades. A estrutura foi projetada para ser implementada na plataforma Bubble.io, que utiliza um banco de dados NoSQL, mas seguindo princípios de modelagem relacional para garantir integridade e eficiência.

O modelo de dados foi organizado em entidades principais que representam os objetos fundamentais do sistema, com relacionamentos claramente definidos entre elas. Cada entidade possui um conjunto de campos (atributos) que armazenam as informações necessárias para o funcionamento adequado do sistema.

## Entidades Principais e Relacionamentos

### 1. Usuário

A entidade Usuário representa todas as pessoas que acessam o sistema, independentemente de seu papel.

**Campos:**
- ID (identificador único)
- Nome Completo
- Email (único)
- Telefone
- Senha (armazenada com criptografia)
- Tipo (Proprietário ou Motorista)
- Data de Cadastro
- Último Acesso
- Status da Conta (Ativo, Inativo, Suspenso)
- Foto de Perfil (opcional)

**Relacionamentos:**
- Um Usuário do tipo Proprietário pode ter múltiplos Veículos
- Um Usuário do tipo Motorista pode estar associado a um Veículo
- Um Usuário pode gerar múltiplos Relatórios
- Um Usuário pode registrar múltiplas Vistorias

### 2. Veículo

A entidade Veículo representa os automóveis gerenciados no sistema.

**Campos:**
- ID (identificador único)
- Placa (único)
- Marca
- Modelo
- Ano de Fabricação
- Ano do Modelo
- Cor
- Renavam
- Chassi
- Quilometragem Atual
- Data de Aquisição
- Valor de Aquisição
- Valor de Locação
- Status (Disponível, Locado, Em Manutenção, Inativo)
- Fotos (múltiplas)

**Relacionamentos:**
- Um Veículo pertence a um Usuário do tipo Proprietário
- Um Veículo pode estar associado a um Usuário do tipo Motorista
- Um Veículo pode ter múltiplas Vistorias
- Um Veículo pode ter múltiplos Documentos
- Um Veículo pode ter múltiplas Multas
- Um Veículo pode ter múltiplos registros de Quilometragem

### 3. Contrato

A entidade Contrato representa o acordo formal entre o proprietário e o motorista para locação do veículo.

**Campos:**
- ID (identificador único)
- Data de Início
- Data de Término (opcional, para contratos por tempo indeterminado)
- Valor da Locação
- Periodicidade de Pagamento (Diário, Semanal, Quinzenal, Mensal)
- Quilometragem Máxima Acordada (opcional)
- Condições Especiais (texto livre)
- Status (Ativo, Encerrado, Suspenso)
- Documento do Contrato (arquivo PDF)

**Relacionamentos:**
- Um Contrato está associado a um Veículo
- Um Contrato está associado a um Usuário do tipo Proprietário
- Um Contrato está associado a um Usuário do tipo Motorista
- Um Contrato pode ter múltiplos Pagamentos

### 4. Vistoria

A entidade Vistoria representa as inspeções periódicas realizadas nos veículos.

**Campos:**
- ID (identificador único)
- Data e Hora
- Quilometragem no Momento
- Estado Geral (escala de 1 a 5)
- Nível de Combustível
- Estado dos Pneus (escala de 1 a 5)
- Estado dos Freios (escala de 1 a 5)
- Estado da Suspensão (escala de 1 a 5)
- Estado da Lataria (escala de 1 a 5)
- Estado do Interior (escala de 1 a 5)
- Observações
- Fotos (múltiplas)
- Tipo (Inicial, Periódica, Final)
- Status (Pendente, Realizada, Aprovada, Rejeitada)
- Realizada Por (referência ao Usuário)
- Aprovada Por (referência ao Usuário, opcional)

**Relacionamentos:**
- Uma Vistoria está associada a um Veículo
- Uma Vistoria é realizada por um Usuário
- Uma Vistoria pode ser aprovada por um Usuário (geralmente o proprietário)

### 5. Documento

A entidade Documento representa todos os documentos relacionados aos veículos e motoristas.

**Campos:**
- ID (identificador único)
- Tipo (CRLV, Seguro, Revisão, CNH, Contrato, Outro)
- Nome
- Descrição (opcional)
- Arquivo (PDF, JPG ou PNG)
- Data de Emissão
- Data de Vencimento (opcional)
- Status (Válido, Vencido, Próximo do Vencimento)
- Alerta de Vencimento (número de dias antes para alertar)

**Relacionamentos:**
- Um Documento pode estar associado a um Veículo
- Um Documento pode estar associado a um Usuário
- Um Documento pode estar associado a um Contrato

### 6. Multa

A entidade Multa representa as infrações de trânsito registradas para os veículos.

**Campos:**
- ID (identificador único)
- Data e Hora da Infração
- Local da Infração
- Descrição da Infração
- Valor
- Pontuação na CNH
- Data Limite para Pagamento com Desconto
- Data Limite para Recurso
- Responsável (Proprietário ou Motorista)
- Status (Pendente, Em Recurso, Paga, Cancelada)
- Comprovante de Pagamento (arquivo, opcional)
- Dados do Recurso (texto livre, opcional)
- Notificação (arquivo, opcional)

**Relacionamentos:**
- Uma Multa está associada a um Veículo
- Uma Multa pode estar associada a um Usuário do tipo Motorista
- Uma Multa pode ter um Pagamento associado

### 7. Quilometragem

A entidade Quilometragem representa os registros periódicos de quilometragem dos veículos.

**Campos:**
- ID (identificador único)
- Data do Registro
- Valor da Quilometragem
- Tipo de Registro (Manual, Vistoria, Manutenção)
- Observações (opcional)
- Foto do Hodômetro (opcional)

**Relacionamentos:**
- Um registro de Quilometragem está associado a um Veículo
- Um registro de Quilometragem é criado por um Usuário

### 8. Pagamento

A entidade Pagamento representa os registros financeiros relacionados aos contratos de locação.

**Campos:**
- ID (identificador único)
- Data de Vencimento
- Data de Pagamento
- Valor
- Método de Pagamento (Dinheiro, PIX, Transferência, Outro)
- Status (Pendente, Pago, Atrasado)
- Comprovante (arquivo, opcional)
- Observações (opcional)

**Relacionamentos:**
- Um Pagamento está associado a um Contrato
- Um Pagamento pode estar associado a uma Multa (para pagamentos de multas)

### 9. Relatório

A entidade Relatório representa os relatórios gerados pelos usuários.

**Campos:**
- ID (identificador único)
- Tipo (Quilometragem, Custos, Desempenho, Vistorias, Personalizado)
- Nome
- Descrição
- Parâmetros (JSON com configurações do relatório)
- Data de Geração
- Arquivo Gerado (PDF ou Excel, opcional)
- Favorito (booleano)

**Relacionamentos:**
- Um Relatório é gerado por um Usuário
- Um Relatório pode estar associado a múltiplos Veículos

## Diagrama de Relacionamentos

O diagrama de relacionamentos entre as entidades pode ser representado da seguinte forma:

```
Usuário (Proprietário) --1:N--> Veículo
Usuário (Motorista) --1:1--> Veículo
Veículo --1:N--> Vistoria
Veículo --1:N--> Documento
Veículo --1:N--> Multa
Veículo --1:N--> Quilometragem
Usuário (Proprietário) --1:N--> Contrato
Usuário (Motorista) --1:N--> Contrato
Veículo --1:N--> Contrato
Contrato --1:N--> Pagamento
Multa --1:1--> Pagamento (opcional)
Usuário --1:N--> Relatório
```

## Índices e Otimizações

Para garantir o desempenho adequado do sistema, serão criados índices nas seguintes colunas:

- Usuário: Email (para login rápido)
- Veículo: Placa (para buscas rápidas)
- Documento: Data de Vencimento (para consultas de documentos próximos do vencimento)
- Vistoria: Data e Hora (para ordenação cronológica)
- Multa: Status (para filtrar multas pendentes)
- Contrato: Status (para filtrar contratos ativos)

## Considerações para Implementação no Bubble.io

A plataforma Bubble.io utiliza um banco de dados NoSQL, o que significa que a implementação exata do modelo relacional descrito acima precisará ser adaptada. No entanto, o Bubble.io oferece recursos que facilitam a criação de relacionamentos entre tipos de dados (entidades), como:

1. **Campos de Referência**: Permitem estabelecer relacionamentos entre diferentes tipos de dados, similar às chaves estrangeiras em bancos relacionais.

2. **Listas de Referência**: Permitem implementar relacionamentos um-para-muitos, armazenando múltiplas referências em um único campo.

3. **Pesquisas**: O Bubble.io oferece funcionalidades de pesquisa avançadas que podem compensar a ausência de joins tradicionais.

4. **Campos Calculados**: Permitem derivar valores com base em outros campos ou em dados relacionados, reduzindo a necessidade de consultas complexas.

Ao implementar este modelo no Bubble.io, será importante:

- Definir corretamente os tipos de dados para cada campo
- Configurar as permissões de privacidade para garantir que os usuários só acessem os dados apropriados
- Utilizar os recursos de pesquisa e filtragem do Bubble.io para implementar consultas complexas
- Considerar o uso de estados temporários para operações que envolvam múltiplos tipos de dados

## Estratégia de Migração e Backup

Embora o sistema esteja sendo desenvolvido do zero, é importante estabelecer desde o início uma estratégia para migração e backup de dados:

1. **Backups Regulares**: Configurar backups automáticos diários do banco de dados.

2. **Exportação de Dados**: Implementar funcionalidade para exportação de dados em formatos comuns (CSV, Excel) para uso offline ou migração futura.

3. **Versionamento**: Manter um registro de alterações significativas na estrutura do banco de dados para facilitar futuras migrações.

Esta modelagem de banco de dados foi projetada para atender às necessidades atuais do sistema de gerenciamento de carros locados para aplicativos, mas também considerando possíveis expansões futuras, como a inclusão de novos tipos de relatórios, funcionalidades de manutenção preventiva ou integração com sistemas externos.
