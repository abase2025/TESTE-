# Protótipo Detalhado: Módulo de Vistorias

## Especificações Visuais

### Layout Geral
- **Resolução Base**: 1920x1080px (Desktop)
- **Fundo**: Cinza muito claro (#F2F2F2)
- **Estrutura**: Layout com menu lateral fixo à esquerda (igual ao Dashboard) e área de conteúdo principal à direita

### Área de Conteúdo Principal
- **Padding**: 32px
- **Espaçamento entre seções**: 32px

#### Cabeçalho da Página
- **Título "Vistorias"**:
  - Fonte: Montserrat Bold
  - Tamanho: 28px
  - Cor: Preto Elegante (#333333)
- **Subtítulo**:
  - Fonte: Inter Regular
  - Tamanho: 16px
  - Cor: Cinza médio (#6B7280)
  - Texto: "Gerencie as vistorias da sua frota"

#### Barra de Ações e Filtros
- **Altura**: 64px
- **Cor de Fundo**: Branco (#FFFFFF)
- **Sombra**: 0px 2px 8px rgba(0, 0, 0, 0.05)
- **Borda**: Raio de 12px
- **Padding**: 0 24px
- **Margem inferior**: 24px

##### Lado Esquerdo (Filtros)
- **Dropdown "Veículo"**:
  - Largura: 200px
  - Altura: 40px
  - Cor de Fundo: Branco (#FFFFFF)
  - Borda: 1px sólido (#E0E4E8), raio de 6px
  - Texto: "Todos os Veículos"
  - Fonte: Inter Medium, 14px
  - Ícone: Seta para baixo, 16x16px

- **Dropdown "Status"**:
  - Especificações visuais idênticas ao dropdown "Veículo"
  - Texto: "Todos os Status"
  - Opções: "Todos", "Pendente", "Realizada", "Aprovada", "Rejeitada"

- **Dropdown "Período"**:
  - Especificações visuais idênticas aos dropdowns anteriores
  - Texto: "Últimos 30 dias"
  - Opções: "Últimos 7 dias", "Últimos 30 dias", "Últimos 90 dias", "Este ano", "Personalizado"

##### Lado Direito (Ações)
- **Botão "Nova Vistoria"**:
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
  - Ícones: Lista (tabela) e Calendário, 20x20px
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
2. **Data e Hora** - Largura: 15%
3. **Veículo** (com miniatura) - Largura: 20%
4. **Tipo** - Largura: 10%
5. **Realizada Por** - Largura: 15%
6. **Quilometragem** - Largura: 10%
7. **Status** - Largura: 10%
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

- **Data e Hora**:
  - Data:
    - Fonte: Inter Medium, 14px
    - Cor: Preto Elegante (#333333)
  - Hora:
    - Fonte: Inter Regular, 14px
    - Cor: Cinza médio (#6B7280)

- **Veículo**:
  - Miniatura: 48x48px, borda raio 6px
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

- **Tipo**:
  - Fonte: Inter Regular, 14px
  - Cor: Preto Elegante (#333333)
  - Valores: "Inicial", "Periódica", "Final"

- **Realizada Por**:
  - Foto: Circular, 32px de diâmetro
  - Nome:
    - Fonte: Inter Medium, 14px
    - Cor: Preto Elegante (#333333)
  - Função:
    - Fonte: Inter Regular, 12px
    - Cor: Cinza médio (#6B7280)
    - Valores: "Proprietário" ou "Motorista"

- **Quilometragem**:
  - Fonte: Inter Regular, 14px
  - Cor: Preto Elegante (#333333)
  - Alinhamento: Direita
  - Formato: Com separador de milhares e "km" após o número

- **Status**:
  - Container: Pill shape
    - Padding: 4px 12px
    - Borda: Raio de 16px
  - Fonte: Inter Medium, 14px
  - Variações:
    - Pendente: Fundo âmbar claro (#FFF4E5), texto âmbar (#FFA000)
    - Realizada: Fundo azul claro (#E6F0F5), texto azul (#1A5F7A)
    - Aprovada: Fundo verde claro (#E6F6F4), texto verde (#57C5B6)
    - Rejeitada: Fundo vermelho claro (#FEECEB), texto vermelho (#E53935)

- **Ações**:
  - Ícones: 3 ícones de 20x20px
    - Visualizar (olho)
    - Aprovar/Rejeitar (verificação/x) - contextual baseado no status
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
  - Texto: "Mostrando 1-10 de 24 vistorias"
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

### Visualização em Calendário (Alternativa)
- **Container**:
  - Cor de Fundo: Branco (#FFFFFF)
  - Sombra: 0px 4px 12px rgba(0, 0, 0, 0.05)
  - Borda: Raio de 12px
  - Padding: 24px

#### Cabeçalho do Calendário
- **Altura**: 56px
- **Margin-bottom**: 16px
- **Alinhamento**: Espaço entre (justify-content: space-between)

- **Navegação de Mês**:
  - Mês e Ano Atual:
    - Fonte: Montserrat Bold, 18px
    - Cor: Preto Elegante (#333333)
  - Botões de Navegação:
    - Anterior e Próximo
    - Altura: 40px
    - Largura: 40px
    - Borda: 1px sólido (#E0E4E8), raio de 6px
    - Ícones: Setas, 16x16px

- **Seletores de Visualização**:
  - Tipo: Botões segmentados
  - Opções: "Mês", "Semana", "Dia"
  - Altura: 40px
  - Cor de Fundo (inativo): Branco (#FFFFFF)
  - Cor de Fundo (ativo): Azul Confiança (#1A5F7A)
  - Cor de Texto (inativo): Cinza escuro (#4B5563)
  - Cor de Texto (ativo): Branco (#FFFFFF)
  - Borda: 1px sólido (#E0E4E8)
  - Fonte: Inter Medium, 14px

#### Grade do Calendário (Visualização Mensal)
- **Cabeçalho dos Dias da Semana**:
  - Altura: 40px
  - Cor de Fundo: Cinza muito claro (#F5F7F9)
  - Fonte: Inter SemiBold, 14px
  - Cor: Cinza escuro (#4B5563)
  - Alinhamento: Centro

- **Células dos Dias**:
  - Altura: 120px
  - Borda: 1px sólido (#E0E4E8)
  - Padding: 8px
  
  - **Número do Dia**:
    - Fonte: Inter Medium, 14px
    - Cor: Preto Elegante (#333333)
    - Posição: Topo esquerdo
  
  - **Dia Atual**:
    - Indicador: Círculo preenchido Azul Confiança (#1A5F7A)
    - Cor do Número: Branco (#FFFFFF)
  
  - **Dias de Outro Mês**:
    - Cor de Fundo: Cinza muito claro (#F5F7F9)
    - Cor do Número: Cinza médio (#6B7280)

- **Eventos de Vistoria**:
  - Container:
    - Altura: 24px
    - Cor de Fundo: Varia conforme status (mesmas cores dos pills de status)
    - Borda: Raio de 4px
    - Margin-bottom: 4px
    - Truncamento: Texto truncado com elipses se muito longo
  
  - **Conteúdo**:
    - Fonte: Inter Regular, 12px
    - Cor: Varia conforme status (texto branco ou escuro para contraste)
    - Padding: 4px 8px
    - Texto: Placa do veículo + hora

## Modal: Nova Vistoria

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
  - Texto: "Nova Vistoria"
  - Fonte: Montserrat Bold, 20px
  - Cor: Preto Elegante (#333333)
- **Botão Fechar**:
  - Ícone: "X", 24x24px
  - Cor: Cinza médio (#6B7280)
  - Posição: Extrema direita

### Navegação por Etapas
- **Altura**: 80px
- **Padding**: 0 32px
- **Separador**: Linha horizontal 1px (#E0E4E8) abaixo
- **Indicador de Progresso**:
  - Tipo: Stepper horizontal
  - Etapas:
    1. Informações Básicas
    2. Avaliação de Componentes
    3. Registro Fotográfico
    4. Observações Finais
    5. Confirmação
  
  - **Cada Etapa**:
    - Círculo Numerado:
      - Diâmetro: 32px
      - Estado Completo: Fundo Azul Confiança (#1A5F7A), ícone de verificação branco
      - Estado Atual: Borda 2px Azul Confiança (#1A5F7A), número azul
      - Estado Pendente: Borda 1px Cinza (#D1D5DB), número cinza
    
    - Texto da Etapa:
      - Fonte: Inter Medium, 14px
      - Estado Completo/Atual: Cor Azul Confiança (#1A5F7A)
      - Estado Pendente: Cor Cinza médio (#6B7280)
    
    - Linha Conectora:
      - Altura: 2px
      - Estado Completo: Cor Azul Confiança (#1A5F7A)
      - Estado Pendente: Cor Cinza claro (#E0E4E8)

### Conteúdo do Modal (Etapa 1: Informações Básicas)
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

##### Lista de Campos (Etapa 1)
1. **Veículo** (dropdown, obrigatório) - Largura: 100% (span 2 colunas)
2. **Data da Vistoria** (seletor de data, obrigatório)
3. **Hora da Vistoria** (seletor de hora, obrigatório)
4. **Quilometragem Atual** (numérico, obrigatório)
5. **Nível de Combustível** (slider visual, obrigatório)
   - Valores: Vazio, 1/4, 1/2, 3/4, Cheio
   - Representação: Ícone de tanque com preenchimento visual
6. **Tipo de Vistoria** (radio buttons, obrigatório)
   - Opções: Inicial, Periódica, Final

### Conteúdo do Modal (Etapa 2: Avaliação de Componentes)
- **Padding**: 32px

#### Checklist de Componentes
- **Título da Seção**:
  - Texto: "Avalie o estado dos componentes"
  - Fonte: Inter SemiBold, 16px
  - Margin-bottom: 24px

- **Lista de Componentes**:
  - Layout: Grid de 1 coluna
  - Gap: 24px

##### Cada Item do Checklist
- **Cabeçalho do Item**:
  - Nome do Componente:
    - Fonte: Inter Medium, 16px
    - Cor: Preto Elegante (#333333)
  - Avaliação (escala de 1 a 5):
    - Tipo: Rating stars ou círculos numerados
    - Tamanho: 32px de largura cada
    - Estado Selecionado: Preenchido com cor contextual
      - 1-2: Vermelho (#E53935)
      - 3: Âmbar (#FFA000)
      - 4-5: Verde (#57C5B6)
    - Estado Não Selecionado: Contorno cinza (#D1D5DB)

- **Campo de Observações**:
  - Altura: 80px
  - Tipo: Textarea
  - Placeholder: "Observações sobre este componente..."
  - Outras especificações: Iguais aos campos de entrada padrão

##### Lista de Componentes a Avaliar
1. **Pneus**
2. **Freios**
3. **Suspensão**
4. **Lataria**
5. **Interior**
6. **Luzes**
7. **Motor**
8. **Sistema Elétrico**

### Conteúdo do Modal (Etapa 3: Registro Fotográfico)
- **Padding**: 32px

#### Seção de Upload de Fotos
- **Título da Seção**:
  - Texto: "Adicione fotos do veículo"
  - Fonte: Inter SemiBold, 16px
  - Margin-bottom: 24px

- **Grid de Ângulos**:
  - Layout: Grid de 2 colunas
  - Gap: 24px

##### Cada Ângulo de Foto
- **Container**:
  - Altura: 200px
  - Cor de Fundo: Cinza muito claro (#F5F7F9)
  - Borda: 2px tracejado (#D1D5DB), raio de 12px
  - Estado com Foto: Borda sólida, imagem de fundo

- **Rótulo**:
  - Texto: "Frente", "Traseira", "Lateral Esquerda", "Lateral Direita"
  - Fonte: Inter Medium, 14px
  - Cor: Cinza escuro (#4B5563)
  - Posição: Topo esquerdo, padding 12px

- **Conteúdo** (sem foto):
  - Ícone: Câmera ou Upload, 48x48px, cor Azul Confiança (#1A5F7A)
  - Texto: "Clique para adicionar foto"
  - Fonte: Inter Regular, 14px
  - Cor: Cinza médio (#6B7280)
  - Alinhamento: Centro

- **Conteúdo** (com foto):
  - Imagem: Preenchendo o container (object-fit: cover)
  - Botão Remover:
    - Ícone: "X", 16x16px
    - Posição: Topo direito, padding 8px
    - Cor de Fundo: Branco semi-transparente
    - Borda: Raio circular

- **Seção de Fotos Adicionais**:
  - Título: "Fotos Adicionais (opcional)"
  - Container para upload múltiplo
  - Altura: 120px
  - Outras especificações: Similares aos ângulos principais
  - Preview: Miniaturas horizontais das fotos adicionadas

### Conteúdo do Modal (Etapa 4: Observações Finais)
- **Padding**: 32px

#### Campos de Observações
- **Campo de Observações Gerais**:
  - Rótulo: "Observações Gerais"
  - Altura: 120px
  - Tipo: Textarea
  - Placeholder: "Descreva o estado geral do veículo e outras observações relevantes..."
  - Outras especificações: Iguais aos campos de entrada padrão

- **Checklist de Itens Críticos**:
  - Título: "Itens que Precisam de Atenção"
  - Layout: Lista vertical de checkboxes
  - Cada Item:
    - Checkbox: 18x18px
    - Texto: Fonte Inter Regular, 14px
    - Margin-bottom: 12px
  
  - **Itens Padrão**:
    - "Pneus precisam ser substituídos"
    - "Freios precisam de manutenção"
    - "Lataria com danos"
    - "Interior com danos"
    - "Luzes com defeito"
    - "Problemas no motor"
    - "Outros problemas mecânicos"

- **Campo para Outros Problemas**:
  - Condicionalmente visível se "Outros problemas mecânicos" for marcado
  - Altura: 80px
  - Tipo: Textarea
  - Placeholder: "Descreva os outros problemas encontrados..."

### Conteúdo do Modal (Etapa 5: Confirmação)
- **Padding**: 32px

#### Resumo da Vistoria
- **Título da Seção**:
  - Texto: "Resumo da Vistoria"
  - Fonte: Inter SemiBold, 18px
  - Margin-bottom: 24px

- **Seções de Resumo**:
  - Layout: Grid de 1 coluna
  - Gap: 24px
  - Separadores: Linha horizontal 1px (#E0E4E8) entre seções

##### Seção de Informações Básicas
- **Título**: "Informações Básicas"
- **Layout**: Grid de 2 colunas
- **Cada Item**:
  - Rótulo:
    - Fonte: Inter Regular, 14px
    - Cor: Cinza médio (#6B7280)
  - Valor:
    - Fonte: Inter Medium, 14px
    - Cor: Preto Elegante (#333333)
- **Itens**: Veículo, Data/Hora, Quilometragem, Nível de Combustível, Tipo

##### Seção de Avaliação de Componentes
- **Título**: "Avaliação de Componentes"
- **Layout**: Grid de 2 colunas
- **Cada Item**:
  - Nome do Componente:
    - Fonte: Inter Regular, 14px
    - Cor: Cinza médio (#6B7280)
  - Avaliação:
    - Representação visual da escala 1-5
    - Cor contextual conforme avaliação

##### Seção de Fotos
- **Título**: "Registro Fotográfico"
- **Layout**: Grid de miniaturas, 4 colunas
- **Cada Miniatura**:
  - Tamanho: 80x80px
  - Borda: Raio de 8px
  - Objeto: object-fit cover

##### Seção de Observações
- **Título**: "Observações"
- **Texto**: Observações gerais inseridas
- **Lista**: Itens críticos marcados

#### Mensagem Final
- **Container**:
  - Cor de Fundo: Azul muito claro (#F0F7FA)
  - Borda: 1px sólido Azul Confiança (#1A5F7A), raio de 8px
  - Padding: 16px
  - Margin-top: 24px
- **Ícone**: Informação, 24x24px, cor Azul Confiança (#1A5F7A)
- **Texto**:
  - Fonte: Inter Regular, 14px
  - Cor: Preto Elegante (#333333)
  - Texto: "Ao finalizar esta vistoria, você confirma que as informações fornecidas são verdadeiras e precisas. Esta vistoria será registrada no histórico do veículo."

### Rodapé do Modal
- **Altura**: 72px
- **Padding**: 0 32px
- **Separador**: Linha horizontal 1px (#E0E4E8) acima
- **Alinhamento**: Espaço entre (justify-content: space-between)

- **Lado Esquerdo** (etapas 2-5):
  - Botão "Voltar":
    - Cor de Fundo: Branco (#FFFFFF)
    - Cor de Texto: Cinza escuro (#4B5563)
    - Borda: 1px sólido (#D1D5DB)

- **Lado Direito**:
  - Botão "Próximo" (etapas 1-4):
    - Cor de Fundo: Azul Confiança (#1A5F7A)
    - Cor de Texto: Branco (#FFFFFF)
  
  - Botão "Finalizar Vistoria" (etapa 5):
    - Cor de Fundo: Verde Sucesso (#57C5B6)
    - Cor de Texto: Branco (#FFFFFF)
  
  - **Especificações Comuns**:
    - Altura: 48px
    - Padding: 0 24px
    - Fonte: Inter SemiBold, 16px
    - Borda: Raio de 6px

## Modal: Visualizar Vistoria

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
  - Data:
    - Fonte: Montserrat Bold, 20px
    - Cor: Preto Elegante (#333333)
  - Tipo:
    - Container: Pill shape
    - Padding: 4px 12px
    - Fonte: Inter Medium, 14px
    - Cor: Contextual conforme tipo
- **Status**:
  - Especificações: Iguais aos pills de status na visualização em tabela
  - Posição: Centro-direita
- **Botões de Ação** (contextuais baseados no status):
  - "Aprovar" (se status for "Realizada"):
    - Cor de Fundo: Verde Sucesso (#57C5B6)
    - Cor de Texto: Branco (#FFFFFF)
  - "Rejeitar" (se status for "Realizada"):
    - Cor de Fundo: Branco (#FFFFFF)
    - Cor de Texto: Vermelho (#E53935)
    - Borda: 1px sólido (#E53935)
  - "Imprimir":
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
- **Layout**: Grid com 2 colunas principais
- **Gap**: 32px

#### Coluna Esquerda (60%)
- **Seção de Informações Básicas**:
  - Título:
    - Texto: "Informações Básicas"
    - Fonte: Inter SemiBold, 18px
    - Margin-bottom: 16px
  - Container:
    - Cor de Fundo: Branco (#FFFFFF)
    - Sombra: 0px 4px 12px rgba(0, 0, 0, 0.05)
    - Borda: Raio de 12px
    - Padding: 24px
  
  - **Informações do Veículo**:
    - Layout: Flexbox com gap
    - Miniatura: 64x64px, borda raio 8px
    - Placa:
      - Fonte: Inter SemiBold, 16px
      - Formato: Container retangular similar à tabela
    - Modelo:
      - Fonte: Inter Regular, 14px
      - Cor: Cinza médio (#6B7280)
  
  - **Detalhes da Vistoria**:
    - Layout: Grid de 2 colunas
    - Margin-top: 16px
    - Cada Item:
      - Rótulo:
        - Fonte: Inter Regular, 14px
        - Cor: Cinza médio (#6B7280)
      - Valor:
        - Fonte: Inter Medium, 14px
        - Cor: Preto Elegante (#333333)
    - Itens: Data/Hora, Quilometragem, Nível de Combustível, Realizada Por

- **Seção de Avaliação de Componentes**:
  - Título: Similar à seção anterior
  - Container: Similar à seção anterior
  - Margin-top: 24px
  
  - **Lista de Componentes**:
    - Layout: Grid de 1 coluna
    - Gap: 16px
    - Cada Item:
      - Nome:
        - Fonte: Inter Medium, 14px
        - Cor: Preto Elegante (#333333)
      - Avaliação:
        - Representação visual da escala 1-5
        - Cor contextual conforme avaliação
      - Observações (se houver):
        - Fonte: Inter Regular, 14px
        - Cor: Cinza médio (#6B7280)
        - Margin-top: 8px

- **Seção de Observações**:
  - Título: Similar às seções anteriores
  - Container: Similar às seções anteriores
  - Margin-top: 24px
  
  - **Observações Gerais**:
    - Fonte: Inter Regular, 14px
    - Cor: Preto Elegante (#333333)
  
  - **Itens que Precisam de Atenção** (se houver):
    - Título:
      - Fonte: Inter Medium, 14px
      - Cor: Preto Elegante (#333333)
      - Margin: 16px 0 8px 0
    - Lista:
      - Ícones: Verificação vermelha, 16x16px
      - Fonte: Inter Regular, 14px
      - Cor: Preto Elegante (#333333)
      - Margin-bottom: 4px por item

#### Coluna Direita (40%)
- **Galeria de Fotos**:
  - Título:
    - Texto: "Registro Fotográfico"
    - Fonte: Inter SemiBold, 18px
    - Margin-bottom: 16px
  - Container:
    - Cor de Fundo: Branco (#FFFFFF)
    - Sombra: 0px 4px 12px rgba(0, 0, 0, 0.05)
    - Borda: Raio de 12px
    - Padding: 24px
  
  - **Foto Principal**:
    - Altura: 240px
    - Largura: 100%
    - Object-fit: Cover
    - Borda: Raio de 8px
  
  - **Miniaturas**:
    - Layout: Grid de 4 colunas
    - Gap: 8px
    - Margin-top: 16px
    - Cada Miniatura:
      - Tamanho: Proporcional (1/4 da largura - gap)
      - Altura: 80px
      - Borda: Raio de 4px
      - Miniatura Ativa: Borda 2px Azul Confiança (#1A5F7A)

- **Histórico de Aprovação** (se aplicável):
  - Título: Similar às seções anteriores
  - Container: Similar às seções anteriores
  - Margin-top: 24px
  
  - **Informações de Aprovação/Rejeição**:
    - Status:
      - Fonte: Inter SemiBold, 16px
      - Cor: Contextual (verde para aprovado, vermelho para rejeitado)
    - Aprovado/Rejeitado Por:
      - Layout: Flexbox com gap
      - Foto: Circular, 32px de diâmetro
      - Nome:
        - Fonte: Inter Medium, 14px
        - Cor: Preto Elegante (#333333)
      - Função:
        - Fonte: Inter Regular, 12px
        - Cor: Cinza médio (#6B7280)
    - Data e Hora:
      - Fonte: Inter Regular, 14px
      - Cor: Cinza médio (#6B7280)
    - Comentários (se houver):
      - Fonte: Inter Regular, 14px
      - Cor: Preto Elegante (#333333)
      - Margin-top: 8px

## Comportamentos e Interações

### Visualização em Tabela
- Ordenação ao clicar nos cabeçalhos das colunas
- Seleção de múltiplas linhas via checkboxes
- Ações em lote disponíveis quando múltiplos itens selecionados
- Hover em linha destaca toda a linha
- Menu de contexto ao clicar no ícone de três pontos

### Visualização em Calendário
- Navegação entre meses/semanas/dias
- Hover em evento mostra tooltip com detalhes
- Clique em evento abre modal de visualização
- Clique em dia vazio oferece opção de criar nova vistoria para esse dia

### Modal de Nova Vistoria
- Navegação entre etapas com validação
- Salvamento automático de rascunho
- Upload de fotos com preview
- Validação em tempo real dos campos obrigatórios
- Confirmação antes de descartar alterações não salvas

### Modal de Visualização
- Galeria de fotos com navegação
- Ações contextuais baseadas no status atual
- Opção de impressão/exportação em PDF
- Histórico de alterações visível

## Responsividade (Adaptação para Telas Menores)
- **Breakpoint 1366px**:
  - Modal de vistoria reduz para 90% da largura
  - Modal de visualização muda layout para uma coluna

- **Breakpoint 1024px**:
  - Visualização em tabela oculta colunas menos importantes
  - Calendário reduz tamanho das células
  - Etapas da vistoria mostram apenas ícones em telas estreitas

- **Breakpoint 768px**:
  - Barra de filtros empilha verticalmente
  - Modal ocupa tela inteira
  - Navegação por etapas se transforma em dropdown

## Acessibilidade
- Todos os elementos interativos acessíveis por teclado
- Ordem de tabulação lógica
- Rótulos ARIA para elementos complexos
- Mensagens de erro anunciadas por leitores de tela
- Contraste adequado para texto e elementos visuais

## Observações Técnicas
- Implementar upload de múltiplas fotos com compressão client-side
- Utilizar Supabase Storage para armazenamento de imagens
- Implementar validação tanto no cliente quanto no servidor
- Considerar modo offline para realização de vistorias em campo
- Implementar exportação de vistoria em PDF
