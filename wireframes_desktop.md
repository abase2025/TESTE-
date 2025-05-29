# Wireframes para Sistema LocaFácil - Versão Desktop

## Visão Geral do Design

Os wireframes para o sistema LocaFácil foram desenvolvidos priorizando a versão desktop, conforme solicitado, seguindo um estilo minimalista e funcional. O design incorpora a paleta de cores específica para o sistema de gerenciamento de carros e o conceito visual "Aluguel Seguro".

### Paleta de Cores
- **Azul Confiança** (#1A5F7A): Cor primária, utilizada em cabeçalhos, botões principais e elementos de destaque
- **Verde Sucesso** (#57C5B6): Para elementos positivos, confirmações e indicadores de status positivo
- **Cinza Neutro** (#F2F2F2): Para fundos, áreas de trabalho e elementos neutros
- **Preto Elegante** (#333333): Para textos e elementos que precisam de destaque

## 1. Tela de Login

A tela de login é a porta de entrada do sistema, apresentando uma interface limpa e direta.

### Elementos Principais:
- Logo "LocaFácil" no topo central
- Ilustração minimalista de um carro com elementos que sugerem segurança
- Formulário de login centralizado com:
  - Campo para e-mail
  - Campo para senha
  - Opção "Lembrar-me"
  - Botão "Entrar" em destaque (Azul Confiança)
- Link para "Esqueci minha senha"
- Botão secundário para "Criar nova conta"
- Rodapé com informações de copyright e versão do sistema

### Considerações de Design:
- Formulário centralizado na tela para foco imediato
- Validação visual em tempo real dos campos
- Feedback visual claro para erros de autenticação
- Opção de visualizar/ocultar senha

## 2. Tela de Criação de Conta

A tela de criação de conta permite o registro de novos usuários no sistema.

### Elementos Principais:
- Logo "LocaFácil" no topo
- Formulário de registro com:
  - Nome completo
  - E-mail
  - Telefone
  - Senha e confirmação de senha
  - Seleção de tipo de usuário (Proprietário ou Motorista)
- Termos de uso com checkbox de aceitação
- Botão "Criar conta" em destaque
- Link para retornar à tela de login
- Indicador de força da senha

### Considerações de Design:
- Layout em duas colunas para melhor aproveitamento do espaço em desktop
- Validação em tempo real dos campos
- Instruções claras para criação de senha segura
- Processo de registro em etapas para proprietários (informações básicas → detalhes da empresa → primeiro veículo)

## 3. Dashboard Principal (Visão do Proprietário)

O Dashboard é o centro de controle para proprietários, oferecendo uma visão consolidada de toda a frota.

### Elementos Principais:
- Barra superior com:
  - Logo "LocaFácil"
  - Barra de pesquisa
  - Ícone de notificações
  - Menu de usuário (foto, nome, opções)
- Menu lateral com acesso a todos os módulos:
  - Dashboard (selecionado)
  - Veículos
  - Motoristas
  - Vistorias
  - Documentos
  - Multas
  - Relatórios
  - Configurações
- Área principal dividida em seções:
  - Resumo da frota (total de veículos, ativos, em manutenção, disponíveis)
  - Alertas importantes (documentos vencendo, vistorias pendentes, multas não pagas)
  - Gráfico de quilometragem semanal comparativa
  - Lista dos últimos eventos (novas vistorias, documentos adicionados, etc.)
- Seção inferior com cards de veículos:
  - Foto do veículo
  - Informações básicas (placa, modelo, status)
  - Indicador visual de status (cor)
  - Botão de ação rápida

### Considerações de Design:
- Layout em grid responsivo que se adapta a diferentes tamanhos de tela
- Cards interativos que expandem para mostrar mais informações
- Filtros rápidos para visualização personalizada
- Área de alertas com destaque visual para itens críticos

## 4. Dashboard Simplificado (Visão do Motorista)

Versão simplificada do Dashboard focada nas necessidades do motorista.

### Elementos Principais:
- Barra superior similar à versão do proprietário
- Menu lateral simplificado com acesso apenas a módulos relevantes:
  - Dashboard (selecionado)
  - Meu Veículo
  - Vistorias
  - Documentos
  - Multas
  - Meu Perfil
- Área principal com:
  - Card grande do veículo utilizado (foto, informações completas)
  - Próxima vistoria agendada com contagem regressiva
  - Documentos que precisam de atenção
  - Multas pendentes
  - Formulário rápido para registro de quilometragem

### Considerações de Design:
- Foco em ações frequentes do motorista
- Acesso rápido para registro de quilometragem
- Alertas visuais claros para obrigações pendentes
- Interface simplificada com menos opções que a versão do proprietário

## 5. Módulo de Veículos

Interface para gerenciamento completo da frota de veículos.

### Elementos Principais:
- Barra superior e menu lateral consistentes com outras telas
- Cabeçalho do módulo com:
  - Título "Veículos"
  - Botão "Adicionar Novo Veículo"
  - Filtros avançados (status, modelo, motorista, etc.)
- Visualização em tabela com colunas:
  - Foto miniatura
  - Placa
  - Marca/Modelo
  - Ano
  - Status atual
  - Motorista atual
  - Quilometragem atual
  - Última vistoria
  - Ações (menu de opções)
- Opção para alternar entre visualização em tabela e visualização em cards
- Paginação para frotas grandes

### Considerações de Design:
- Tabela com linhas coloridas de acordo com o status do veículo
- Ordenação por qualquer coluna
- Filtros persistentes entre sessões
- Exportação da lista em diferentes formatos

## 6. Detalhes do Veículo

Tela detalhada com todas as informações de um veículo específico.

### Elementos Principais:
- Cabeçalho com:
  - Breadcrumbs para navegação (Veículos > Detalhes)
  - Placa e modelo do veículo em destaque
  - Status atual com indicador visual
  - Botões de ação (Editar, Desativar, etc.)
- Área principal dividida em abas:
  - Informações Gerais
  - Histórico de Vistorias
  - Documentos
  - Multas
  - Histórico de Quilometragem
  - Manutenções
  - Motoristas Anteriores
- Seção de Informações Gerais com:
  - Galeria de fotos do veículo
  - Dados completos (RENAVAM, chassi, cor, etc.)
  - Gráfico de quilometragem
  - Próximas datas importantes

### Considerações de Design:
- Sistema de abas para organizar grande quantidade de informações
- Galeria de fotos com visualização ampliada
- Históricos apresentados em linha do tempo visual
- Exportação de informações específicas em PDF

## 7. Módulo de Vistoria

Interface para gerenciamento e realização de vistorias periódicas.

### Elementos Principais:
- Cabeçalho do módulo com:
  - Título "Vistorias"
  - Botão "Nova Vistoria"
  - Filtros (veículo, período, status)
- Lista de vistorias com:
  - Data e hora
  - Veículo
  - Tipo de vistoria (inicial, periódica, final)
  - Realizada por
  - Quilometragem registrada
  - Status (pendente, realizada, aprovada, rejeitada)
  - Ações
- Calendário visual de vistorias programadas

### Considerações de Design:
- Código de cores para diferentes status de vistoria
- Visualização em lista ou calendário
- Alertas para vistorias atrasadas
- Filtros rápidos para vistorias pendentes

## 8. Nova Vistoria

Formulário para realização de uma nova vistoria.

### Elementos Principais:
- Cabeçalho com título "Nova Vistoria" e veículo selecionado
- Formulário em etapas:
  1. Informações Básicas:
     - Data e hora
     - Tipo de vistoria
     - Quilometragem atual
     - Nível de combustível
  2. Avaliação de Componentes:
     - Checklist de itens (pneus, freios, luzes, etc.)
     - Escala visual para cada item (1 a 5)
     - Campo para observações específicas
  3. Registro Fotográfico:
     - Área para upload de fotos
     - Visualização em miniatura das fotos adicionadas
     - Organização por ângulos pré-definidos (frente, lateral esquerda, etc.)
  4. Observações Finais:
     - Campo para observações gerais
     - Opção para marcar itens que precisam de atenção
  5. Confirmação:
     - Resumo da vistoria
     - Botão para enviar ou salvar como rascunho

### Considerações de Design:
- Navegação clara entre etapas com indicador de progresso
- Salvamento automático de rascunho
- Comparação com vistoria anterior quando disponível
- Interface para upload de múltiplas fotos com prévia

## 9. Módulo de Documentos

Central para gerenciamento de todos os documentos relacionados aos veículos e motoristas.

### Elementos Principais:
- Cabeçalho com:
  - Título "Documentos"
  - Botão "Adicionar Documento"
  - Filtros (tipo, veículo, status, vencimento)
- Visualização em grid de documentos com:
  - Miniatura do documento
  - Nome
  - Tipo
  - Relacionado a (veículo ou motorista)
  - Data de vencimento
  - Status (válido, próximo do vencimento, vencido)
  - Ações
- Barra lateral com filtros avançados:
  - Categorias de documentos
  - Período de vencimento
  - Status
  - Tags personalizadas

### Considerações de Design:
- Visualização em grid com miniaturas ou lista detalhada
- Código de cores para status de vencimento
- Agrupamento por veículo ou tipo de documento
- Alertas visuais para documentos críticos

## 10. Visualização de Documento

Interface para visualização detalhada de um documento específico.

### Elementos Principais:
- Cabeçalho com:
  - Nome do documento
  - Tipo
  - Status com indicador visual
  - Botões de ação (Download, Imprimir, Substituir, Excluir)
- Visualizador de documento incorporado
- Painel lateral com metadados:
  - Relacionado a (veículo/motorista)
  - Data de upload
  - Data de emissão
  - Data de vencimento
  - Responsável pelo upload
  - Tags
  - Histórico de versões
- Seção de comentários/observações

### Considerações de Design:
- Visualizador que suporta diferentes formatos (PDF, imagens)
- Zoom e navegação no documento
- Histórico de versões com acesso a versões anteriores
- Opção para configurar lembretes de vencimento

## 11. Módulo de Multas

Interface para gerenciamento de infrações de trânsito.

### Elementos Principais:
- Cabeçalho com:
  - Título "Multas"
  - Botão "Registrar Nova Multa"
  - Filtros rápidos (status, veículo, responsável)
- Visualização em tabela com:
  - Data da infração
  - Veículo
  - Local
  - Valor
  - Pontuação
  - Responsável (proprietário ou motorista)
  - Status (pendente, em recurso, paga, cancelada)
  - Data limite para pagamento/recurso
  - Ações
- Painel de resumo com:
  - Total de multas
  - Valor acumulado
  - Distribuição por tipo
  - Multas por veículo (gráfico)

### Considerações de Design:
- Destaque visual para multas próximas do vencimento
- Agrupamento por veículo ou motorista
- Exportação de relatórios de multas
- Indicadores visuais de status

## 12. Detalhes da Multa

Tela com informações detalhadas sobre uma multa específica.

### Elementos Principais:
- Cabeçalho com informações básicas da multa
- Área principal com:
  - Detalhes completos da infração
  - Imagem da notificação (quando disponível)
  - Mapa mostrando o local da infração
  - Histórico de status
- Painel lateral com:
  - Informações de pagamento
  - Prazos importantes
  - Opções de contestação
  - Atribuição de responsabilidade
- Seção de anexos (comprovantes, recursos)

### Considerações de Design:
- Timeline visual do processo da multa
- Alertas para prazos críticos
- Integração com mapa para visualização do local
- Fluxo guiado para contestação ou pagamento

## 13. Módulo de Relatórios

Central para geração e visualização de relatórios analíticos.

### Elementos Principais:
- Cabeçalho com:
  - Título "Relatórios"
  - Seletor de tipo de relatório
  - Período de análise
- Painel de filtros avançados:
  - Veículos a incluir
  - Motoristas a incluir
  - Métricas específicas
  - Agrupamentos
- Área de visualização do relatório com:
  - Gráficos interativos
  - Tabelas de dados
  - Indicadores-chave
- Barra de ferramentas com:
  - Opções de exportação (PDF, Excel)
  - Compartilhamento
  - Salvar como favorito
  - Agendamento periódico

### Considerações de Design:
- Relatórios interativos com drill-down
- Personalização de visualizações
- Templates pré-configurados para relatórios comuns
- Opções de impressão otimizadas

## 14. Configurações do Sistema

Interface para personalização e configuração do sistema.

### Elementos Principais:
- Menu lateral com categorias de configurações:
  - Perfil de Usuário
  - Notificações
  - Empresa
  - Usuários e Permissões
  - Parâmetros do Sistema
  - Backup e Exportação
- Área principal que muda conforme a categoria selecionada
- Seção de Perfil com:
  - Informações pessoais
  - Alteração de senha
  - Preferências de interface
- Seção de Notificações com:
  - Configuração de alertas por e-mail
  - Notificações push
  - Lembretes automáticos
- Seção de Usuários com:
  - Lista de usuários
  - Gerenciamento de permissões
  - Convites para novos usuários

### Considerações de Design:
- Interface clara e organizada por categorias
- Feedback imediato para alterações
- Confirmação para mudanças críticas
- Histórico de alterações importantes

## Elementos Comuns a Todas as Telas

Para manter consistência visual e funcional em todo o sistema, os seguintes elementos estarão presentes em todas as telas:

1. **Barra Superior**:
   - Logo "LocaFácil" à esquerda
   - Barra de pesquisa global
   - Ícone de notificações com contador
   - Menu de usuário com foto de perfil

2. **Menu Lateral**:
   - Links para todos os módulos principais
   - Indicador visual da seção atual
   - Opção para recolher/expandir
   - Acesso rápido às configurações

3. **Rodapé**:
   - Informações de copyright
   - Versão do sistema
   - Links para suporte e documentação

4. **Sistema de Notificações**:
   - Notificações toast para confirmações
   - Alertas para ações que requerem atenção
   - Indicadores visuais para itens não lidos

5. **Ajuda Contextual**:
   - Ícones de informação com tooltips
   - Tour guiado para novas funcionalidades
   - Acesso à documentação específica da seção

Estes wireframes representam a estrutura básica das principais telas do sistema LocaFácil, priorizando a versão desktop conforme solicitado. O design segue um estilo minimalista e funcional, com foco na usabilidade e na experiência do usuário, incorporando a paleta de cores específica para o sistema de gerenciamento de carros e o conceito visual "Aluguel Seguro".
