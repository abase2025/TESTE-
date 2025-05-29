# Protótipo Detalhado: Módulo de Veículos

## Especificações Visuais

### Layout Geral
- **Resolução Base**: 1920x1080px (Desktop)
- **Fundo**: Cinza muito claro (#F2F2F2)
- **Estrutura**: Layout com menu lateral fixo à esquerda (igual ao Dashboard) e área de conteúdo principal à direita

### Área de Conteúdo Principal
- **Padding**: 32px
- **Espaçamento entre seções**: 32px

#### Cabeçalho da Página
- **Título "Veículos"**:
  - Fonte: Montserrat Bold
  - Tamanho: 28px
  - Cor: Preto Elegante (#333333)
- **Subtítulo**:
  - Fonte: Inter Regular
  - Tamanho: 16px
  - Cor: Cinza médio (#6B7280)
  - Texto: "Gerencie sua frota de veículos"

#### Barra de Ações e Filtros
- **Altura**: 64px
- **Cor de Fundo**: Branco (#FFFFFF)
- **Sombra**: 0px 2px 8px rgba(0, 0, 0, 0.05)
- **Borda**: Raio de 12px
- **Padding**: 0 24px
- **Margem inferior**: 24px

##### Lado Esquerdo (Filtros)
- **Dropdown "Status"**:
  - Largura: 160px
  - Altura: 40px
  - Cor de Fundo: Branco (#FFFFFF)
  - Borda: 1px sólido (#E0E4E8), raio de 6px
  - Texto: "Todos os Status"
  - Fonte: Inter Medium, 14px
  - Ícone: Seta para baixo, 16x16px
  - Opções: "Todos", "Ativos", "Em Manutenção", "Disponíveis", "Inativos"

- **Dropdown "Motorista"**:
  - Especificações visuais idênticas ao dropdown "Status"
  - Texto: "Todos os Motoristas"
  - Opções: "Todos", "Com Motorista", "Sem Motorista", e lista de motoristas específicos

- **Campo de Busca**:
  - Largura: 240px
  - Altura: 40px
  - Cor de Fundo: Cinza muito claro (#F5F7F9)
  - Borda: 1px sólido (#E0E4E8), raio de 6px
  - Ícone: Lupa, 16x16px, cor cinza médio (#6B7280)
  - Placeholder: "Buscar por placa, modelo..."
  - Fonte: Inter Regular, 14px

##### Lado Direito (Ações)
- **Botão "Adicionar Veículo"**:
  - Altura: 40px
  - Padding: 0 20px
  - Cor de Fundo: Azul Confiança (#1A5F7A)
  - Cor de Texto: Branco (#FFFFFF)
  - Fonte: Inter SemiBold, 14px
  - Ícone: "+", 16x16px, à esquerda do texto
  - Borda: Raio de 6px
  - Estado Hover: Azul ligeiramente mais escuro (#164B61)

- **Botões de Visualização**:
  - Tipo: Toggle buttons
  - Altura: 40px
  - Largura: 40px cada
  - Borda: 1px sólido (#E0E4E8), raio de 6px
  - Ícones: Grade (cards) e Lista (tabela), 20x20px
  - Estado Ativo: Cor de Fundo Azul Confiança (#1A5F7A), ícone branco
  - Estado Inativo: Cor de Fundo Branco (#FFFFFF), ícone cinza médio (#6B7280)

### Visualização em Tabela (Padrão)
- **Container**:
  - Cor de Fundo: Branco (#FFFFFF)
  - Sombra: 0px 4px 12px rgba(0, 0, 0, 0.05)
  - Borda: Raio de 12px
  - Overflow: Hidden

#### Cabeçalho da Tabela
- **Altura**: 56px
- **Cor de Fundo**: Cinza muito claro (#F5F7F9)
- **Fonte**: Inter SemiBold, 14px
- **Cor de Texto**: Cinza escuro (#4B5563)
- **Alinhamento**: Esquerda (exceto colunas numéricas: centro)
- **Padding**: 0 24px
- **Separador**: Linha horizontal 1px (#E0E4E8) abaixo do cabeçalho
- **Ícones de Ordenação**: Setas pequenas (8x8px) indicando a direção da ordenação

#### Colunas da Tabela
1. **Checkbox** (seleção múltipla) - Largura: 48px
2. **Veículo** (com miniatura) - Largura: 25%
3. **Placa** - Largura: 10%
4. **Motorista Atual** - Largura: 15%
5. **Status** - Largura: 10%
6. **Quilometragem** - Largura: 10%
7. **Última Vistoria** - Largura: 15%
8. **Ações** - Largura: 10%

#### Linhas da Tabela
- **Altura**: 72px
- **Cor de Fundo**: Branco (#FFFFFF)
- **Cor de Fundo (hover)**: Cinza muito claro (#F5F7F9)
- **Cor de Fundo (selecionado)**: Azul muito claro (#F0F7FA)
- **Separador**: Linha horizontal 1px (#E0E4E8) entre linhas
- **Padding**: 0 24px

##### Detalhes de cada coluna
- **Checkbox**:
  - Tamanho: 18x18px
  - Cor de Borda: Cinza (#D1D5DB)
  - Cor quando Selecionado: Azul Confiança (#1A5F7A)

- **Veículo**:
  - Miniatura: 48x48px, borda raio 6px
  - Nome do Veículo:
    - Fonte: Inter SemiBold, 14px
    - Cor: Preto Elegante (#333333)
  - Modelo/Ano:
    - Fonte: Inter Regular, 14px
    - Cor: Cinza médio (#6B7280)

- **Placa**:
  - Fonte: Inter Medium, 14px
  - Cor: Preto Elegante (#333333)
  - Formato: Destacado em um container retangular
    - Cor de Fundo: Cinza muito claro (#F5F7F9)
    - Padding: 4px 8px
    - Borda: Raio de 4px

- **Motorista Atual**:
  - Foto: Circular, 32px de diâmetro
  - Nome:
    - Fonte: Inter Medium, 14px
    - Cor: Preto Elegante (#333333)
  - Se não houver motorista:
    - Texto: "Sem motorista"
    - Cor: Cinza médio (#6B7280)

- **Status**:
  - Container: Pill shape
    - Padding: 4px 12px
    - Borda: Raio de 16px
  - Fonte: Inter Medium, 14px
  - Variações:
    - Ativo: Fundo verde claro (#E6F6F4), texto verde (#57C5B6)
    - Em Manutenção: Fundo âmbar claro (#FFF4E5), texto âmbar (#FFA000)
    - Disponível: Fundo azul claro (#E6F0F5), texto azul (#1A5F7A)
    - Inativo: Fundo cinza claro (#F2F2F2), texto cinza (#6B7280)

- **Quilometragem**:
  - Fonte: Inter Regular, 14px
  - Cor: Preto Elegante (#333333)
  - Alinhamento: Direita
  - Formato: Com separador de milhares e "km" após o número

- **Última Vistoria**:
  - Data:
    - Fonte: Inter Regular, 14px
    - Cor: Preto Elegante (#333333)
  - Status:
    - Fonte: Inter Regular, 12px
    - Cor: Varia conforme resultado (verde para aprovada, vermelho para reprovada)

- **Ações**:
  - Ícones: 3 ícones de 20x20px
    - Detalhes (olho)
    - Editar (lápis)
    - Menu de opções (três pontos verticais)
  - Cor: Cinza médio (#6B7280)
  - Cor (hover): Azul Confiança (#1A5F7A)
  - Espaçamento entre ícones: 16px

#### Paginação
- **Container**:
  - Altura: 64px
  - Padding: 0 24px
  - Separador: Linha horizontal 1px (#E0E4E8) acima
  - Alinhamento: Espaço entre (justify-content: space-between)

- **Lado Esquerdo**:
  - Texto: "Mostrando 1-10 de 24 veículos"
  - Fonte: Inter Regular, 14px
  - Cor: Cinza médio (#6B7280)

- **Lado Direito**:
  - Botões de Navegação:
    - Anterior e Próximo
    - Altura: 40px
    - Largura: 40px
    - Borda: 1px sólido (#E0E4E8), raio de 6px
    - Ícones: Setas, 16x16px
    - Estado Desabilitado: Cor cinza claro (#D1D5DB)
  
  - Números de Página:
    - Container: 40px x 40px
    - Fonte: Inter Medium, 14px
    - Página Atual: Fundo Azul Confiança (#1A5F7A), texto branco
    - Outras Páginas: Fundo branco, texto cinza escuro
    - Borda: 1px sólido (#E0E4E8), raio de 6px

  - Seletor "Itens por página":
    - Dropdown
    - Opções: 10, 25, 50, 100
    - Fonte: Inter Regular, 14px

### Visualização em Cards (Alternativa)
- **Grid**: 3 colunas em telas grandes, adaptável para menos colunas em telas menores
- **Gap**: 24px

#### Card de Veículo
- **Dimensões**: Largura flexível (1/3 do espaço disponível - 24px de gap), altura 320px
- **Cor de Fundo**: Branco (#FFFFFF)
- **Sombra**: 0px 4px 12px rgba(0, 0, 0, 0.05)
- **Borda**: Raio de 12px
- **Overflow**: Hidden

##### Imagem do Veículo
- **Altura**: 160px
- **Largura**: 100%
- **Objeto-fit**: Cover
- **Posição**: Topo do card

##### Indicador de Status
- **Posição**: Absoluta, topo direito da imagem
- **Margin**: 16px
- **Especificações**: Iguais aos pills de status na visualização em tabela

##### Conteúdo do Card
- **Padding**: 20px

- **Placa**:
  - Especificações: Iguais à visualização em tabela
  - Posição: Topo esquerdo do conteúdo

- **Nome e Modelo**:
  - Fonte Nome: Inter SemiBold, 18px
  - Fonte Modelo: Inter Regular, 14px
  - Cor Nome: Preto Elegante (#333333)
  - Cor Modelo: Cinza médio (#6B7280)
  - Margin-top: 12px

- **Informações Adicionais**:
  - Layout: Grid de 2 colunas
  - Margin-top: 16px
  
  - **Cada Item**:
    - Rótulo:
      - Fonte: Inter Regular, 12px
      - Cor: Cinza médio (#6B7280)
    - Valor:
      - Fonte: Inter Medium, 14px
      - Cor: Preto Elegante (#333333)
  
  - **Itens Incluídos**:
    - Quilometragem
    - Última Vistoria
    - Motorista Atual (com foto miniatura)
    - Ano

- **Barra de Ações**:
  - Posição: Parte inferior do card
  - Margin-top: 16px
  - Separador: Linha horizontal 1px (#E0E4E8) acima
  - Padding-top: 16px
  
  - **Botões**:
    - "Detalhes" (primário):
      - Cor de Fundo: Azul Confiança (#1A5F7A)
      - Cor de Texto: Branco (#FFFFFF)
      - Largura: 60%
    - "Editar" (secundário):
      - Cor de Fundo: Branco (#FFFFFF)
      - Cor de Texto: Azul Confiança (#1A5F7A)
      - Borda: 1px sólido (#1A5F7A)
      - Largura: 35%
    
    - **Especificações Comuns**:
      - Altura: 40px
      - Fonte: Inter Medium, 14px
      - Borda: Raio de 6px

## Modal: Adicionar/Editar Veículo

### Estrutura Geral
- **Overlay**: Fundo escurecido (rgba(0, 0, 0, 0.5))
- **Modal**:
  - Largura: 800px
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
  - Texto: "Adicionar Veículo" ou "Editar Veículo"
  - Fonte: Montserrat Bold, 20px
  - Cor: Preto Elegante (#333333)
- **Botão Fechar**:
  - Ícone: "X", 24x24px
  - Cor: Cinza médio (#6B7280)
  - Posição: Extrema direita

### Conteúdo do Modal
- **Padding**: 32px
- **Layout**: Formulário em grid de 2 colunas
- **Gap**: 24px

#### Seção de Upload de Fotos
- **Largura**: 100% (span 2 colunas)
- **Altura**: 160px
- **Cor de Fundo**: Cinza muito claro (#F5F7F9)
- **Borda**: 2px tracejado (#D1D5DB), raio de 12px
- **Texto**:
  - Principal: "Arraste fotos aqui ou clique para fazer upload"
  - Secundário: "Formatos aceitos: JPG, PNG. Máximo 5MB por imagem."
  - Fonte Principal: Inter Medium, 16px
  - Fonte Secundária: Inter Regular, 14px
  - Cor Principal: Cinza escuro (#4B5563)
  - Cor Secundária: Cinza médio (#6B7280)
- **Ícone**: Upload, 48x48px, cor Azul Confiança (#1A5F7A)

- **Previews de Imagens** (após upload):
  - Layout: Linha horizontal de miniaturas
  - Tamanho de cada miniatura: 80x80px
  - Borda: Raio de 8px
  - Botão de remover: "X" no canto superior direito

#### Campos do Formulário
Cada campo segue este padrão:
- **Rótulo**:
  - Fonte: Inter Medium, 14px
  - Cor: Cinza escuro (#4B5563)
  - Margin-bottom: 8px
- **Campo de Entrada**:
  - Altura: 48px
  - Cor de Fundo: Branco (#FFFFFF)
  - Borda: 1px sólido (#E0E4E8), raio de 6px
  - Padding: 0 16px
  - Fonte: Inter Regular, 16px
  - Estado de Foco: Borda 2px Azul Confiança (#1A5F7A)
  - Estado de Erro: Borda 2px Vermelho (#E53935)
  - Mensagem de Erro:
    - Fonte: Inter Regular, 12px
    - Cor: Vermelho (#E53935)
    - Margin-top: 4px

##### Lista de Campos (distribuídos em 2 colunas)
1. **Placa** (obrigatório)
2. **Marca** (obrigatório)
3. **Modelo** (obrigatório)
4. **Ano de Fabricação** (obrigatório)
5. **Ano do Modelo** (obrigatório)
6. **Cor** (obrigatório)
7. **Renavam** (obrigatório)
8. **Chassi** (obrigatório)
9. **Quilometragem Atual** (obrigatório)
10. **Data de Aquisição** (obrigatório)
11. **Valor de Aquisição** (obrigatório)
12. **Valor de Locação** (obrigatório)
13. **Status** (dropdown, obrigatório)
14. **Motorista Atual** (dropdown, opcional)

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
- **Botão "Salvar"**:
  - Cor de Fundo: Azul Confiança (#1A5F7A)
  - Cor de Texto: Branco (#FFFFFF)
- **Especificações Comuns**:
  - Altura: 48px
  - Padding: 0 24px
  - Fonte: Inter SemiBold, 16px
  - Borda: Raio de 6px

## Modal: Detalhes do Veículo

### Estrutura Geral
- **Overlay**: Fundo escurecido (rgba(0, 0, 0, 0.5))
- **Modal**:
  - Largura: 1000px
  - Altura: 80% da viewport
  - Cor de Fundo: Branco (#FFFFFF)
  - Sombra: 0px 8px 24px rgba(0, 0, 0, 0.15)
  - Borda: Raio de 12px
  - Posição: Centralizado na tela

### Cabeçalho do Modal
- **Altura**: 72px
- **Padding**: 0 32px
- **Separador**: Linha horizontal 1px (#E0E4E8) abaixo
- **Título**:
  - Layout: Flexbox com gap de 12px
  - Placa:
    - Container retangular
    - Cor de Fundo: Cinza muito claro (#F5F7F9)
    - Padding: 4px 8px
    - Borda: Raio de 4px
    - Fonte: Inter SemiBold, 16px
  - Nome do Veículo:
    - Fonte: Montserrat Bold, 20px
    - Cor: Preto Elegante (#333333)
- **Status**:
  - Especificações: Iguais aos pills de status na visualização em tabela
  - Posição: Centro-direita
- **Botões de Ação**:
  - "Editar":
    - Cor de Fundo: Azul Confiança (#1A5F7A)
    - Cor de Texto: Branco (#FFFFFF)
  - "Excluir":
    - Cor de Fundo: Branco (#FFFFFF)
    - Cor de Texto: Vermelho (#E53935)
    - Borda: 1px sólido (#E53935)
  - **Especificações Comuns**:
    - Altura: 40px
    - Padding: 0 16px
    - Fonte: Inter Medium, 14px
    - Borda: Raio de 6px
    - Margin-left: 12px
- **Botão Fechar**:
  - Ícone: "X", 24x24px
  - Cor: Cinza médio (#6B7280)
  - Posição: Extrema direita

### Navegação por Abas
- **Altura**: 56px
- **Padding**: 0 32px
- **Separador**: Linha horizontal 1px (#E0E4E8) abaixo
- **Abas**:
  - "Informações Gerais" (selecionada por padrão)
  - "Histórico de Vistorias"
  - "Documentos"
  - "Multas"
  - "Histórico de Quilometragem"
  - "Manutenções"
  - "Motoristas Anteriores"
- **Especificações de cada Aba**:
  - Padding: 0 16px
  - Altura: 56px
  - Fonte: Inter Medium, 16px
  - Estado Normal: Cor de Texto Cinza médio (#6B7280)
  - Estado Ativo: 
    - Cor de Texto Azul Confiança (#1A5F7A)
    - Borda inferior 2px Azul Confiança (#1A5F7A)

### Conteúdo da Aba "Informações Gerais"
- **Padding**: 32px
- **Layout**: Grid com 2 áreas principais

#### Área Esquerda (60% da largura)
- **Galeria de Fotos**:
  - Foto Principal: Altura 320px, largura 100%, object-fit cover
  - Miniaturas: Linha horizontal abaixo da foto principal
  - Cada Miniatura: 80x80px, borda raio 8px
  - Miniatura Ativa: Borda 2px Azul Confiança (#1A5F7A)
  - Navegação: Botões de seta nas laterais da foto principal

- **Informações Básicas**:
  - Título da Seção:
    - Texto: "Informações Básicas"
    - Fonte: Montserrat SemiBold, 18px
    - Margin: 32px 0 16px 0
  - Layout: Grid de 2 colunas
  - Gap: 24px
  
  - **Cada Item**:
    - Rótulo:
      - Fonte: Inter Regular, 14px
      - Cor: Cinza médio (#6B7280)
    - Valor:
      - Fonte: Inter Medium, 16px
      - Cor: Preto Elegante (#333333)
  
  - **Itens Incluídos**:
    - Marca e Modelo
    - Ano de Fabricação/Modelo
    - Cor
    - Renavam
    - Chassi
    - Data de Aquisição
    - Valor de Aquisição
    - Valor de Locação

#### Área Direita (40% da largura)
- **Card de Motorista Atual**:
  - Cor de Fundo: Branco (#FFFFFF)
  - Sombra: 0px 4px 12px rgba(0, 0, 0, 0.05)
  - Borda: Raio de 12px
  - Padding: 24px
  
  - **Título**:
    - Texto: "Motorista Atual"
    - Fonte: Montserrat SemiBold, 18px
    - Margin-bottom: 16px
  
  - **Conteúdo** (se houver motorista):
    - Foto: Circular, 64px de diâmetro
    - Nome:
      - Fonte: Inter SemiBold, 18px
      - Cor: Preto Elegante (#333333)
    - Telefone:
      - Fonte: Inter Regular, 14px
      - Cor: Cinza médio (#6B7280)
    - Desde:
      - Texto: "Desde DD/MM/AAAA"
      - Fonte: Inter Regular, 14px
      - Cor: Cinza médio (#6B7280)
    - Botão "Ver Perfil":
      - Cor de Fundo: Azul Confiança (#1A5F7A)
      - Cor de Texto: Branco (#FFFFFF)
      - Altura: 40px
      - Largura: 100%
      - Margin-top: 16px
  
  - **Conteúdo** (se não houver motorista):
    - Ícone: Pessoa com símbolo de adição, 64x64px
    - Texto: "Sem motorista associado"
    - Botão "Associar Motorista"

- **Card de Quilometragem**:
  - Especificações visuais iguais ao card de motorista
  - Margin-top: 24px
  
  - **Título**:
    - Texto: "Quilometragem"
    - Fonte: Montserrat SemiBold, 18px
    - Margin-bottom: 16px
  
  - **Conteúdo**:
    - Valor Atual:
      - Fonte: Inter Bold, 32px
      - Cor: Preto Elegante (#333333)
      - Texto: "123.456 km"
    - Último Registro:
      - Fonte: Inter Regular, 14px
      - Cor: Cinza médio (#6B7280)
      - Texto: "Atualizado em DD/MM/AAAA"
    - Gráfico:
      - Tipo: Linha
      - Altura: 120px
      - Eixo X: Últimos 6 registros (datas)
      - Eixo Y: Quilometragem
      - Cor da Linha: Azul Confiança (#1A5F7A)
    - Botão "Ver Histórico Completo":
      - Especificações iguais ao botão "Ver Perfil"

- **Card de Próximas Datas**:
  - Especificações visuais iguais aos cards anteriores
  - Margin-top: 24px
  
  - **Título**:
    - Texto: "Próximas Datas Importantes"
    - Fonte: Montserrat SemiBold, 18px
    - Margin-bottom: 16px
  
  - **Lista de Datas**:
    - Layout: Lista vertical com separadores
    - Cada Item:
      - Ícone: Varia conforme o tipo (documento, vistoria, etc.)
      - Título:
        - Fonte: Inter Medium, 16px
        - Cor: Preto Elegante (#333333)
      - Data:
        - Fonte: Inter Regular, 14px
        - Cor: Cinza médio (#6B7280)
      - Indicador de Proximidade:
        - Próximo (< 7 dias): Cor âmbar (#FFA000)
        - Muito Próximo (< 3 dias): Cor vermelha (#E53935)

## Comportamentos e Interações

### Visualização em Tabela
- Ordenação ao clicar nos cabeçalhos das colunas
- Seleção de múltiplas linhas via checkboxes
- Ações em lote disponíveis quando múltiplos itens selecionados
- Hover em linha destaca toda a linha
- Menu de contexto ao clicar no ícone de três pontos

### Visualização em Cards
- Hover eleva sutilmente o card
- Clique em qualquer área do card (exceto botões) abre detalhes
- Filtros afetam ambos os modos de visualização

### Modal de Adição/Edição
- Validação em tempo real dos campos
- Upload de múltiplas fotos com preview
- Reordenação de fotos via drag-and-drop
- Autopreenchimento de informações ao digitar a placa (via API de veículos)
- Confirmação antes de descartar alterações não salvas

### Modal de Detalhes
- Navegação entre abas mantém o contexto do veículo
- Galeria de fotos com navegação por setas ou miniaturas
- Gráficos interativos com tooltips ao passar o mouse
- Botões de ação contextual em cada seção

## Responsividade (Adaptação para Telas Menores)
- **Breakpoint 1366px**:
  - Visualização em cards passa para 2 colunas
  - Modal de detalhes reduz para 90% da largura

- **Breakpoint 1024px**:
  - Visualização em tabela oculta colunas menos importantes
  - Modal de detalhes muda layout para uma coluna
  - Abas se transformam em dropdown em telas muito estreitas

- **Breakpoint 768px**:
  - Visualização em cards passa para 1 coluna
  - Barra de filtros empilha verticalmente
  - Modal ocupa tela inteira

## Acessibilidade
- Todos os elementos interativos acessíveis por teclado
- Ordem de tabulação lógica
- Rótulos ARIA para elementos complexos
- Mensagens de erro anunciadas por leitores de tela
- Contraste adequado para texto e elementos visuais

## Observações Técnicas
- Implementar lazy loading para imagens
- Utilizar cache local para dados frequentemente acessados
- Otimizar uploads de imagens (compressão client-side)
- Implementar validação tanto no cliente quanto no servidor
- Utilizar Supabase Storage para armazenamento de imagens
