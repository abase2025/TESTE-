# Protótipo Detalhado: Módulo de Multas

## Especificações Visuais

### Layout Geral
- **Resolução Base**: 1920x1080px (Desktop)
- **Fundo**: Cinza muito claro (#F2F2F2)
- **Estrutura**: Layout com menu lateral fixo à esquerda (igual ao Dashboard) e área de conteúdo principal à direita

### Área de Conteúdo Principal
- **Padding**: 32px
- **Espaçamento entre seções**: 32px

#### Cabeçalho da Página
- **Título "Multas"**:
  - Fonte: Montserrat Bold
  - Tamanho: 28px
  - Cor: Preto Elegante (#333333)
- **Subtítulo**:
  - Fonte: Inter Regular
  - Tamanho: 16px
  - Cor: Cinza médio (#6B7280)
  - Texto: "Gerencie as infrações de trânsito da sua frota"

#### Painel de Resumo
- **Container**:
  - Cor de Fundo: Branco (#FFFFFF)
  - Sombra: 0px 4px 12px rgba(0, 0, 0, 0.05)
  - Borda: Raio de 12px
  - Padding: 24px
  - Margin-bottom: 24px

- **Layout**: Grid de 4 cards em linha
- **Gap**: 24px

##### Cards de Resumo
- **Dimensões**: Largura igual (1/4 do espaço disponível - 24px de gap), altura 100px
- **Cor de Fundo**: Branco (#FFFFFF)
- **Borda**: 1px sólido (#E0E4E8), raio de 8px
- **Padding**: 16px

###### Card 1: Total de Multas
- **Ícone**: Exclamação em círculo, 32x32px, cor Vermelho (#E53935)
- **Valor**: 
  - Fonte: Montserrat Bold
  - Tamanho: 28px
  - Cor: Preto Elegante (#333333)
- **Rótulo**: "Total de Multas"
  - Fonte: Inter Regular
  - Tamanho: 14px
  - Cor: Cinza médio (#6B7280)

###### Card 2: Valor Total
- **Ícone**: Cifrão, 32x32px, cor Vermelho (#E53935)
- **Valor**: 
  - Fonte: Montserrat Bold
  - Tamanho: 28px
  - Cor: Preto Elegante (#333333)
  - Formato: R$ X.XXX,XX
- **Rótulo**: "Valor Total"
  - Fonte: Inter Regular
  - Tamanho: 14px
  - Cor: Cinza médio (#6B7280)

###### Card 3: Multas Pendentes
- **Ícone**: Relógio, 32x32px, cor Âmbar (#FFA000)
- **Valor**: Similar ao Card 1
- **Rótulo**: "Multas Pendentes"

###### Card 4: Multas Pagas
- **Ícone**: Verificação em círculo, 32x32px, cor Verde Sucesso (#57C5B6)
- **Valor**: Similar ao Card 1
- **Rótulo**: "Multas Pagas"

#### Barra de Ações e Filtros
- **Altura**: 64px
- **Cor de Fundo**: Branco (#FFFFFF)
- **Sombra**: 0px 2px 8px rgba(0, 0, 0, 0.05)
- **Borda**: Raio de 12px
- **Padding**: 0 24px
- **Margem inferior**: 24px

##### Lado Esquerdo (Filtros)
- **Dropdown "Veículo"**:
  - Largura: 180px
  - Altura: 40px
  - Cor de Fundo: Branco (#FFFFFF)
  - Borda: 1px sólido (#E0E4E8), raio de 6px
  - Texto: "Todos os Veículos"
  - Fonte: Inter Medium, 14px
  - Ícone: Seta para baixo, 16x16px

- **Dropdown "Status"**:
  - Especificações visuais idênticas ao dropdown "Veículo"
  - Texto: "Todos os Status"
  - Opções: "Todos", "Pendente", "Em Recurso", "Paga", "Cancelada"

- **Dropdown "Responsável"**:
  - Especificações visuais idênticas aos dropdowns anteriores
  - Texto: "Todos os Responsáveis"
  - Opções: "Todos", "Proprietário", "Motorista"

- **Campo de Busca**:
  - Largura: 240px
  - Altura: 40px
  - Cor de Fundo: Cinza muito claro (#F5F7F9)
  - Borda: 1px sólido (#E0E4E8), raio de 6px
  - Ícone: Lupa, 16x16px, cor cinza médio (#6B7280)
  - Placeholder: "Buscar por local, veículo..."
  - Fonte: Inter Regular, 14px

##### Lado Direito (Ações)
- **Botão "Registrar Multa"**:
  - Altura: 40px
  - Padding: 0 20px
  - Cor de Fundo: Azul Confiança (#1A5F7A)
  - Cor de Texto: Branco (#FFFFFF)
  - Fonte: Inter SemiBold, 14px
  - Ícone: "+", 16x16px, à esquerda do texto
  - Borda: Raio de 6px
  - Estado Hover: Azul ligeiramente mais escuro (#164B61)

### Visualização de Multas
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
2. **Data da Infração** - Largura: 12%
3. **Veículo** (com placa) - Largura: 15%
4. **Local** - Largura: 20%
5. **Valor** - Largura: 10%
6. **Pontuação** - Largura: 8%
7. **Responsável** - Largura: 12%
8. **Status** - Largura: 10%
9. **Data Limite** - Largura: 10%
10. **Ações** - Largura: 8%

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

- **Data da Infração**:
  - Data:
    - Fonte: Inter Medium, 14px
    - Cor: Preto Elegante (#333333)
  - Hora:
    - Fonte: Inter Regular, 14px
    - Cor: Cinza médio (#6B7280)

- **Veículo**:
  - Placa:
    - Fonte: Inter SemiBold, 14px
    - Cor: Preto Elegante (#333333)
    - Formato: Destacado em um container retangular
      - Cor de Fundo: Cinza muito claro (#F5F7F9)
      - Padding: 4px 8px
      - Borda: Raio de 4px
  - Modelo:
    - Fonte: Inter Regular, 14px
    - Cor: Cinza médio (#6B7280)

- **Local**:
  - Fonte: Inter Regular, 14px
  - Cor: Preto Elegante (#333333)
  - Truncamento: Elipses se muito longo

- **Valor**:
  - Fonte: Inter Medium, 14px
  - Cor: Preto Elegante (#333333)
  - Alinhamento: Direita
  - Formato: R$ X.XXX,XX

- **Pontuação**:
  - Container: Círculo
    - Diâmetro: 28px
    - Cor de Fundo: Contextual baseada no valor
      - 1-3 pontos: Verde claro (#E6F6F4)
      - 4-5 pontos: Âmbar claro (#FFF4E5)
      - 6-7 pontos: Laranja claro (#FFEDE5)
      - 8+ pontos: Vermelho claro (#FEECEB)
  - Texto:
    - Fonte: Inter SemiBold, 14px
    - Cor: Contextual (mesma lógica do fundo, mas cores mais escuras)
    - Alinhamento: Centro

- **Responsável**:
  - Texto:
    - Fonte: Inter Regular, 14px
    - Cor: Preto Elegante (#333333)
  - Valores: "Proprietário" ou "Motorista"
  - Ícone: Pessoa ou carro, 16x16px, à esquerda do texto

- **Status**:
  - Container: Pill shape
    - Padding: 4px 12px
    - Borda: Raio de 16px
  - Fonte: Inter Medium, 14px
  - Variações:
    - Pendente: Fundo âmbar claro (#FFF4E5), texto âmbar (#FFA000)
    - Em Recurso: Fundo azul claro (#E6F0F5), texto azul (#1A5F7A)
    - Paga: Fundo verde claro (#E6F6F4), texto verde (#57C5B6)
    - Cancelada: Fundo cinza claro (#F2F2F2), texto cinza (#6B7280)

- **Data Limite**:
  - Data:
    - Fonte: Inter Medium, 14px
    - Cor: Contextual baseada na proximidade
      - Normal: Preto Elegante (#333333)
      - Próxima (< 7 dias): Âmbar (#FFA000)
      - Muito próxima (< 3 dias): Vermelho (#E53935)
      - Vencida: Vermelho (#E53935) com texto "Vencida"
  - Tipo:
    - Fonte: Inter Regular, 12px
    - Cor: Cinza médio (#6B7280)
    - Texto: "Pagamento" ou "Recurso"

- **Ações**:
  - Ícones: 2 ícones de 20x20px
    - Detalhes (olho)
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
  - Texto: "Mostrando 1-10 de 24 multas"
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

## Modal: Registrar/Editar Multa

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
  - Texto: "Registrar Multa" ou "Editar Multa"
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
1. **Veículo** (dropdown, obrigatório)
2. **Data da Infração** (seletor de data, obrigatório)
3. **Hora da Infração** (seletor de hora, obrigatório)
4. **Local da Infração** (texto, obrigatório)
5. **Tipo de Infração** (dropdown, obrigatório)
   - Opções: Lista de infrações comuns
6. **Valor da Multa** (numérico, obrigatório)
7. **Pontuação na CNH** (dropdown, obrigatório)
   - Opções: 0 a 10 pontos
8. **Data Limite para Pagamento com Desconto** (seletor de data, obrigatório)
9. **Data Limite para Recurso** (seletor de data, obrigatório)
10. **Responsável** (radio buttons, obrigatório)
    - Opções: "Proprietário" e "Motorista"
11. **Motorista** (dropdown, condicional se "Motorista" for selecionado como responsável)

#### Seção de Upload da Notificação
- **Largura**: 100% (span 2 colunas)
- **Margin-top**: 16px
- **Título**:
  - Texto: "Notificação da Multa (opcional)"
  - Fonte: Inter Medium, 14px
  - Cor: Cinza escuro (#4B5563)
  - Margin-bottom: 8px

- **Container de Upload**:
  - Altura: 160px
  - Cor de Fundo: Cinza muito claro (#F5F7F9)
  - Borda: 2px tracejado (#D1D5DB), raio de 12px
  - Texto:
    - Principal: "Arraste a notificação aqui ou clique para fazer upload"
    - Secundário: "Formatos aceitos: PDF, JPG, PNG. Máximo 5MB."
    - Fonte Principal: Inter Medium, 16px
    - Fonte Secundária: Inter Regular, 14px
    - Cor Principal: Cinza escuro (#4B5563)
    - Cor Secundária: Cinza médio (#6B7280)
  - Ícone: Upload, 48x48px, cor Azul Confiança (#1A5F7A)

- **Preview da Notificação** (após upload):
  - Container: 120px x 160px
  - Borda: Raio de 8px
  - Miniatura: object-fit contain
  - Nome do Arquivo:
    - Fonte: Inter Regular, 14px
    - Cor: Preto Elegante (#333333)
    - Truncamento: Elipses se muito longo
  - Botão de remover: "X" no canto superior direito

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

## Modal: Detalhes da Multa

### Estrutura Geral
- **Overlay**: Fundo escurecido (rgba(0, 0, 0, 0.5))
- **Modal**:
  - Largura: 900px
  - Altura: Auto (máximo 80% da viewport)
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
  - Data:
    - Fonte: Montserrat Bold, 20px
    - Cor: Preto Elegante (#333333)
  - Valor:
    - Fonte: Montserrat Bold, 20px
    - Cor: Vermelho (#E53935)
- **Status**:
  - Especificações: Iguais aos pills de status na visualização em tabela
  - Posição: Centro-direita
- **Botões de Ação** (contextuais baseados no status):
  - "Editar":
    - Cor de Fundo: Azul Confiança (#1A5F7A)
    - Cor de Texto: Branco (#FFFFFF)
  - "Registrar Pagamento" (se status for "Pendente"):
    - Cor de Fundo: Verde Sucesso (#57C5B6)
    - Cor de Texto: Branco (#FFFFFF)
  - "Registrar Recurso" (se status for "Pendente"):
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
- **Padding**: 32px
- **Layout**: Grid com 2 colunas principais (60%/40%)
- **Gap**: 32px

#### Coluna Esquerda
- **Seção de Informações da Infração**:
  - Título:
    - Texto: "Detalhes da Infração"
    - Fonte: Inter SemiBold, 18px
    - Margin-bottom: 16px
  - Container:
    - Cor de Fundo: Branco (#FFFFFF)
    - Sombra: 0px 4px 12px rgba(0, 0, 0, 0.05)
    - Borda: Raio de 12px
    - Padding: 24px
  
  - **Informações do Veículo**:
    - Layout: Flexbox com gap
    - Placa:
      - Fonte: Inter SemiBold, 16px
      - Formato: Container retangular similar à tabela
    - Modelo:
      - Fonte: Inter Regular, 14px
      - Cor: Cinza médio (#6B7280)
  
  - **Detalhes da Infração**:
    - Layout: Grid de 2 colunas
    - Margin-top: 16px
    - Cada Item:
      - Rótulo:
        - Fonte: Inter Regular, 14px
        - Cor: Cinza médio (#6B7280)
      - Valor:
        - Fonte: Inter Medium, 14px
        - Cor: Preto Elegante (#333333)
    - Itens: Data/Hora, Local, Tipo de Infração, Valor, Pontuação, Responsável

- **Seção de Mapa** (se houver coordenadas do local):
  - Título: Similar à seção anterior
  - Container: Similar à seção anterior
  - Margin-top: 24px
  
  - **Mapa Interativo**:
    - Altura: 240px
    - Largura: 100%
    - Marcador: Indicando local da infração
    - Controles: Zoom, tipo de mapa
    - Botão "Ver em Tela Cheia":
      - Posição: Canto superior direito
      - Ícone: Expandir, 16x16px
      - Cor: Azul Confiança (#1A5F7A)

- **Seção de Notificação** (se houver upload):
  - Título: Similar às seções anteriores
  - Container: Similar às seções anteriores
  - Margin-top: 24px
  
  - **Preview da Notificação**:
    - Altura: 240px
    - Largura: 100%
    - Object-fit: Contain
  
  - **Botões**:
    - "Visualizar em Tela Cheia":
      - Ícone: Expandir, 16x16px
      - Cor: Azul Confiança (#1A5F7A)
    - "Download":
      - Ícone: Download, 16x16px
      - Cor: Azul Confiança (#1A5F7A)

#### Coluna Direita
- **Seção de Prazos**:
  - Título:
    - Texto: "Prazos Importantes"
    - Fonte: Inter SemiBold, 18px
    - Margin-bottom: 16px
  - Container:
    - Cor de Fundo: Branco (#FFFFFF)
    - Sombra: 0px 4px 12px rgba(0, 0, 0, 0.05)
    - Borda: Raio de 12px
    - Padding: 24px
  
  - **Lista de Prazos**:
    - Layout: Lista vertical
    - Gap: 16px
    
    - **Cada Prazo**:
      - Título:
        - Fonte: Inter Medium, 16px
        - Cor: Preto Elegante (#333333)
      - Data:
        - Fonte: Inter SemiBold, 16px
        - Cor: Contextual baseada na proximidade
      - Indicador Visual:
        - Tipo: Barra de progresso horizontal
        - Altura: 6px
        - Cor de Fundo: Cinza claro (#E0E4E8)
        - Cor de Preenchimento: Contextual baseada na proximidade
        - Borda: Raio de 3px
      - Texto Adicional:
        - Fonte: Inter Regular, 14px
        - Cor: Cinza médio (#6B7280)
        - Texto: "X dias restantes" ou "Vencido há X dias"

- **Seção de Status**:
  - Título: Similar à seção anterior
  - Container: Similar à seção anterior
  - Margin-top: 24px
  
  - **Status Atual**:
    - Texto:
      - Fonte: Inter SemiBold, 16px
      - Cor: Contextual conforme status
    - Descrição:
      - Fonte: Inter Regular, 14px
      - Cor: Cinza médio (#6B7280)
  
  - **Histórico de Status** (se houver mudanças):
    - Título:
      - Texto: "Histórico"
      - Fonte: Inter Medium, 14px
      - Margin: 16px 0 8px 0
    - Layout: Lista vertical com timeline
    - Cada Item:
      - Indicador: Círculo, 12px diâmetro, cor contextual
      - Data:
        - Fonte: Inter Medium, 14px
        - Cor: Preto Elegante (#333333)
      - Status:
        - Fonte: Inter Regular, 14px
        - Cor: Contextual conforme status
      - Usuário:
        - Fonte: Inter Regular, 14px
        - Cor: Cinza médio (#6B7280)

- **Seção de Pagamento** (se status for "Paga"):
  - Título: Similar às seções anteriores
  - Container: Similar às seções anteriores
  - Margin-top: 24px
  
  - **Detalhes do Pagamento**:
    - Data:
      - Fonte: Inter Medium, 14px
      - Cor: Preto Elegante (#333333)
    - Valor:
      - Fonte: Inter SemiBold, 16px
      - Cor: Preto Elegante (#333333)
    - Método:
      - Fonte: Inter Regular, 14px
      - Cor: Cinza médio (#6B7280)
    - Comprovante (se houver):
      - Miniatura: 80x80px, borda raio 4px
      - Botão "Visualizar":
        - Fonte: Inter Medium, 14px
        - Cor: Azul Confiança (#1A5F7A)

- **Seção de Recurso** (se status for "Em Recurso"):
  - Título: Similar às seções anteriores
  - Container: Similar às seções anteriores
  - Margin-top: 24px
  
  - **Detalhes do Recurso**:
    - Data:
      - Fonte: Inter Medium, 14px
      - Cor: Preto Elegante (#333333)
    - Status do Recurso:
      - Fonte: Inter SemiBold, 16px
      - Cor: Contextual (azul para "Em Análise", verde para "Deferido", vermelho para "Indeferido")
    - Argumentos:
      - Fonte: Inter Regular, 14px
      - Cor: Preto Elegante (#333333)
    - Documentos (se houver):
      - Lista de links para documentos
      - Fonte: Inter Medium, 14px
      - Cor: Azul Confiança (#1A5F7A)

## Modal: Registrar Pagamento

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
  - Texto: "Registrar Pagamento"
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

#### Resumo da Multa
- **Container**:
  - Cor de Fundo: Cinza muito claro (#F5F7F9)
  - Borda: Raio de 8px
  - Padding: 16px
  - Margin-bottom: 24px

- **Informações**:
  - Layout: Grid de 2 colunas
  - Gap: 16px
  - Cada Item:
    - Rótulo:
      - Fonte: Inter Regular, 14px
      - Cor: Cinza médio (#6B7280)
    - Valor:
      - Fonte: Inter Medium, 14px
      - Cor: Preto Elegante (#333333)
  - Itens: Veículo, Data da Infração, Valor, Data Limite

#### Campos do Formulário
Cada campo segue o padrão geral de formulários:

1. **Data de Pagamento** (seletor de data, obrigatório)
2. **Valor Pago** (numérico, obrigatório)
   - Valor padrão: Igual ao valor da multa
3. **Método de Pagamento** (dropdown, obrigatório)
   - Opções: "Dinheiro", "PIX", "Transferência", "Cartão de Crédito", "Cartão de Débito", "Outro"
4. **Observações** (textarea, opcional)
   - Altura: 100px

#### Seção de Upload do Comprovante
- **Título**:
  - Texto: "Comprovante de Pagamento (opcional)"
  - Fonte: Inter Medium, 14px
  - Cor: Cinza escuro (#4B5563)
  - Margin-bottom: 8px

- **Container de Upload**:
  - Altura: 160px
  - Especificações: Iguais ao container de upload da notificação no modal de multa

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
- **Botão "Confirmar Pagamento"**:
  - Cor de Fundo: Verde Sucesso (#57C5B6)
  - Cor de Texto: Branco (#FFFFFF)
- **Especificações Comuns**:
  - Altura: 48px
  - Padding: 0 24px
  - Fonte: Inter SemiBold, 16px
  - Borda: Raio de 6px

## Modal: Registrar Recurso

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
  - Texto: "Registrar Recurso"
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

#### Resumo da Multa
- **Container**:
  - Cor de Fundo: Cinza muito claro (#F5F7F9)
  - Borda: Raio de 8px
  - Padding: 16px
  - Margin-bottom: 24px

- **Informações**:
  - Layout: Grid de 2 colunas
  - Gap: 16px
  - Cada Item:
    - Rótulo:
      - Fonte: Inter Regular, 14px
      - Cor: Cinza médio (#6B7280)
    - Valor:
      - Fonte: Inter Medium, 14px
      - Cor: Preto Elegante (#333333)
  - Itens: Veículo, Data da Infração, Valor, Data Limite para Recurso

#### Campos do Formulário
Cada campo segue o padrão geral de formulários:

1. **Data do Recurso** (seletor de data, obrigatório)
2. **Motivo do Recurso** (dropdown, obrigatório)
   - Opções: "Condutor não identificado", "Erro na autuação", "Veículo vendido", "Outro"
3. **Argumentação** (textarea, obrigatório)
   - Altura: 160px
   - Placeholder: "Descreva detalhadamente os argumentos para o recurso..."

#### Seção de Upload de Documentos
- **Título**:
  - Texto: "Documentos de Suporte (opcional)"
  - Fonte: Inter Medium, 14px
  - Cor: Cinza escuro (#4B5563)
  - Margin-bottom: 8px

- **Container de Upload**:
  - Altura: 160px
  - Especificações: Iguais ao container de upload da notificação no modal de multa
  - Texto Adicional: "Você pode adicionar múltiplos documentos"

- **Lista de Documentos** (após upload):
  - Layout: Lista vertical
  - Cada Item:
    - Ícone: Tipo de arquivo, 20x20px
    - Nome:
      - Fonte: Inter Regular, 14px
      - Cor: Preto Elegante (#333333)
    - Tamanho:
      - Fonte: Inter Regular, 12px
      - Cor: Cinza médio (#6B7280)
    - Botão Remover: "X", 16x16px

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
- **Botão "Enviar Recurso"**:
  - Cor de Fundo: Azul Confiança (#1A5F7A)
  - Cor de Texto: Branco (#FFFFFF)
- **Especificações Comuns**:
  - Altura: 48px
  - Padding: 0 24px
  - Fonte: Inter SemiBold, 16px
  - Borda: Raio de 6px

## Comportamentos e Interações

### Tabela de Multas
- Ordenação ao clicar nos cabeçalhos das colunas
- Seleção de múltiplas linhas via checkboxes
- Ações em lote disponíveis quando múltiplos itens selecionados
- Hover em linha destaca toda a linha
- Menu de contexto ao clicar no ícone de três pontos

### Cards de Resumo
- Valores atualizados automaticamente ao aplicar filtros
- Hover com efeito sutil de elevação
- Clicável, aplica filtro correspondente (ex: clicar em "Multas Pendentes" filtra por status pendente)

### Modal de Registro/Edição
- Validação em tempo real dos campos
- Upload de notificação com preview
- Cálculo automático de datas limite baseado no tipo de infração
- Confirmação antes de descartar alterações não salvas

### Modal de Detalhes
- Mapa interativo com marcador no local da infração
- Visualizador de notificação com zoom
- Ações contextuais baseadas no status atual
- Histórico de alterações visível

### Modais de Pagamento e Recurso
- Validação em tempo real dos campos
- Upload de documentos com preview
- Confirmação antes de finalizar ação
- Feedback visual após conclusão bem-sucedida

## Responsividade (Adaptação para Telas Menores)
- **Breakpoint 1366px**:
  - Cards de resumo em grid 2x2
  - Modal de detalhes reduz para 90% da largura
  - Algumas colunas menos importantes da tabela são ocultadas

- **Breakpoint 1024px**:
  - Cards de resumo empilhados (um abaixo do outro)
  - Modal de detalhes muda layout para uma coluna
  - Tabela com scroll horizontal

- **Breakpoint 768px**:
  - Barra de filtros empilha verticalmente
  - Modal ocupa tela inteira
  - Alternância automática para visualização em cards em vez de tabela

## Acessibilidade
- Todos os elementos interativos acessíveis por teclado
- Ordem de tabulação lógica
- Rótulos ARIA para elementos complexos
- Mensagens de erro anunciadas por leitores de tela
- Contraste adequado para texto e elementos visuais

## Observações Técnicas
- Implementar integração com API de mapas para localização de infrações
- Utilizar Supabase Storage para armazenamento de notificações e comprovantes
- Implementar validação tanto no cliente quanto no servidor
- Configurar notificações automáticas para prazos próximos do vencimento
- Implementar exportação de relatórios de multas em PDF
