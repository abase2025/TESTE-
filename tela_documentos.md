# Protótipo Detalhado: Módulo de Documentos

## Especificações Visuais

### Layout Geral
- **Resolução Base**: 1920x1080px (Desktop)
- **Fundo**: Cinza muito claro (#F2F2F2)
- **Estrutura**: Layout com menu lateral fixo à esquerda (igual ao Dashboard) e área de conteúdo principal à direita

### Área de Conteúdo Principal
- **Padding**: 32px
- **Espaçamento entre seções**: 32px

#### Cabeçalho da Página
- **Título "Documentos"**:
  - Fonte: Montserrat Bold
  - Tamanho: 28px
  - Cor: Preto Elegante (#333333)
- **Subtítulo**:
  - Fonte: Inter Regular
  - Tamanho: 16px
  - Cor: Cinza médio (#6B7280)
  - Texto: "Gerencie os documentos da sua frota"

#### Layout Principal
- **Estrutura**: Layout de duas colunas com proporção 25%/75%
- **Gap**: 24px

### Coluna Esquerda (Filtros e Categorias)
- **Container**:
  - Cor de Fundo: Branco (#FFFFFF)
  - Sombra: 0px 4px 12px rgba(0, 0, 0, 0.05)
  - Borda: Raio de 12px
  - Padding: 24px
  - Altura: Ajustável ao conteúdo (min-height: 600px)

#### Seção de Filtros
- **Título "Filtros"**:
  - Fonte: Inter SemiBold
  - Tamanho: 16px
  - Cor: Preto Elegante (#333333)
  - Margin-bottom: 16px

- **Campo de Busca**:
  - Largura: 100%
  - Altura: 40px
  - Cor de Fundo: Cinza muito claro (#F5F7F9)
  - Borda: 1px sólido (#E0E4E8), raio de 6px
  - Ícone: Lupa, 16x16px, cor cinza médio (#6B7280)
  - Placeholder: "Buscar documentos..."
  - Fonte: Inter Regular, 14px
  - Margin-bottom: 16px

- **Dropdown "Status"**:
  - Largura: 100%
  - Altura: 40px
  - Cor de Fundo: Branco (#FFFFFF)
  - Borda: 1px sólido (#E0E4E8), raio de 6px
  - Texto: "Todos os Status"
  - Fonte: Inter Medium, 14px
  - Ícone: Seta para baixo, 16x16px
  - Opções: "Todos", "Válidos", "Próximos do Vencimento", "Vencidos"
  - Margin-bottom: 16px

- **Dropdown "Veículo"**:
  - Especificações visuais idênticas ao dropdown "Status"
  - Texto: "Todos os Veículos"
  - Margin-bottom: 16px

- **Dropdown "Motorista"**:
  - Especificações visuais idênticas ao dropdown "Status"
  - Texto: "Todos os Motoristas"
  - Margin-bottom: 16px

- **Seletor de Período de Vencimento**:
  - Título: "Período de Vencimento"
  - Fonte: Inter Medium, 14px
  - Cor: Cinza escuro (#4B5563)
  - Margin-bottom: 8px
  - Campos de Data (De - Até):
    - Largura: 100%
    - Altura: 40px
    - Cor de Fundo: Branco (#FFFFFF)
    - Borda: 1px sólido (#E0E4E8), raio de 6px
    - Ícone: Calendário, 16x16px
    - Fonte: Inter Regular, 14px
    - Margin-bottom: 8px

- **Botão "Aplicar Filtros"**:
  - Largura: 100%
  - Altura: 40px
  - Cor de Fundo: Azul Confiança (#1A5F7A)
  - Cor de Texto: Branco (#FFFFFF)
  - Fonte: Inter SemiBold, 14px
  - Borda: Raio de 6px
  - Estado Hover: Azul ligeiramente mais escuro (#164B61)
  - Margin-top: 16px

- **Botão "Limpar Filtros"**:
  - Largura: 100%
  - Altura: 40px
  - Cor de Fundo: Branco (#FFFFFF)
  - Cor de Texto: Cinza escuro (#4B5563)
  - Fonte: Inter Medium, 14px
  - Borda: 1px sólido (#D1D5DB), raio de 6px
  - Estado Hover: Cinza muito claro (#F5F7F9)
  - Margin-top: 8px

#### Seção de Categorias
- **Título "Categorias"**:
  - Fonte: Inter SemiBold
  - Tamanho: 16px
  - Cor: Preto Elegante (#333333)
  - Margin: 24px 0 16px 0
  - Separador: Linha horizontal 1px (#E0E4E8) acima, padding-top 24px

- **Lista de Categorias**:
  - Layout: Lista vertical
  - Gap: 12px

##### Cada Categoria
- **Container**:
  - Altura: 40px
  - Padding: 0 12px
  - Borda: Raio de 6px
  - Estado Normal: Cor de Fundo Branco (#FFFFFF)
  - Estado Ativo: Cor de Fundo Azul muito claro (#F0F7FA), borda esquerda 4px Azul Confiança (#1A5F7A)
  - Estado Hover: Cor de Fundo Cinza muito claro (#F5F7F9)

- **Conteúdo**:
  - Layout: Flexbox com space-between
  - Ícone: 20x20px, cor contextual conforme categoria
  - Texto:
    - Fonte: Inter Medium, 14px
    - Cor: Preto Elegante (#333333)
  - Contador:
    - Container: Círculo ou pílula
    - Largura: Ajustável ao conteúdo (min-width: 24px)
    - Altura: 24px
    - Cor de Fundo: Cinza claro (#E0E4E8)
    - Cor de Texto: Cinza escuro (#4B5563)
    - Fonte: Inter Medium, 12px
    - Alinhamento: Centro

##### Lista de Categorias Padrão
1. **Todos os Documentos** (ícone de documento)
2. **CRLV** (ícone de documento oficial)
3. **Seguro** (ícone de escudo)
4. **Revisão** (ícone de ferramenta)
5. **CNH** (ícone de carteira)
6. **Contrato** (ícone de assinatura)
7. **Outros** (ícone de mais)

### Coluna Direita (Visualização de Documentos)
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
- **Título da Visualização**:
  - Texto: "Todos os Documentos" (ou categoria selecionada)
  - Fonte: Inter SemiBold, 18px
  - Cor: Preto Elegante (#333333)

- **Contador**:
  - Texto: "24 documentos"
  - Fonte: Inter Regular, 14px
  - Cor: Cinza médio (#6B7280)

##### Lado Direito
- **Botão "Adicionar Documento"**:
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
  - Margin-left: 16px

#### Visualização em Grid (Padrão)
- **Layout**: Grid responsivo
  - Desktop grande: 4 colunas
  - Desktop médio: 3 colunas
  - Tablet: 2 colunas
  - Mobile: 1 coluna
- **Gap**: 24px

##### Card de Documento
- **Dimensões**: Largura flexível (1/4 do espaço disponível - 24px de gap), altura 280px
- **Cor de Fundo**: Branco (#FFFFFF)
- **Sombra**: 0px 4px 12px rgba(0, 0, 0, 0.05)
- **Borda**: Raio de 12px
- **Overflow**: Hidden

###### Cabeçalho do Card
- **Altura**: 40px
- **Padding**: 0 16px
- **Cor de Fundo**: Contextual conforme tipo de documento
  - CRLV: Azul (#1A5F7A)
  - Seguro: Verde (#57C5B6)
  - Revisão: Âmbar (#FFA000)
  - CNH: Roxo (#7E57C2)
  - Contrato: Cinza escuro (#4B5563)
  - Outros: Cinza médio (#6B7280)
- **Texto**: Nome do tipo de documento
  - Fonte: Inter SemiBold, 14px
  - Cor: Branco (#FFFFFF)
- **Ícone**: Contextual conforme tipo, 20x20px, cor branca
- **Alinhamento**: Flexbox com space-between, itens centralizados

###### Miniatura do Documento
- **Altura**: 140px
- **Largura**: 100%
- **Cor de Fundo**: Cinza muito claro (#F5F7F9)
- **Objeto**: object-fit cover
- **Ícone** (se não houver preview):
  - Tamanho: 48x48px
  - Cor: Cinza médio (#6B7280)
  - Tipo: Contextual conforme formato (PDF, imagem, etc.)

###### Conteúdo do Card
- **Padding**: 16px

- **Nome do Documento**:
  - Fonte: Inter SemiBold, 16px
  - Cor: Preto Elegante (#333333)
  - Linhas: Máximo 2, truncamento com elipses
  - Altura: 44px (fixo)

- **Informações Adicionais**:
  - Layout: Grid de 2 colunas
  - Margin-top: 8px
  
  - **Cada Item**:
    - Rótulo:
      - Fonte: Inter Regular, 12px
      - Cor: Cinza médio (#6B7280)
    - Valor:
      - Fonte: Inter Medium, 14px
      - Cor: Preto Elegante (#333333)
  
  - **Itens Incluídos**:
    - Relacionado a: (Veículo/Motorista)
    - Vencimento: (Data ou "Sem vencimento")

- **Indicador de Status**:
  - Posição: Parte inferior do card
  - Margin-top: 12px
  - Container: Pill shape
    - Padding: 4px 12px
    - Borda: Raio de 16px
    - Largura: Ajustável ao conteúdo
  - Fonte: Inter Medium, 12px
  - Variações:
    - Válido: Fundo verde claro (#E6F6F4), texto verde (#57C5B6)
    - Próximo do Vencimento: Fundo âmbar claro (#FFF4E5), texto âmbar (#FFA000)
    - Vencido: Fundo vermelho claro (#FEECEB), texto vermelho (#E53935)

#### Visualização em Tabela (Alternativa)
- **Container**:
  - Overflow: Auto para permitir rolagem horizontal em telas menores

##### Cabeçalho da Tabela
- **Altura**: 56px
- **Cor de Fundo**: Cinza muito claro (#F5F7F9)
- **Fonte**: Inter SemiBold, 14px
- **Cor de Texto**: Cinza escuro (#4B5563)
- **Alinhamento**: Esquerda (exceto colunas específicas)
- **Padding**: 0 24px
- **Separador**: Linha horizontal 1px (#E0E4E8) abaixo do cabeçalho
- **Ícones de Ordenação**: Setas pequenas (8x8px) indicando a direção da ordenação

##### Colunas da Tabela
1. **Checkbox** (seleção múltipla) - Largura: 48px
2. **Tipo** - Largura: 10%
3. **Nome** - Largura: 25%
4. **Relacionado a** - Largura: 15%
5. **Data de Emissão** - Largura: 12%
6. **Data de Vencimento** - Largura: 12%
7. **Status** - Largura: 10%
8. **Ações** - Largura: 10%

##### Linhas da Tabela
- **Altura**: 72px
- **Cor de Fundo**: Branco (#FFFFFF)
- **Cor de Fundo (hover)**: Cinza muito claro (#F5F7F9)
- **Cor de Fundo (selecionado)**: Azul muito claro (#F0F7FA)
- **Separador**: Linha horizontal 1px (#E0E4E8) entre linhas
- **Padding**: 0 24px

###### Detalhes de cada coluna
- **Checkbox**:
  - Tamanho: 18x18px
  - Cor de Borda: Cinza (#D1D5DB)
  - Cor quando Selecionado: Azul Confiança (#1A5F7A)

- **Tipo**:
  - Ícone: 24x24px, cor contextual conforme tipo
  - Texto:
    - Fonte: Inter Medium, 14px
    - Cor: Preto Elegante (#333333)

- **Nome**:
  - Fonte: Inter Medium, 14px
  - Cor: Preto Elegante (#333333)
  - Truncamento: Elipses se muito longo

- **Relacionado a**:
  - Ícone: Carro ou Pessoa, 16x16px
  - Texto:
    - Fonte: Inter Regular, 14px
    - Cor: Preto Elegante (#333333)

- **Data de Emissão**:
  - Fonte: Inter Regular, 14px
  - Cor: Preto Elegante (#333333)
  - Formato: DD/MM/AAAA

- **Data de Vencimento**:
  - Fonte: Inter Regular, 14px
  - Cor: Contextual conforme proximidade
    - Normal: Preto Elegante (#333333)
    - Próximo: Âmbar (#FFA000)
    - Vencido: Vermelho (#E53935)
  - Formato: DD/MM/AAAA
  - Texto alternativo: "Sem vencimento" quando aplicável

- **Status**:
  - Container: Pill shape
    - Padding: 4px 12px
    - Borda: Raio de 16px
  - Fonte: Inter Medium, 14px
  - Variações: Iguais à visualização em grid

- **Ações**:
  - Ícones: 3 ícones de 20x20px
    - Visualizar (olho)
    - Download (seta para baixo)
    - Menu de opções (três pontos verticais)
  - Cor: Cinza médio (#6B7280)
  - Cor (hover): Azul Confiança (#1A5F7A)
  - Espaçamento entre ícones: 16px

##### Paginação
- **Container**:
  - Altura: 64px
  - Padding: 0 24px
  - Separador: Linha horizontal 1px (#E0E4E8) acima
  - Alinhamento: Espaço entre (justify-content: space-between)

- **Lado Esquerdo**:
  - Texto: "Mostrando 1-10 de 24 documentos"
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

## Modal: Adicionar/Editar Documento

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
  - Texto: "Adicionar Documento" ou "Editar Documento"
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

#### Seção de Upload de Documento
- **Largura**: 100% (span 2 colunas)
- **Altura**: 200px
- **Cor de Fundo**: Cinza muito claro (#F5F7F9)
- **Borda**: 2px tracejado (#D1D5DB), raio de 12px
- **Texto**:
  - Principal: "Arraste o documento aqui ou clique para fazer upload"
  - Secundário: "Formatos aceitos: PDF, JPG, PNG. Máximo 10MB."
  - Fonte Principal: Inter Medium, 16px
  - Fonte Secundária: Inter Regular, 14px
  - Cor Principal: Cinza escuro (#4B5563)
  - Cor Secundária: Cinza médio (#6B7280)
- **Ícone**: Upload, 48x48px, cor Azul Confiança (#1A5F7A)

- **Preview do Documento** (após upload):
  - Container: 160px x 200px
  - Borda: Raio de 8px
  - Miniatura: object-fit contain
  - Nome do Arquivo:
    - Fonte: Inter Regular, 14px
    - Cor: Preto Elegante (#333333)
    - Truncamento: Elipses se muito longo
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
1. **Tipo de Documento** (dropdown, obrigatório)
   - Opções: CRLV, Seguro, Revisão, CNH, Contrato, Outro
2. **Nome** (texto, obrigatório)
3. **Relacionado a** (dropdown, obrigatório)
   - Opções: Veículo, Motorista, Empresa
4. **Veículo/Motorista** (dropdown, condicional baseado no campo anterior)
5. **Data de Emissão** (seletor de data, obrigatório)
6. **Data de Vencimento** (seletor de data, opcional)
7. **Alerta de Vencimento** (dropdown, condicional se data de vencimento preenchida)
   - Opções: 1 dia antes, 3 dias antes, 7 dias antes, 15 dias antes, 30 dias antes
8. **Descrição** (textarea, opcional)
   - Altura: 100px
   - Largura: 100% (span 2 colunas)

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

## Modal: Visualizar Documento

### Estrutura Geral
- **Overlay**: Fundo escurecido (rgba(0, 0, 0, 0.5))
- **Modal**:
  - Largura: 900px
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
  - Tipo:
    - Container: Pill shape
    - Padding: 4px 12px
    - Cor: Contextual conforme tipo
    - Fonte: Inter Medium, 14px
  - Nome do Documento:
    - Fonte: Montserrat Bold, 20px
    - Cor: Preto Elegante (#333333)
- **Status**:
  - Especificações: Iguais aos pills de status na visualização em tabela/grid
  - Posição: Centro-direita
- **Botões de Ação**:
  - "Editar":
    - Cor de Fundo: Azul Confiança (#1A5F7A)
    - Cor de Texto: Branco (#FFFFFF)
  - "Download":
    - Cor de Fundo: Branco (#FFFFFF)
    - Cor de Texto: Azul Confiança (#1A5F7A)
    - Borda: 1px sólido (#1A5F7A)
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

### Conteúdo do Modal
- **Layout**: Grid com 2 colunas principais (70%/30%)
- **Gap**: 32px
- **Padding**: 32px

#### Coluna Esquerda (Visualizador de Documento)
- **Container**:
  - Cor de Fundo: Cinza muito claro (#F5F7F9)
  - Borda: Raio de 12px
  - Altura: 100% (calc(80vh - 136px))
  - Overflow: Auto

- **Visualizador de PDF/Imagem**:
  - Largura: 100%
  - Altura: 100%
  - Object-fit: Contain
  - Padding: 24px

- **Barra de Ferramentas do Visualizador**:
  - Posição: Parte inferior
  - Altura: 48px
  - Cor de Fundo: Branco (#FFFFFF)
  - Sombra: 0px -2px 8px rgba(0, 0, 0, 0.05)
  - Padding: 0 16px
  - Alinhamento: Espaço entre (justify-content: space-between)
  
  - **Controles de Zoom**:
    - Botões: Zoom In, Zoom Out, Ajustar à Tela
    - Tamanho: 32px x 32px
    - Ícones: 20x20px
    - Cor: Cinza médio (#6B7280)
    - Cor (hover): Azul Confiança (#1A5F7A)
  
  - **Navegação de Páginas** (para PDFs):
    - Texto: "Página X de Y"
    - Fonte: Inter Regular, 14px
    - Botões: Anterior, Próximo
    - Especificações dos botões: Iguais aos controles de zoom

#### Coluna Direita (Metadados)
- **Container**:
  - Cor de Fundo: Branco (#FFFFFF)
  - Sombra: 0px 4px 12px rgba(0, 0, 0, 0.05)
  - Borda: Raio de 12px
  - Padding: 24px
  - Altura: Ajustável ao conteúdo

- **Seção de Informações Básicas**:
  - Título:
    - Texto: "Informações do Documento"
    - Fonte: Inter SemiBold, 16px
    - Margin-bottom: 16px
  
  - **Lista de Informações**:
    - Layout: Lista vertical
    - Gap: 16px
    - Cada Item:
      - Rótulo:
        - Fonte: Inter Regular, 14px
        - Cor: Cinza médio (#6B7280)
      - Valor:
        - Fonte: Inter Medium, 16px
        - Cor: Preto Elegante (#333333)
    
    - **Itens Incluídos**:
      - Tipo de Documento
      - Relacionado a (com ícone contextual)
      - Data de Emissão
      - Data de Vencimento (com indicador visual se próximo/vencido)
      - Alerta de Vencimento
      - Adicionado por
      - Data de Upload

- **Seção de Descrição** (se houver):
  - Título:
    - Texto: "Descrição"
    - Fonte: Inter SemiBold, 16px
    - Margin: 24px 0 16px 0
  - Conteúdo:
    - Fonte: Inter Regular, 14px
    - Cor: Preto Elegante (#333333)

- **Seção de Histórico de Versões** (se houver versões anteriores):
  - Título:
    - Texto: "Histórico de Versões"
    - Fonte: Inter SemiBold, 16px
    - Margin: 24px 0 16px 0
  
  - **Lista de Versões**:
    - Layout: Lista vertical
    - Gap: 12px
    - Cada Item:
      - Data:
        - Fonte: Inter Medium, 14px
        - Cor: Preto Elegante (#333333)
      - Usuário:
        - Fonte: Inter Regular, 14px
        - Cor: Cinza médio (#6B7280)
      - Botão "Ver":
        - Tamanho: Pequeno (24px altura)
        - Cor: Azul Confiança (#1A5F7A)
        - Tipo: Link ou botão texto

## Comportamentos e Interações

### Filtros e Categorias
- Filtros aplicados imediatamente ao selecionar/alterar
- Categorias funcionam como filtros rápidos
- Contador em cada categoria atualiza conforme filtros aplicados
- Múltiplos filtros podem ser combinados

### Visualização em Grid
- Hover eleva sutilmente o card
- Clique em qualquer área do card abre o modal de visualização
- Cards organizam-se automaticamente conforme largura disponível

### Visualização em Tabela
- Ordenação ao clicar nos cabeçalhos das colunas
- Seleção de múltiplas linhas via checkboxes
- Ações em lote disponíveis quando múltiplos itens selecionados
- Hover em linha destaca toda a linha

### Modal de Upload/Edição
- Drag-and-drop para upload de arquivos
- Preview automático do documento após upload
- Validação em tempo real dos campos
- Campos condicionais aparecem/desaparecem conforme seleções

### Modal de Visualização
- Zoom e navegação no documento
- Download com um clique
- Navegação entre páginas para documentos PDF
- Rotação de imagem quando necessário

## Responsividade (Adaptação para Telas Menores)
- **Breakpoint 1366px**:
  - Grid de documentos passa para 3 colunas
  - Modal de visualização reduz para 90% da largura

- **Breakpoint 1024px**:
  - Grid de documentos passa para 2 colunas
  - Layout do módulo muda para coluna única (filtros acima, conteúdo abaixo)
  - Modal de visualização muda layout para uma coluna (visualizador acima, metadados abaixo)

- **Breakpoint 768px**:
  - Grid de documentos passa para 1 coluna
  - Filtros se transformam em drawer expansível
  - Modal ocupa tela inteira

## Acessibilidade
- Todos os elementos interativos acessíveis por teclado
- Ordem de tabulação lógica
- Rótulos ARIA para elementos complexos
- Mensagens de erro anunciadas por leitores de tela
- Contraste adequado para texto e elementos visuais

## Observações Técnicas
- Implementar visualizador de PDF nativo para documentos PDF
- Utilizar compressão de imagens para uploads
- Implementar cache local para documentos frequentemente acessados
- Utilizar Supabase Storage para armazenamento de documentos
- Configurar políticas de segurança para acesso aos documentos
