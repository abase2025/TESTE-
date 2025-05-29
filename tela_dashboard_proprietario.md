# Protótipo Detalhado: Dashboard Principal (Proprietário)

## Especificações Visuais

### Layout Geral
- **Resolução Base**: 1920x1080px (Desktop)
- **Fundo**: Cinza muito claro (#F2F2F2)
- **Estrutura**: Layout com menu lateral fixo à esquerda e área de conteúdo principal à direita

### Menu Lateral
- **Largura**: 280px
- **Altura**: 100% da viewport
- **Cor de Fundo**: Branco (#FFFFFF)
- **Sombra**: 0px 0px 20px rgba(0, 0, 0, 0.05)

#### Logo e Cabeçalho do Menu
- **Logo**: 40px de altura, posicionado no topo esquerdo
- **Texto "LocaFácil"**: 
  - Fonte: Montserrat Bold
  - Tamanho: 22px
  - Cor: Azul Confiança (#1A5F7A)
  - Posição: À direita do logo, alinhamento vertical centralizado
- **Padding**: 24px 20px
- **Separador**: Linha horizontal 1px (#E0E4E8) abaixo do cabeçalho

#### Itens do Menu
- **Altura de cada item**: 56px
- **Padding**: 0 20px
- **Espaçamento entre itens**: 4px
- **Estado Normal**:
  - Cor de Fundo: Transparente
  - Cor de Texto: Cinza escuro (#333333)
  - Ícone: 24x24px, cor cinza médio (#6B7280)
- **Estado Ativo/Selecionado**:
  - Cor de Fundo: Azul muito claro (#F0F7FA)
  - Cor de Texto: Azul Confiança (#1A5F7A)
  - Ícone: 24x24px, cor Azul Confiança (#1A5F7A)
  - Indicador: Barra vertical 4px Azul Confiança (#1A5F7A) à esquerda
- **Estado Hover**:
  - Cor de Fundo: Cinza muito claro (#F5F7F9)
- **Fonte**: Inter Medium
- **Tamanho da Fonte**: 16px
- **Espaçamento entre ícone e texto**: 16px

#### Lista de Itens do Menu
1. **Dashboard** (ícone de gráfico) - Selecionado
2. **Veículos** (ícone de carro)
3. **Motoristas** (ícone de pessoa)
4. **Vistorias** (ícone de checklist)
5. **Documentos** (ícone de documento)
6. **Multas** (ícone de exclamação)
7. **Relatórios** (ícone de gráfico de barras)
8. **Configurações** (ícone de engrenagem)

#### Perfil do Usuário (Parte inferior do menu)
- **Separador**: Linha horizontal 1px (#E0E4E8) acima do perfil
- **Container**: Altura 80px, padding 16px 20px
- **Foto do Usuário**: Circular, 48px de diâmetro
- **Nome do Usuário**:
  - Fonte: Inter SemiBold
  - Tamanho: 16px
  - Cor: Preto Elegante (#333333)
- **Função/Tipo**:
  - Fonte: Inter Regular
  - Tamanho: 14px
  - Cor: Cinza médio (#6B7280)
- **Ícone de Menu**: Três pontos verticais, 24x24px, posicionado à direita

### Barra Superior
- **Altura**: 72px
- **Cor de Fundo**: Branco (#FFFFFF)
- **Sombra**: 0px 2px 8px rgba(0, 0, 0, 0.05)
- **Padding**: 0 32px

#### Barra de Pesquisa
- **Largura**: 360px
- **Altura**: 44px
- **Cor de Fundo**: Cinza muito claro (#F5F7F9)
- **Borda**: 1px sólido (#E0E4E8), raio de 8px
- **Ícone de Pesquisa**: Lupa, 20x20px, cor cinza médio (#6B7280)
- **Placeholder**: "Pesquisar veículos, motoristas..."
- **Fonte do Placeholder**: Inter Regular, 14px
- **Padding**: 0 16px

#### Área de Notificações e Ações
- **Ícone de Notificação**: Sino, 24x24px
- **Contador de Notificações**:
  - Círculo 18px
  - Cor de Fundo: Vermelho (#E53935)
  - Cor de Texto: Branco (#FFFFFF)
  - Fonte: Inter Bold, 12px
- **Separador Vertical**: Linha 24px altura, 1px largura, cor (#E0E4E8)
- **Botão de Ação Rápida**:
  - Texto: "Adicionar Veículo"
  - Cor de Fundo: Azul Confiança (#1A5F7A)
  - Cor de Texto: Branco (#FFFFFF)
  - Fonte: Inter SemiBold, 14px
  - Ícone: "+", 20x20px
  - Borda: Raio de 6px
  - Padding: 0 20px
  - Altura: 40px

### Área de Conteúdo Principal
- **Padding**: 32px
- **Espaçamento entre seções**: 32px

#### Cabeçalho da Página
- **Título "Dashboard"**:
  - Fonte: Montserrat Bold
  - Tamanho: 28px
  - Cor: Preto Elegante (#333333)
- **Subtítulo**:
  - Fonte: Inter Regular
  - Tamanho: 16px
  - Cor: Cinza médio (#6B7280)
- **Seletores de Período**:
  - Tipo: Botões segmentados
  - Opções: "Hoje", "Esta Semana", "Este Mês", "Personalizado"
  - Altura: 40px
  - Cor de Fundo (inativo): Branco (#FFFFFF)
  - Cor de Fundo (ativo): Azul Confiança (#1A5F7A)
  - Cor de Texto (inativo): Cinza escuro (#4B5563)
  - Cor de Texto (ativo): Branco (#FFFFFF)
  - Borda: 1px sólido (#E0E4E8)
  - Fonte: Inter Medium, 14px

#### Cards de Resumo
- **Layout**: Grid de 4 cards em linha
- **Dimensões de cada card**: Largura igual (1/4 do espaço disponível - 24px de gap), altura 120px
- **Cor de Fundo**: Branco (#FFFFFF)
- **Sombra**: 0px 4px 12px rgba(0, 0, 0, 0.05)
- **Borda**: Raio de 12px
- **Padding**: 24px

##### Card 1: Total de Veículos
- **Ícone**: Carro, 32x32px, cor Azul Confiança (#1A5F7A)
- **Valor**: 
  - Fonte: Montserrat Bold
  - Tamanho: 32px
  - Cor: Preto Elegante (#333333)
- **Rótulo**: "Veículos"
  - Fonte: Inter Regular
  - Tamanho: 16px
  - Cor: Cinza médio (#6B7280)
- **Indicador de Tendência**: Seta para cima, texto "+2 este mês"
  - Cor: Verde Sucesso (#57C5B6)
  - Fonte: Inter Medium, 14px

##### Card 2: Veículos Ativos
- **Ícone**: Carro com marca de verificação, 32x32px, cor Verde Sucesso (#57C5B6)
- **Valor**: Similar ao Card 1
- **Rótulo**: "Veículos Ativos"
- **Indicador**: Porcentagem do total

##### Card 3: Em Manutenção
- **Ícone**: Carro com ferramenta, 32x32px, cor âmbar (#FFA000)
- **Valor**: Similar ao Card 1
- **Rótulo**: "Em Manutenção"
- **Indicador**: Porcentagem do total

##### Card 4: Disponíveis
- **Ícone**: Carro com símbolo de disponível, 32x32px, cor Verde Sucesso (#57C5B6)
- **Valor**: Similar ao Card 1
- **Rótulo**: "Disponíveis"
- **Indicador**: Porcentagem do total

#### Seção de Alertas
- **Cabeçalho da Seção**:
  - Título: "Alertas Importantes"
    - Fonte: Montserrat SemiBold
    - Tamanho: 20px
    - Cor: Preto Elegante (#333333)
  - Botão "Ver Todos":
    - Fonte: Inter Medium
    - Tamanho: 14px
    - Cor: Azul Confiança (#1A5F7A)

- **Container de Alertas**:
  - Cor de Fundo: Branco (#FFFFFF)
  - Sombra: 0px 4px 12px rgba(0, 0, 0, 0.05)
  - Borda: Raio de 12px
  - Padding: 0

- **Lista de Alertas**:
  - Cada item com altura de 72px
  - Padding: 16px 24px
  - Separador: Linha horizontal 1px (#E0E4E8) entre itens
  
  - **Estrutura de cada alerta**:
    - Ícone de Categoria: 32x32px (cor varia conforme tipo)
    - Título do Alerta:
      - Fonte: Inter SemiBold
      - Tamanho: 16px
      - Cor: Preto Elegante (#333333)
    - Descrição:
      - Fonte: Inter Regular
      - Tamanho: 14px
      - Cor: Cinza médio (#6B7280)
    - Tempo/Data:
      - Fonte: Inter Regular
      - Tamanho: 14px
      - Cor: Cinza médio (#6B7280)
    - Indicador de Prioridade:
      - Alta: Círculo vermelho (#E53935)
      - Média: Círculo âmbar (#FFA000)
      - Baixa: Círculo azul (#1A5F7A)

#### Gráfico de Quilometragem
- **Cabeçalho da Seção**: Similar à seção de alertas
- **Container**:
  - Cor de Fundo: Branco (#FFFFFF)
  - Sombra: 0px 4px 12px rgba(0, 0, 0, 0.05)
  - Borda: Raio de 12px
  - Padding: 24px

- **Gráfico**:
  - Tipo: Gráfico de linhas
  - Altura: 300px
  - Eixo X: Dias da semana
  - Eixo Y: Quilometragem
  - Cores das linhas: Uma cor distinta para cada veículo
  - Legenda:
    - Posição: Abaixo do gráfico
    - Fonte: Inter Regular, 14px
    - Indicadores coloridos correspondentes às linhas

- **Controles do Gráfico**:
  - Seletor de Veículos: Dropdown multi-seleção
  - Seletor de Período: Botões segmentados

#### Lista de Veículos
- **Cabeçalho da Seção**: Similar às seções anteriores
- **Container**:
  - Cor de Fundo: Branco (#FFFFFF)
  - Sombra: 0px 4px 12px rgba(0, 0, 0, 0.05)
  - Borda: Raio de 12px
  - Padding: 0

- **Controles da Lista**:
  - Filtros: Dropdown "Todos os Status"
  - Visualização: Ícones para alternar entre lista e cards
  - Busca: Campo de texto com ícone de lupa

- **Tabela de Veículos**:
  - Cabeçalho da Tabela:
    - Cor de Fundo: Cinza muito claro (#F5F7F9)
    - Altura: 48px
    - Fonte: Inter SemiBold, 14px
    - Cor: Cinza escuro (#4B5563)
    - Separador: Linha horizontal 1px (#E0E4E8)
  
  - Colunas:
    - Veículo (com miniatura)
    - Placa
    - Motorista Atual
    - Status
    - Última Vistoria
    - Quilometragem
    - Ações
  
  - Linhas da Tabela:
    - Altura: 72px
    - Cor de Fundo: Branco (#FFFFFF)
    - Cor de Fundo (hover): Cinza muito claro (#F5F7F9)
    - Separador: Linha horizontal 1px (#E0E4E8)
    - Fonte: Inter Regular, 14px
    - Cor: Preto Elegante (#333333)
  
  - Indicadores de Status:
    - Ativo: Tag verde (#57C5B6)
    - Em Manutenção: Tag âmbar (#FFA000)
    - Inativo: Tag cinza (#6B7280)
    - Disponível: Tag azul (#1A5F7A)
  
  - Coluna de Ações:
    - Ícones: Editar, Detalhes, Menu de opções
    - Tamanho: 20x20px
    - Cor: Cinza médio (#6B7280)
    - Cor (hover): Azul Confiança (#1A5F7A)

- **Paginação**:
  - Posição: Parte inferior direita
  - Botões de Navegação: Anterior, Próximo
  - Indicador de Página: "Página X de Y"
  - Seletor de Itens por Página: Dropdown

## Comportamentos e Interações

### Menu Lateral
- Item atual destacado visualmente
- Efeito hover em itens não selecionados
- Opção para recolher menu (toggle)
- Menu de usuário expande ao clicar na foto/nome

### Barra de Pesquisa
- Sugestões aparecem ao digitar
- Resultados categorizados (Veículos, Motoristas, etc.)
- Atalho de teclado para foco (Ctrl+K)

### Notificações
- Dropdown aparece ao clicar no ícone
- Notificações não lidas destacadas
- Opção para marcar como lida
- Opção para ver todas as notificações

### Cards de Resumo
- Hover com efeito sutil de elevação
- Clicável, direciona para seção relacionada
- Atualização em tempo real dos valores

### Seção de Alertas
- Alertas ordenados por prioridade e data
- Clicável, expande para mais detalhes ou navega para página relacionada
- Botões de ação rápida para cada alerta

### Gráfico de Quilometragem
- Interativo, mostra valores ao passar o mouse
- Zoom em períodos específicos
- Toggles para mostrar/ocultar veículos específicos
- Exportação do gráfico (PNG, PDF)

### Lista de Veículos
- Ordenação ao clicar nos cabeçalhos das colunas
- Filtros combinados (status + busca textual)
- Ações rápidas via menu de contexto
- Seleção múltipla para ações em lote

## Responsividade (Adaptação para Telas Menores)
- **Breakpoint 1366px**:
  - Menu lateral pode ser recolhido (apenas ícones)
  - Cards de resumo em grid 2x2
  - Algumas colunas menos importantes da tabela são ocultadas

- **Breakpoint 1024px**:
  - Menu lateral inicialmente recolhido
  - Gráfico de quilometragem com altura reduzida
  - Tabela com scroll horizontal

- **Breakpoint 768px**:
  - Menu lateral se torna drawer (fora da tela, aparece ao clicar no hambúrguer)
  - Cards de resumo empilhados (um abaixo do outro)
  - Alternância automática para visualização em cards em vez de tabela

## Acessibilidade
- Todos os elementos interativos acessíveis por teclado
- Ordem de tabulação lógica
- Contraste adequado para texto e elementos visuais
- Gráficos com descrições alternativas
- Suporte a zoom sem quebra de layout

## Observações Técnicas
- Dashboard atualiza dados automaticamente a cada 5 minutos
- Implementar cache local para melhor desempenho
- Utilizar Supabase Realtime para atualizações em tempo real
- Priorizar carregamento dos dados críticos primeiro
- Implementar lazy loading para conteúdos abaixo da dobra
