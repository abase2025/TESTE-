# Design das Telas e Fluxo do Usuário

## Abordagem de Design

O design das telas para o sistema de gerenciamento de carros locados para aplicativos será desenvolvido seguindo princípios de design centrado no usuário, com foco em usabilidade, clareza visual e eficiência operacional. Considerando que o sistema será utilizado por diferentes perfis de usuários (proprietários com variados níveis de experiência tecnológica e motoristas), a interface será intuitiva e acessível, minimizando a curva de aprendizado.

A estética visual adotará um estilo moderno e profissional, utilizando uma paleta de cores que transmita confiança e organização. O layout será responsivo, adaptando-se automaticamente a diferentes tamanhos de tela, desde desktops até smartphones, garantindo uma experiência consistente em todos os dispositivos.

## Wireframes e Fluxos das Telas Principais

### 1. Tela de Login e Criação de Conta

A porta de entrada do sistema será uma tela de login simples e direta, com campos para e-mail e senha, além de opção para recuperação de senha. Um botão de destaque para "Criar Nova Conta" direcionará novos usuários para o processo de registro.

O fluxo de criação de conta seguirá estas etapas:

1. Formulário inicial solicitando informações básicas: nome completo, e-mail, telefone e senha
2. Verificação de e-mail através de link enviado automaticamente
3. Seleção do tipo de perfil (proprietário ou motorista)
4. Para proprietários: formulário para cadastro inicial de veículos
5. Para motoristas: campo para inserir código de convite do proprietário
6. Tela de confirmação e redirecionamento para o Dashboard

### 2. Dashboard (Tela Inicial)

O Dashboard será personalizado de acordo com o tipo de usuário. Para proprietários, apresentará:

- Cabeçalho com logo do sistema e menu de navegação principal
- Barra lateral com acesso rápido às principais funcionalidades
- Seção central com cards informativos:
  - Número total de veículos gerenciados
  - Vistorias pendentes ou próximas
  - Documentos com vencimento nos próximos 30 dias
  - Multas não pagas
  - Gráfico de quilometragem semanal comparativa entre veículos
- Seção inferior com lista dos veículos e seus status atuais

Para motoristas, o Dashboard será simplificado, mostrando:

- Informações do veículo utilizado
- Próxima vistoria agendada
- Documentos que precisam de atenção
- Multas pendentes de resolução
- Registro de quilometragem semanal

### 3. Módulo de Vistoria

A tela principal do módulo de Vistoria apresentará:

- Lista de vistorias anteriores, com data, quilometragem e status
- Botão de destaque para "Nova Vistoria"
- Filtros para visualização por período, veículo ou status

O fluxo de criação de nova vistoria seguirá estas etapas:

1. Seleção do veículo (caso o usuário gerencie múltiplos veículos)
2. Preenchimento de formulário com campos estruturados:
   - Data e hora da vistoria
   - Quilometragem atual
   - Estado geral do veículo (escala visual de 1 a 5)
   - Checklist de componentes específicos (pneus, freios, luzes, etc.)
   - Campo para observações gerais
3. Upload de fotografias do veículo (frente, lateral esquerda, lateral direita, traseira)
4. Tela de confirmação com resumo da vistoria
5. Envio para aprovação (caso realizada pelo motorista) ou finalização (caso realizada pelo proprietário)

A tela de detalhes de uma vistoria específica mostrará todas as informações registradas, com destaque para as fotografias e possíveis problemas identificados.

### 4. Módulo de Documentos

A tela principal do módulo de Documentos apresentará:

- Organização por veículo, com abas ou dropdown para seleção
- Categorias de documentos (Veículo, Motorista, Contratos, etc.)
- Lista de documentos com informações como tipo, data de upload, data de vencimento e status
- Botão para adicionar novo documento
- Alertas visuais para documentos próximos do vencimento

O fluxo de adição de novo documento seguirá estas etapas:

1. Seleção do veículo relacionado
2. Escolha da categoria do documento
3. Upload do arquivo (com suporte para PDF, JPG e PNG)
4. Preenchimento de metadados:
   - Nome do documento
   - Data de emissão
   - Data de vencimento (se aplicável)
   - Observações
5. Confirmação e visualização do documento adicionado

A tela de visualização de documento específico permitirá:
- Visualização do arquivo
- Edição dos metadados
- Download do documento
- Substituição por nova versão
- Exclusão (com confirmação)

### 5. Módulo de Multas

A tela principal do módulo de Multas apresentará:

- Lista de multas registradas, com informações como data, valor, veículo, motorista responsável e status
- Filtros por período, veículo, status de pagamento e responsabilidade
- Botão para adicionar nova multa
- Resumo estatístico (total de multas, valor acumulado, distribuição por tipo)

O fluxo de registro de nova multa seguirá estas etapas:

1. Seleção do veículo
2. Preenchimento de formulário com:
   - Data e hora da infração
   - Local da infração
   - Tipo de infração
   - Valor da multa
   - Pontuação na CNH
   - Data limite para pagamento com desconto
   - Data limite para recurso
   - Upload da notificação (opcional)
