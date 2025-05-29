# Protótipo Detalhado: Módulo de Relatórios

## Especificações Visuais

### Layout Geral
- **Resolução Base**: 1920x1080px (Desktop)
- **Fundo**: Cinza muito claro (#F2F2F2)
- **Estrutura**: Layout com menu lateral fixo à esquerda (igual ao Dashboard) e área de conteúdo principal à direita

### Área de Conteúdo Principal
- **Padding**: 32px
- **Espaçamento entre seções**: 32px

#### Cabeçalho da Página
- **Título "Relatórios"**:
  - Fonte: Montserrat Bold
  - Tamanho: 28px
  - Cor: Preto Elegante (#333333)
- **Subtítulo**:
  - Fonte: Inter Regular
  - Tamanho: 16px
  - Cor: Cinza médio (#6B7280)
  - Texto: "Análise e exportação de dados da sua frota"

#### Layout Principal
- **Estrutura**: Layout de duas colunas com proporção 25%/75%
- **Gap**: 24px

### Coluna Esquerda (Categorias de Relatórios)
- **Container**:
  - Cor de Fundo: Branco (#FFFFFF)
  - Sombra: 0px 4px 12px rgba(0, 0, 0, 0.05)
  - Borda: Raio de 12px
  - Padding: 24px
  - Altura: Ajustável ao conteúdo (min-height: 600px)

#### Título da Seção
- **Texto**: "Categorias de Relatórios"
- **Fonte**: Inter SemiBold
- **Tamanho**: 16px
- **Cor**: Preto Elegante (#333333)
- **Margin-bottom**: 16px

#### Lista de Categorias
- **Layout**: Lista vertical
- **Gap**: 12px

##### Cada Categoria
- **Container**:
  - Altura: 56px
  - Padding: 0 16px
  - Borda: Raio de 8px
  - Estado Normal: Cor de Fundo Branco (#FFFFFF)
  - Estado Ativo: Cor de Fundo Azul muito claro (#F0F7FA), borda esquerda 4px Azul Confiança (#1A5F7A)
  - Estado Hover: Cor de Fundo Cinza muito claro (#F5F7F9)

- **Conteúdo**:
  - Layout: Flexbox com alinhamento central
  - Ícone: 24x24px, cor contextual conforme categoria
  - Texto:
    - Fonte: Inter Medium, 16px
    - Cor: Preto Elegante (#333333)
    - Margin-left: 16px

##### Lista de Categorias Padrão
1. **Visão Geral da Frota** (ícone de gráfico de pizza)
2. **Desempenho por Veículo** (ícone de carro com gráfico)
3. **Quilometragem** (ícone de velocímetro)
4. **Vistorias** (ícone de checklist)
5. **Documentos** (ícone de documento)
6. **Multas** (ícone de exclamação)
7. **Financeiro** (ícone de cifrão)
8. **Motoristas** (ícone de pessoa)
9. **Relatórios Personalizados** (ícone de engrenagem)

### Coluna Direita (Conteúdo do Relatório)
- **Container**:
  - Cor de Fundo: Branco (#FFFFFF)
  - Sombra: 0px 4px 12px rgba(0, 0, 0, 0.05)
  - Borda: Raio de 12px
  - Padding: 24px
  - Altura: Ajustável ao conteúdo (min-height: 600px)

#### Barra de Ações
- **Altura**: 56px
- **Margin-bottom**: 24px
- **Alinhamento**: Espaço entre (justify-content: space-between)

##### Lado Esquerdo
- **Título do Relatório**:
  - Texto: "Visão Geral da Frota" (ou categoria selecionada)
  - Fonte: Inter SemiBold, 18px
  - Cor: Preto Elegante (#333333)

##### Lado Direito
- **Seletor de Período**:
  - Tipo: Dropdown
  - Largura: 180px
  - Altura: 40px
  - Cor de Fundo: Branco (#FFFFFF)
  - Borda: 1px sólido (#E0E4E8), raio de 6px
  - Texto: "Últimos 30 dias"
  - Fonte: Inter Medium, 14px
  - Ícone: Calendário, 16x16px
  - Opções: "Últimos 7 dias", "Últimos 30 dias", "Últimos 90 dias", "Este ano", "Personalizado"

- **Botão "Exportar"**:
  - Altura: 40px
  - Padding: 0 20px
  - Cor de Fundo: Azul Confiança (#1A5F7A)
  - Cor de Texto: Branco (#FFFFFF)
  - Fonte: Inter SemiBold, 14px
  - Ícone: Download, 16x16px, à esquerda do texto
  - Borda: Raio de 6px
  - Estado Hover: Azul ligeiramente mais escuro (#164B61)
  - Margin-left: 16px

## Conteúdo do Relatório: Visão Geral da Frota

### Seção de Cards de Resumo
- **Layout**: Grid de 4 cards em linha
- **Gap**: 24px
- **Margin-bottom**: 32px

#### Cards de Resumo
- **Dimensões**: Largura igual (1/4 do espaço disponível - 24px de gap), altura 100px
- **Cor de Fundo**: Branco (#FFFFFF)
- **Borda**: 1px sólido (#E0E4E8), raio de 8px
- **Padding**: 16px

##### Card 1: Total de Veículos
- **Ícone**: Carro, 32x32px, cor Azul Confiança (#1A5F7A)
- **Valor**: 
  - Fonte: Montserrat Bold
  - Tamanho: 28px
  - Cor: Preto Elegante (#333333)
- **Rótulo**: "Total de Veículos"
  - Fonte: Inter Regular
  - Tamanho: 14px
  - Cor: Cinza médio (#6B7280)

##### Card 2: Quilometragem Total
- **Ícone**: Velocímetro, 32x32px, cor Azul Confiança (#1A5F7A)
- **Valor**: 
  - Fonte: Montserrat Bold
  - Tamanho: 28px
  - Cor: Preto Elegante (#333333)
  - Formato: X.XXX km
- **Rótulo**: "Quilometragem Total"
  - Fonte: Inter Regular
  - Tamanho: 14px
  - Cor: Cinza médio (#6B7280)

##### Card 3: Média de Vistorias
- **Ícone**: Checklist, 32x32px, cor Azul Confiança (#1A5F7A)
- **Valor**: Similar ao Card 1
- **Rótulo**: "Média de Vistorias"

##### Card 4: Multas no Período
- **Ícone**: Exclamação em círculo, 32x32px, cor Vermelho (#E53935)
- **Valor**: Similar ao Card 1
- **Rótulo**: "Multas no Período"

### Seção de Gráficos Principais
- **Layout**: Grid de 2 colunas
- **Gap**: 24px
- **Margin-bottom**: 32px

#### Gráfico 1: Distribuição de Status
- **Container**:
  - Cor de Fundo: Branco (#FFFFFF)
  - Sombra: 0px 2px 8px rgba(0, 0, 0, 0.05)
  - Borda: Raio de 12px
  - Padding: 24px
  - Altura: 320px

- **Título**:
  - Texto: "Distribuição de Status dos Veículos"
  - Fonte: Inter SemiBold, 16px
  - Cor: Preto Elegante (#333333)
  - Margin-bottom: 16px

- **Gráfico**:
  - Tipo: Gráfico de pizza
  - Altura: 240px
  - Cores:
    - Ativo: Verde (#57C5B6)
    - Em Manutenção: Âmbar (#FFA000)
    - Disponível: Azul (#1A5F7A)
    - Inativo: Cinza (#6B7280)
  
  - **Legenda**:
    - Posição: Direita do gráfico
    - Cada Item:
      - Indicador de Cor: Quadrado 12x12px
      - Texto: Fonte Inter Regular, 14px
      - Valor: Fonte Inter Medium, 14px
      - Porcentagem: Fonte Inter Regular, 14px, cor cinza médio

#### Gráfico 2: Quilometragem Mensal
- **Container**: Similar ao Gráfico 1
- **Título**: "Quilometragem Mensal"
- **Gráfico**:
  - Tipo: Gráfico de barras
  - Altura: 240px
  - Eixo X: Meses
  - Eixo Y: Quilometragem
  - Cor das Barras: Azul Confiança (#1A5F7A)
  - Linha de Tendência: Vermelho (#E53935)

### Seção de Tabelas de Dados
- **Layout**: Coluna única
- **Margin-bottom**: 32px

#### Tabela: Top Veículos por Quilometragem
- **Container**:
  - Cor de Fundo: Branco (#FFFFFF)
  - Sombra: 0px 2px 8px rgba(0, 0, 0, 0.05)
  - Borda: Raio de 12px
  - Padding: 24px
  - Overflow: Hidden

- **Título**:
  - Texto: "Top Veículos por Quilometragem"
  - Fonte: Inter SemiBold, 16px
  - Cor: Preto Elegante (#333333)
  - Margin-bottom: 16px

- **Cabeçalho da Tabela**:
  - Altura: 48px
  - Cor de Fundo: Cinza muito claro (#F5F7F9)
  - Fonte: Inter SemiBold, 14px
  - Cor de Texto: Cinza escuro (#4B5563)
  - Alinhamento: Esquerda (exceto colunas numéricas: centro)
  - Padding: 0 16px
  - Separador: Linha horizontal 1px (#E0E4E8) abaixo do cabeçalho

- **Colunas da Tabela**:
  1. **Posição** - Largura: 5%
  2. **Veículo** (com placa) - Largura: 25%
  3. **Quilometragem Total** - Largura: 15%
  4. **Média Diária** - Largura: 15%
  5. **Motorista Atual** - Largura: 20%
  6. **Status** - Largura: 10%
  7. **Detalhes** - Largura: 10%

- **Linhas da Tabela**:
  - Altura: 56px
  - Cor de Fundo: Branco (#FFFFFF)
  - Cor de Fundo (hover): Cinza muito claro (#F5F7F9)
  - Separador: Linha horizontal 1px (#E0E4E8) entre linhas
  - Padding: 0 16px
  - Fonte: Inter Regular, 14px
  - Cor: Preto Elegante (#333333)
  - Limitado a 5 linhas

- **Botão "Ver Todos"**:
  - Posição: Abaixo da tabela, alinhado à direita
  - Texto: "Ver Todos os Veículos"
  - Fonte: Inter Medium, 14px
  - Cor: Azul Confiança (#1A5F7A)
  - Ícone: Seta para direita, 16x16px

### Seção de Alertas e Notificações
- **Container**:
  - Cor de Fundo: Branco (#FFFFFF)
  - Sombra: 0px 2px 8px rgba(0, 0, 0, 0.05)
  - Borda: Raio de 12px
  - Padding: 24px
  - Margin-bottom: 32px

- **Título**:
  - Texto: "Alertas e Notificações"
  - Fonte: Inter SemiBold, 16px
  - Cor: Preto Elegante (#333333)
  - Margin-bottom: 16px

- **Lista de Alertas**:
  - Layout: Lista vertical
  - Cada Item:
    - Altura: 72px
    - Padding: 16px
    - Separador: Linha horizontal 1px (#E0E4E8) entre itens
    - Cor de Fundo: Branco (#FFFFFF)
    - Cor de Fundo (hover): Cinza muito claro (#F5F7F9)
    
    - **Conteúdo**:
      - Ícone: 32x32px, cor contextual conforme tipo de alerta
      - Título:
        - Fonte: Inter Medium, 16px
        - Cor: Preto Elegante (#333333)
      - Descrição:
        - Fonte: Inter Regular, 14px
        - Cor: Cinza médio (#6B7280)
      - Data:
        - Fonte: Inter Regular, 14px
        - Cor: Cinza médio (#6B7280)
        - Alinhamento: Direita
      - Indicador de Prioridade:
        - Alta: Círculo vermelho (#E53935)
        - Média: Círculo âmbar (#FFA000)
        - Baixa: Círculo azul (#1A5F7A)

## Conteúdo do Relatório: Desempenho por Veículo

### Barra de Seleção de Veículo
- **Container**:
  - Cor de Fundo: Branco (#FFFFFF)
  - Sombra: 0px 2px 8px rgba(0, 0, 0, 0.05)
  - Borda: Raio de 12px
  - Padding: 16px
  - Margin-bottom: 24px

- **Dropdown "Selecionar Veículo"**:
  - Largura: 100%
  - Altura: 48px
  - Cor de Fundo: Branco (#FFFFFF)
  - Borda: 1px sólido (#E0E4E8), raio de 6px
  - Texto: "Selecione um veículo..."
  - Fonte: Inter Medium, 16px
  - Ícone: Seta para baixo, 16x16px

### Seção de Informações do Veículo
- **Container**:
  - Cor de Fundo: Branco (#FFFFFF)
  - Sombra: 0px 2px 8px rgba(0, 0, 0, 0.05)
  - Borda: Raio de 12px
  - Padding: 24px
  - Margin-bottom: 24px

- **Layout**: Flexbox com gap de 24px

- **Informações Básicas**:
  - Foto do Veículo: 120x120px, borda raio 8px
  - Placa:
    - Fonte: Inter SemiBold, 20px
    - Cor: Preto Elegante (#333333)
    - Formato: Container retangular
      - Cor de Fundo: Cinza muito claro (#F5F7F9)
      - Padding: 4px 12px
      - Borda: Raio de 4px
  - Modelo:
    - Fonte: Inter Regular, 16px
    - Cor: Cinza médio (#6B7280)
  - Status:
    - Container: Pill shape
    - Padding: 4px 12px
    - Borda: Raio de 16px
    - Fonte: Inter Medium, 14px
    - Variações: Iguais à visualização em tabela

- **Detalhes do Veículo**:
  - Layout: Grid de 3 colunas
  - Gap: 24px
  - Cada Item:
    - Rótulo:
      - Fonte: Inter Regular, 14px
      - Cor: Cinza médio (#6B7280)
    - Valor:
      - Fonte: Inter Medium, 16px
      - Cor: Preto Elegante (#333333)
  - Itens: Ano, Quilometragem, Motorista Atual, Data de Aquisição, Última Vistoria, Documentos Pendentes

### Seção de Gráficos de Desempenho
- **Layout**: Grid de 2 colunas
- **Gap**: 24px
- **Margin-bottom**: 24px

#### Gráfico 1: Quilometragem Mensal
- **Container**:
  - Cor de Fundo: Branco (#FFFFFF)
  - Sombra: 0px 2px 8px rgba(0, 0, 0, 0.05)
  - Borda: Raio de 12px
  - Padding: 24px
  - Altura: 320px

- **Título**:
  - Texto: "Quilometragem Mensal"
  - Fonte: Inter SemiBold, 16px
  - Cor: Preto Elegante (#333333)
  - Margin-bottom: 16px

- **Gráfico**:
  - Tipo: Gráfico de linha
  - Altura: 240px
  - Eixo X: Dias/Semanas/Meses (conforme período selecionado)
  - Eixo Y: Quilometragem
  - Cor da Linha: Azul Confiança (#1A5F7A)
  - Área sob a linha: Azul muito claro (#F0F7FA)
  - Pontos de Dados: Círculos 6px, cor Azul Confiança (#1A5F7A)

#### Gráfico 2: Consumo de Combustível
- **Container**: Similar ao Gráfico 1
- **Título**: "Consumo de Combustível"
- **Gráfico**:
  - Tipo: Gráfico de barras
  - Altura: 240px
  - Eixo X: Meses
  - Eixo Y: Consumo (L/100km)
  - Cor das Barras: Verde (#57C5B6)
  - Linha de Média: Preto tracejado (#333333)

### Seção de Histórico de Vistorias
- **Container**:
  - Cor de Fundo: Branco (#FFFFFF)
  - Sombra: 0px 2px 8px rgba(0, 0, 0, 0.05)
  - Borda: Raio de 12px
  - Padding: 24px
  - Margin-bottom: 24px

- **Título**:
  - Texto: "Histórico de Vistorias"
  - Fonte: Inter SemiBold, 16px
  - Cor: Preto Elegante (#333333)
  - Margin-bottom: 16px

- **Timeline de Vistorias**:
  - Layout: Lista vertical com linha conectora
  - Cada Item:
    - Indicador: Círculo 16px, cor contextual conforme resultado
      - Aprovada: Verde (#57C5B6)
      - Rejeitada: Vermelho (#E53935)
    - Data:
      - Fonte: Inter Medium, 16px
      - Cor: Preto Elegante (#333333)
    - Tipo:
      - Fonte: Inter Regular, 14px
      - Cor: Cinza médio (#6B7280)
    - Resultado:
      - Fonte: Inter Medium, 14px
      - Cor: Contextual conforme resultado
    - Botão "Ver Detalhes":
      - Fonte: Inter Medium, 14px
      - Cor: Azul Confiança (#1A5F7A)
      - Alinhamento: Direita

### Seção de Multas
- **Container**:
  - Cor de Fundo: Branco (#FFFFFF)
  - Sombra: 0px 2px 8px rgba(0, 0, 0, 0.05)
  - Borda: Raio de 12px
  - Padding: 24px

- **Título**:
  - Texto: "Histórico de Multas"
  - Fonte: Inter SemiBold, 16px
  - Cor: Preto Elegante (#333333)
  - Margin-bottom: 16px

- **Tabela de Multas**:
  - Especificações similares à tabela de Top Veículos
  - Colunas: Data, Local, Valor, Pontuação, Responsável, Status
  - Limitado a 5 linhas mais recentes

## Conteúdo do Relatório: Quilometragem

### Seção de Filtros Avançados
- **Container**:
  - Cor de Fundo: Branco (#FFFFFF)
  - Sombra: 0px 2px 8px rgba(0, 0, 0, 0.05)
  - Borda: Raio de 12px
  - Padding: 24px
  - Margin-bottom: 24px

- **Layout**: Grid de 4 colunas
- **Gap**: 16px

- **Filtros**:
  - **Veículo** (dropdown múltiplo)
  - **Motorista** (dropdown múltiplo)
  - **Período** (seletor de intervalo de datas)
  - **Agrupar por** (dropdown: Dia, Semana, Mês)
  - **Botão "Aplicar Filtros"**:
    - Cor de Fundo: Azul Confiança (#1A5F7A)
    - Cor de Texto: Branco (#FFFFFF)
    - Largura: 100%
    - Altura: 40px

### Seção de Gráfico Principal
- **Container**:
  - Cor de Fundo: Branco (#FFFFFF)
  - Sombra: 0px 2px 8px rgba(0, 0, 0, 0.05)
  - Borda: Raio de 12px
  - Padding: 24px
  - Margin-bottom: 24px
  - Altura: 400px

- **Título**:
  - Texto: "Quilometragem por Período"
  - Fonte: Inter SemiBold, 16px
  - Cor: Preto Elegante (#333333)
  - Margin-bottom: 16px

- **Gráfico**:
  - Tipo: Gráfico de linhas múltiplas
  - Altura: 320px
  - Eixo X: Período (dias, semanas ou meses)
  - Eixo Y: Quilometragem
  - Cores: Uma cor distinta para cada veículo
  - Legenda:
    - Posição: Abaixo do gráfico
    - Layout: Flexbox wrap
    - Cada Item:
      - Indicador de Cor: Linha 16px
      - Texto: Placa do veículo
      - Fonte: Inter Regular, 14px

### Seção de Tabela de Dados
- **Container**:
  - Cor de Fundo: Branco (#FFFFFF)
  - Sombra: 0px 2px 8px rgba(0, 0, 0, 0.05)
  - Borda: Raio de 12px
  - Padding: 24px

- **Título**:
  - Texto: "Dados Detalhados de Quilometragem"
  - Fonte: Inter SemiBold, 16px
  - Cor: Preto Elegante (#333333)
  - Margin-bottom: 16px

- **Tabela**:
  - Especificações visuais similares às tabelas anteriores
  - Colunas: Veículo, Motorista, Período, Quilometragem Inicial, Quilometragem Final, Total Percorrido, Média Diária
  - Paginação: Similar à paginação padrão

## Conteúdo do Relatório: Financeiro

### Seção de Cards de Resumo Financeiro
- **Layout**: Grid de 4 cards em linha
- **Gap**: 24px
- **Margin-bottom**: 32px

#### Cards de Resumo
- **Dimensões**: Largura igual (1/4 do espaço disponível - 24px de gap), altura 100px
- **Cor de Fundo**: Branco (#FFFFFF)
- **Borda**: 1px sólido (#E0E4E8), raio de 8px
- **Padding**: 16px

##### Card 1: Receita Total
- **Ícone**: Cifrão em círculo, 32x32px, cor Verde (#57C5B6)
- **Valor**: 
  - Fonte: Montserrat Bold
  - Tamanho: 28px
  - Cor: Preto Elegante (#333333)
  - Formato: R$ X.XXX,XX
- **Rótulo**: "Receita Total"
  - Fonte: Inter Regular
  - Tamanho: 14px
  - Cor: Cinza médio (#6B7280)

##### Card 2: Despesas
- **Ícone**: Seta para baixo em círculo, 32x32px, cor Vermelho (#E53935)
- **Valor**: Similar ao Card 1
- **Rótulo**: "Despesas"

##### Card 3: Lucro
- **Ícone**: Gráfico crescente, 32x32px, cor Verde (#57C5B6)
- **Valor**: Similar ao Card 1
- **Rótulo**: "Lucro"

##### Card 4: Multas
- **Ícone**: Exclamação em círculo, 32x32px, cor Vermelho (#E53935)
- **Valor**: Similar ao Card 1
- **Rótulo**: "Multas"

### Seção de Gráficos Financeiros
- **Layout**: Grid de 2 colunas
- **Gap**: 24px
- **Margin-bottom**: 32px

#### Gráfico 1: Receitas vs Despesas
- **Container**:
  - Cor de Fundo: Branco (#FFFFFF)
  - Sombra: 0px 2px 8px rgba(0, 0, 0, 0.05)
  - Borda: Raio de 12px
  - Padding: 24px
  - Altura: 320px

- **Título**:
  - Texto: "Receitas vs Despesas"
  - Fonte: Inter SemiBold, 16px
  - Cor: Preto Elegante (#333333)
  - Margin-bottom: 16px

- **Gráfico**:
  - Tipo: Gráfico de barras agrupadas
  - Altura: 240px
  - Eixo X: Meses
  - Eixo Y: Valores em R$
  - Cores:
    - Receitas: Verde (#57C5B6)
    - Despesas: Vermelho (#E53935)
  - Legenda:
    - Posição: Topo direito
    - Layout: Horizontal

#### Gráfico 2: Distribuição de Despesas
- **Container**: Similar ao Gráfico 1
- **Título**: "Distribuição de Despesas"
- **Gráfico**:
  - Tipo: Gráfico de pizza
  - Altura: 240px
  - Cores: Variadas para cada categoria
  - Categorias: Manutenção, Combustível, Multas, Documentação, Outros
  - Legenda: Similar ao gráfico de distribuição de status

### Seção de Tabela de Transações
- **Container**:
  - Cor de Fundo: Branco (#FFFFFF)
  - Sombra: 0px 2px 8px rgba(0, 0, 0, 0.05)
  - Borda: Raio de 12px
  - Padding: 24px

- **Título**:
  - Texto: "Últimas Transações"
  - Fonte: Inter SemiBold, 16px
  - Cor: Preto Elegante (#333333)
  - Margin-bottom: 16px

- **Tabela**:
  - Especificações visuais similares às tabelas anteriores
  - Colunas: Data, Descrição, Veículo, Categoria, Valor, Tipo (Receita/Despesa)
  - Valores de Receita: Cor Verde (#57C5B6)
  - Valores de Despesa: Cor Vermelho (#E53935)
  - Paginação: Similar à paginação padrão

## Conteúdo do Relatório: Relatórios Personalizados

### Seção de Construção de Relatório
- **Container**:
  - Cor de Fundo: Branco (#FFFFFF)
  - Sombra: 0px 2px 8px rgba(0, 0, 0, 0.05)
  - Borda: Raio de 12px
  - Padding: 24px
  - Margin-bottom: 24px

- **Título**:
  - Texto: "Construir Relatório Personalizado"
  - Fonte: Inter SemiBold, 18px
  - Cor: Preto Elegante (#333333)
  - Margin-bottom: 24px

- **Layout**: Grid de 2 colunas
- **Gap**: 24px

#### Coluna Esquerda: Configurações
- **Campo "Nome do Relatório"**:
  - Rótulo: "Nome do Relatório"
  - Tipo: Input de texto
  - Placeholder: "Ex: Análise de Desempenho Q2 2025"
  - Margin-bottom: 16px

- **Seção "Selecionar Dados"**:
  - Título: "Selecionar Dados"
  - Fonte: Inter Medium, 16px
  - Margin: 16px 0
  
  - **Lista de Categorias de Dados**:
    - Layout: Lista vertical de checkboxes
    - Cada Item:
      - Checkbox: 18x18px
      - Texto: Fonte Inter Regular, 14px
      - Margin-bottom: 12px
    
    - **Categorias**:
      - Veículos (com subcategorias)
      - Motoristas (com subcategorias)
      - Quilometragem (com subcategorias)
      - Vistorias (com subcategorias)
      - Multas (com subcategorias)
      - Financeiro (com subcategorias)

- **Seção "Filtros"**:
  - Título: "Filtros"
  - Fonte: Inter Medium, 16px
  - Margin: 16px 0
  
  - **Botão "Adicionar Filtro"**:
    - Cor de Fundo: Branco (#FFFFFF)
    - Cor de Texto: Azul Confiança (#1A5F7A)
    - Borda: 1px tracejado (#1A5F7A)
    - Ícone: "+", 16x16px
    - Largura: 100%
    - Altura: 40px
    - Margin-bottom: 16px
  
  - **Filtros Adicionados**:
    - Layout: Lista vertical
    - Cada Filtro:
      - Container: Cor de Fundo Cinza muito claro (#F5F7F9)
      - Padding: 12px
      - Borda: Raio de 6px
      - Margin-bottom: 8px
      - Layout: Grid de 3 colunas (Campo, Operador, Valor)
      - Botão Remover: "X", 16x16px, cor cinza médio

- **Seção "Período"**:
  - Título: "Período"
  - Fonte: Inter Medium, 16px
  - Margin: 16px 0
  
  - **Seletor de Período**:
    - Tipo: Radio buttons
    - Opções: "Últimos 7 dias", "Últimos 30 dias", "Últimos 90 dias", "Este ano", "Personalizado"
    - Seletor de Datas (se "Personalizado" for selecionado)

#### Coluna Direita: Visualização
- **Seção "Tipo de Visualização"**:
  - Título: "Tipo de Visualização"
  - Fonte: Inter Medium, 16px
  - Margin-bottom: 16px
  
  - **Seletor de Visualização**:
    - Tipo: Cards clicáveis
    - Layout: Grid de 2x2
    - Cada Card:
      - Dimensões: 120px x 120px
      - Cor de Fundo: Branco (#FFFFFF)
      - Borda: 1px sólido (#E0E4E8), raio de 8px
      - Estado Selecionado: Borda 2px Azul Confiança (#1A5F7A)
      - Ícone: 48x48px, centralizado
      - Texto: Abaixo do ícone, centralizado
    
    - **Opções**:
      - Tabela (ícone de tabela)
      - Gráfico de Barras (ícone de barras)
      - Gráfico de Linha (ícone de linha)
      - Gráfico de Pizza (ícone de pizza)

- **Seção "Pré-visualização"**:
  - Título: "Pré-visualização"
  - Fonte: Inter Medium, 16px
  - Margin: 16px 0
  
  - **Container de Pré-visualização**:
    - Altura: 300px
    - Cor de Fundo: Cinza muito claro (#F5F7F9)
    - Borda: 1px sólido (#E0E4E8), raio de 8px
    - Conteúdo: Visualização do relatório conforme configurações
    - Estado Vazio: Texto "Configure os dados para visualizar o relatório"

### Seção de Botões de Ação
- **Container**:
  - Padding: 24px 0 0 0
  - Separador: Linha horizontal 1px (#E0E4E8) acima
  - Margin-top: 24px
  - Alinhamento: Flex end (botões à direita)

- **Botão "Salvar Relatório"**:
  - Cor de Fundo: Azul Confiança (#1A5F7A)
  - Cor de Texto: Branco (#FFFFFF)
  - Altura: 48px
  - Padding: 0 24px
  - Fonte: Inter SemiBold, 16px
  - Borda: Raio de 6px
  - Margin-left: 16px

- **Botão "Exportar"**:
  - Cor de Fundo: Branco (#FFFFFF)
  - Cor de Texto: Azul Confiança (#1A5F7A)
  - Borda: 1px sólido (#1A5F7A)
  - Altura: 48px
  - Padding: 0 24px
  - Fonte: Inter SemiBold, 16px
  - Borda: Raio de 6px

### Seção de Relatórios Salvos
- **Container**:
  - Cor de Fundo: Branco (#FFFFFF)
  - Sombra: 0px 2px 8px rgba(0, 0, 0, 0.05)
  - Borda: Raio de 12px
  - Padding: 24px

- **Título**:
  - Texto: "Relatórios Salvos"
  - Fonte: Inter SemiBold, 18px
  - Cor: Preto Elegante (#333333)
  - Margin-bottom: 16px

- **Lista de Relatórios**:
  - Layout: Grid de 3 colunas
  - Gap: 24px
  
  - **Cada Card de Relatório**:
    - Dimensões: Largura flexível (1/3 do espaço disponível - 24px de gap), altura 180px
    - Cor de Fundo: Branco (#FFFFFF)
    - Sombra: 0px 4px 12px rgba(0, 0, 0, 0.05)
    - Borda: Raio de 12px
    - Padding: 16px
    
    - **Nome do Relatório**:
      - Fonte: Inter SemiBold, 16px
      - Cor: Preto Elegante (#333333)
      - Truncamento: Elipses se muito longo
    
    - **Descrição**:
      - Fonte: Inter Regular, 14px
      - Cor: Cinza médio (#6B7280)
      - Altura: 40px (2 linhas)
      - Truncamento: Elipses se muito longo
    
    - **Última Execução**:
      - Fonte: Inter Regular, 12px
      - Cor: Cinza médio (#6B7280)
      - Texto: "Última execução: DD/MM/AAAA"
    
    - **Botões de Ação**:
      - Layout: Flexbox com space-between
      - Margin-top: 16px
      - Separador: Linha horizontal 1px (#E0E4E8) acima, padding-top 16px
      
      - **Botão "Executar"**:
        - Cor de Fundo: Azul Confiança (#1A5F7A)
        - Cor de Texto: Branco (#FFFFFF)
        - Altura: 36px
        - Padding: 0 16px
        - Fonte: Inter Medium, 14px
        - Borda: Raio de 6px
      
      - **Botão "Editar"**:
        - Cor de Fundo: Branco (#FFFFFF)
        - Cor de Texto: Azul Confiança (#1A5F7A)
        - Borda: 1px sólido (#1A5F7A)
        - Altura: 36px
        - Padding: 0 16px
        - Fonte: Inter Medium, 14px
        - Borda: Raio de 6px

## Modal: Exportar Relatório

### Estrutura Geral
- **Overlay**: Fundo escurecido (rgba(0, 0, 0, 0.5))
- **Modal**:
  - Largura: 600px
  - Altura: Auto (baseado no conteúdo)
  - Cor de Fundo: Branco (#FFFFFF)
  - Sombra: 0px 8px 24px rgba(0, 0, 0, 0.15)
  - Borda: Raio de 12px
  - Posição: Centralizado na tela

### Cabeçalho do Modal
- **Altura**: 72px
- **Padding**: 0 32px
- **Separador**: Linha horizontal 1px (#E0E4E8) abaixo
- **Título**:
  - Texto: "Exportar Relatório"
  - Fonte: Montserrat Bold, 20px
  - Cor: Preto Elegante (#333333)
- **Botão Fechar**:
  - Ícone: "X", 24x24px
  - Cor: Cinza médio (#6B7280)
  - Posição: Extrema direita

### Conteúdo do Modal
- **Padding**: 32px
- **Layout**: Formulário em 1 coluna
- **Gap**: 24px

#### Opções de Exportação
- **Título**:
  - Texto: "Formato de Exportação"
  - Fonte: Inter Medium, 16px
  - Cor: Preto Elegante (#333333)
  - Margin-bottom: 16px

- **Seletor de Formato**:
  - Tipo: Radio buttons com cards
  - Layout: Grid de 3 colunas
  - Gap: 16px
  
  - **Cada Opção**:
    - Dimensões: Largura flexível (1/3 do espaço disponível - 16px de gap), altura 120px
    - Cor de Fundo: Branco (#FFFFFF)
    - Borda: 1px sólido (#E0E4E8), raio de 8px
    - Estado Selecionado: Borda 2px Azul Confiança (#1A5F7A)
    - Padding: 16px
    - Alinhamento: Centro
    
    - **Ícone**:
      - Tamanho: 48x48px
      - Cor: Contextual conforme formato
    
    - **Texto**:
      - Fonte: Inter Medium, 14px
      - Cor: Preto Elegante (#333333)
      - Margin-top: 8px
    
    - **Opções**:
      - PDF (ícone de PDF, cor vermelho)
      - Excel (ícone de Excel, cor verde)
      - CSV (ícone de documento, cor cinza)

#### Opções Adicionais
- **Título**:
  - Texto: "Opções Adicionais"
  - Fonte: Inter Medium, 16px
  - Cor: Preto Elegante (#333333)
  - Margin: 24px 0 16px 0

- **Checkboxes**:
  - Layout: Lista vertical
  - Gap: 12px
  
  - **Cada Opção**:
    - Checkbox: 18x18px
    - Texto: Fonte Inter Regular, 14px
    - Cor: Preto Elegante (#333333)
  
  - **Opções**:
    - "Incluir gráficos"
    - "Incluir dados detalhados"
    - "Incluir sumário executivo"
    - "Adicionar marca d'água com data e hora"

- **Campo "Nome do Arquivo"**:
  - Rótulo: "Nome do Arquivo"
  - Tipo: Input de texto
  - Valor Padrão: "Relatório_[Categoria]_[Data]"
  - Margin-top: 16px

### Rodapé do Modal
- **Altura**: 72px
- **Padding**: 0 32px
- **Separador**: Linha horizontal 1px (#E0E4E8) acima
- **Alinhamento**: Flex end (botões à direita)
- **Botão "Cancelar"**:
  - Cor de Fundo: Branco (#FFFFFF)
  - Cor de Texto: Cinza escuro (#4B5563)
  - Borda: 1px sólido (#D1D5DB)
  - Margin-right: 16px
- **Botão "Exportar"**:
  - Cor de Fundo: Azul Confiança (#1A5F7A)
  - Cor de Texto: Branco (#FFFFFF)
- **Especificações Comuns**:
  - Altura: 48px
  - Padding: 0 24px
  - Fonte: Inter SemiBold, 16px
  - Borda: Raio de 6px

## Comportamentos e Interações

### Navegação entre Categorias
- Clique em categoria destaca visualmente e carrega o relatório correspondente
- Transição suave ao trocar de categoria
- Estado persistente (lembra última categoria visualizada)

### Filtros e Seletores
- Seletor de período afeta todos os dados exibidos
- Filtros aplicados imediatamente ao selecionar/alterar
- Opção de salvar configurações de filtros como padrão

### Gráficos Interativos
- Hover mostra tooltips com valores detalhados
- Clique em legendas mostra/oculta séries específicas
- Zoom em períodos específicos (arrastar para selecionar área)
- Opção de alternar entre tipos de visualização (linha, barra, área)

### Tabelas de Dados
- Ordenação ao clicar nos cabeçalhos das colunas
- Filtros rápidos por coluna
- Exportação da tabela específica
- Paginação com opções de itens por página

### Relatórios Personalizados
- Interface drag-and-drop para construção de relatórios
- Pré-visualização em tempo real das alterações
- Salvamento automático de rascunhos
- Compartilhamento de relatórios entre usuários

### Exportação
- Preview do relatório antes da exportação final
- Opções de personalização do layout
- Notificação de conclusão do download
- Histórico de relatórios exportados

## Responsividade (Adaptação para Telas Menores)
- **Breakpoint 1366px**:
  - Layout muda para coluna única (categorias acima, conteúdo abaixo)
  - Cards de resumo em grid 2x2
  - Gráficos com altura reduzida

- **Breakpoint 1024px**:
  - Categorias se transformam em dropdown
  - Gráficos empilhados (um abaixo do outro)
  - Tabelas com scroll horizontal

- **Breakpoint 768px**:
  - Cards de resumo empilhados (um abaixo do outro)
  - Opções de exportação simplificadas
  - Construtor de relatórios personalizados com layout simplificado

## Acessibilidade
- Todos os elementos interativos acessíveis por teclado
- Ordem de tabulação lógica
- Descrições alternativas para gráficos e elementos visuais
- Contraste adequado para texto e elementos visuais
- Suporte a leitores de tela para dados tabulares

## Observações Técnicas
- Implementar cache local para relatórios frequentemente acessados
- Utilizar bibliotecas de gráficos otimizadas para grandes volumes de dados
- Processamento de relatórios complexos em background para evitar bloqueio da interface
- Exportação assíncrona para arquivos grandes
- Implementar compressão de dados para melhor desempenho