3. Atribuição de responsabilidade (proprietário ou motorista)
4. Confirmação e notificação ao responsável

A tela de detalhes de uma multa específica permitirá:
- Visualização de todas as informações registradas
- Alteração de status (Pendente, Em recurso, Paga, Cancelada)
- Registro de pagamento (data e comprovante)
- Registro de recurso (data, argumentos e documentos)

### 6. Módulo de Relatórios

A tela principal do módulo de Relatórios apresentará:

- Categorias de relatórios disponíveis (Quilometragem, Custos, Desempenho, etc.)
- Miniaturas visuais dos relatórios mais utilizados
- Área para relatórios personalizados
- Opções de período para análise (última semana, último mês, último trimestre, etc.)

O fluxo de geração de relatório seguirá estas etapas:

1. Seleção do tipo de relatório
2. Definição de parâmetros:
   - Período de análise
   - Veículos a incluir
   - Motoristas a incluir (se aplicável)
   - Métricas específicas a destacar
3. Visualização do relatório gerado com gráficos e tabelas
4. Opções para exportar (PDF, Excel) ou compartilhar

Os relatórios terão design visual claro, com uso de cores para destacar tendências e anomalias, facilitando a interpretação rápida das informações.

### 7. Módulo de Assinatura

A tela principal do módulo de Assinatura apresentará:

- Status atual da conta (Gratuita)
- Recursos disponíveis e limitações
- Preparação para futuros planos pagos (Premium, Business)
- FAQ sobre o modelo de assinatura

Este módulo, embora inicialmente simplificado devido à natureza gratuita do serviço, será estruturado para permitir fácil expansão futura.

## Elementos de Design e Padrões de Interface

Para garantir consistência visual e usabilidade em todo o sistema, serão adotados os seguintes elementos e padrões de design:

### Paleta de Cores

- Cor primária: Azul profissional (#1E88E5) - Transmite confiança e estabilidade
- Cor secundária: Verde (#43A047) - Associada a sucesso e progresso
- Cor de alerta: Âmbar (#FFA000) - Para notificações e alertas moderados
- Cor de erro: Vermelho (#E53935) - Para erros e alertas críticos
- Tons neutros: Cinza claro a escuro para fundos e textos

### Tipografia

- Fonte principal: Roboto - Moderna, legível e disponível em diversos pesos
- Hierarquia clara de tamanhos:
  - Títulos principais: 24px
  - Subtítulos: 18px
  - Texto de corpo: 16px
  - Texto secundário: 14px
  - Notas e legendas: 12px

### Componentes de Interface

- Cards: Para agrupar informações relacionadas no Dashboard e outras telas
- Tabelas: Com ordenação e filtragem para exibição de listas de dados
- Formulários: Com validação em tempo real e mensagens de erro claras
- Botões: Diferenciados por importância (primário, secundário, terciário)
- Ícones: Sistema consistente de ícones para melhorar reconhecimento visual
- Notificações: Sistema de toast notifications para feedback de ações

### Padrões de Interação

- Drag-and-drop: Para reordenação de itens e upload de arquivos
- Infinite scroll: Para listas longas, com carregamento progressivo
- Tooltips: Para explicações contextuais de funcionalidades
- Modais: Para ações que requerem foco, como confirmações importantes
- Breadcrumbs: Para navegação hierárquica e orientação do usuário

## Fluxo Geral do Usuário

O fluxo geral do usuário no sistema foi projetado para ser intuitivo e eficiente:

1. **Entrada no Sistema**: Login ou criação de conta
2. **Orientação Inicial**: Dashboard personalizado com visão geral e alertas
3. **Navegação Principal**: Menu lateral sempre acessível com todas as funcionalidades
4. **Fluxos de Trabalho Comuns**:
   - Registro de nova vistoria semanal
   - Verificação e upload de documentos
   - Registro e acompanhamento de multas
   - Consulta a relatórios de desempenho
5. **Notificações**: Sistema de alertas para itens que requerem atenção
6. **Ajuda Contextual**: Tooltips e textos de ajuda em pontos estratégicos

## Considerações de Acessibilidade e Usabilidade

O design das telas incorporará as seguintes considerações:

- Contraste adequado entre texto e fundo para melhor legibilidade
- Tamanho de elementos clicáveis adequado para uso em dispositivos touch
- Feedback visual claro para todas as ações do usuário
- Suporte a navegação por teclado para acessibilidade
- Textos alternativos para imagens e ícones
- Mensagens de erro claras e construtivas
- Design responsivo para adaptação a diferentes tamanhos de tela

## Protótipos Visuais

Os wireframes de baixa fidelidade serão desenvolvidos para todas as telas principais, seguidos por protótipos de alta fidelidade para as telas mais críticas (Dashboard, Vistoria e Documentos). Estes protótipos servirão como guia visual para a implementação no Bubble.io, garantindo consistência e qualidade na interface final.

O design proposto equilibra funcionalidade e estética, priorizando a experiência do usuário enquanto mantém a complexidade técnica dentro dos limites do que pode ser implementado eficientemente com ferramentas no-code no prazo estabelecido de um mês.
