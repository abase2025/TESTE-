# Protótipo Detalhado: Dashboard do Motorista

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

#### Lista de Itens do Menu (Visão do Motorista)
1. **Dashboard** (ícone de gráfico) - Selecionado
2. **Meu Veículo** (ícone de carro)
3. **Vistorias** (ícone de checklist)
4. **Documentos** (ícone de documento)
5. **Multas** (ícone de exclamação)
6. **Quilometragem** (ícone de velocímetro)
7. **Configurações** (ícone de engrenagem)

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
  - Texto: "Motorista"
- **Ícone de Menu**: Três pontos verticais, 24x24px, posicionado à direita

### Barra Superior
- **Altura**: 72px
- **Cor de Fundo**: Branco (#FFFFFF)
- **Sombra**: 0px 2px 8px rgba(0, 0, 0, 0.05)
- **Padding**: 0 32px

#### Área de Notificações
- **Ícone de Notificação**: Sino, 24x24px
- **Contador de Notificações**:
  - Círculo 18px
  - Cor de Fundo: Vermelho (#E53935)
  - Cor de Texto: Branco (#FFFFFF)
  - Fonte: Inter Bold, 12px

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
  - Texto: "Bem-vindo, [Nome do Motorista]"

#### Seção do Veículo Atual
- **Container**:
  - Cor de Fundo: Branco (#FFFFFF)
  - Sombra: 0px 4px 12px rgba(0, 0, 0, 0.05)
  - Borda: Raio de 12px
  - Padding: 24px
  - Margin-bottom: 32px

- **Layout**: Flexbox com gap de 24px

- **Coluna Esquerda (30%)**:
  - Foto do Veículo: Altura 200px, largura 100%, object-fit cover, borda raio 8px
  - Status do Veículo:
    - Container: Pill shape
    - Padding: 4px 12px
    - Borda: Raio de 16px
    - Fonte: Inter Medium, 14px
    - Cor: Contextual conforme status
    - Posição: Sobreposto no canto superior direito da foto

- **Coluna Direita (70%)**:
  - Cabeçalho:
    - Placa:
      - Fonte: Inter SemiBold, 20px
      - Cor: Preto Elegante (#333333)
      - Formato: Container retangular
        - Cor de Fundo: Cinza muito claro (#F5F7F9)
        - Padding: 4px 12px
        - Borda: Raio de 4px
    - Modelo:
      - Fonte: Inter Regular, 18px
      - Cor: Cinza médio (#6B7280)
  
  - **Informações do Veículo**:
    - Layout: Grid de 2 colunas
    - Gap: 16px
    - Margin-top: 16px
    - Cada Item:
      - Rótulo:
        - Fonte: Inter Regular, 14px
        - Cor: Cinza médio (#6B7280)
      - Valor:
        - Fonte: Inter Medium, 16px
        - Cor: Preto Elegante (#333333)
    - Itens: Ano, Cor, Quilometragem Atual, Última Vistoria, Próxima Vistoria, Proprietário
  
  - **Botões de Ação**:
    - Layout: Flexbox com gap de 16px
    - Margin-top: 24px
    - "Registrar Quilometragem":
      - Cor de Fundo: Azul Confiança (#1A5F7A)
      - Cor de Texto: Branco (#FFFFFF)
    - "Solicitar Vistoria":
      - Cor de Fundo: Branco (#FFFFFF)
      - Cor de Texto: Azul Confiança (#1A5F7A)
      - Borda: 1px sólido (#1A5F7A)
    - "Reportar Problema":
      - Cor de Fundo: Branco (#FFFFFF)
      - Cor de Texto: Vermelho (#E53935)
      - Borda: 1px sólido (#E53935)
    - **Especificações Comuns**:
      - Altura: 40px
      - Padding: 0 16px
      - Fonte: Inter Medium, 14px
      - Borda: Raio de 6px

#### Cards de Resumo
- **Layout**: Grid de 4 cards em linha
- **Gap**: 24px
- **Margin-bottom**: 32px

##### Card 1: Quilometragem Semanal
- **Ícone**: Velocímetro, 32x32px, cor Azul Confiança (#1A5F7A)
- **Valor**: 
  - Fonte: Montserrat Bold
  - Tamanho: 28px
  - Cor: Preto Elegante (#333333)
  - Formato: XXX km
- **Rótulo**: "Quilometragem Semanal"
  - Fonte: Inter Regular
  - Tamanho: 14px
  - Cor: Cinza médio (#6B7280)
- **Indicador de Tendência**: Seta para cima/baixo, texto "+/-X% vs semana anterior"
  - Cor: Verde Sucesso (#57C5B6) ou Vermelho (#E53935)
  - Fonte: Inter Medium, 14px

##### Card 2: Vistorias Pendentes
- **Ícone**: Checklist, 32x32px, cor Âmbar (#FFA000)
- **Valor**: Similar ao Card 1
- **Rótulo**: "Vistorias Pendentes"
- **Indicador**: Data da próxima vistoria

##### Card 3: Multas
- **Ícone**: Exclamação em círculo, 32x32px, cor Vermelho (#E53935)
- **Valor**: Similar ao Card 1
- **Rótulo**: "Multas Recentes"
- **Indicador**: Valor total

##### Card 4: Documentos
- **Ícone**: Documento com verificação, 32x32px, cor Verde Sucesso (#57C5B6)
- **Valor**: Similar ao Card 1
- **Rótulo**: "Documentos em Dia"
- **Indicador**: Próximo vencimento

#### Seção de Gráfico de Quilometragem
- **Container**:
  - Cor de Fundo: Branco (#FFFFFF)
  - Sombra: 0px 4px 12px rgba(0, 0, 0, 0.05)
  - Borda: Raio de 12px
  - Padding: 24px
  - Margin-bottom: 32px

- **Cabeçalho da Seção**:
  - Título: "Quilometragem Diária"
    - Fonte: Inter SemiBold, 18px
    - Cor: Preto Elegante (#333333)
  - Seletor de Período:
    - Tipo: Botões segmentados
    - Opções: "7 dias", "30 dias", "90 dias"
    - Altura: 32px
    - Especificações: Similares aos seletores de período do Dashboard do Proprietário

- **Gráfico**:
  - Tipo: Gráfico de linhas
  - Altura: 280px
  - Eixo X: Dias
  - Eixo Y: Quilometragem
  - Cor da Linha: Azul Confiança (#1A5F7A)
  - Área sob a linha: Azul muito claro (#F0F7FA)
  - Pontos de Dados: Círculos 6px, cor Azul Confiança (#1A5F7A)

#### Seção de Alertas e Lembretes
- **Container**:
  - Cor de Fundo: Branco (#FFFFFF)
  - Sombra: 0px 4px 12px rgba(0, 0, 0, 0.05)
  - Borda: Raio de 12px
  - Padding: 24px
  - Margin-bottom: 32px

- **Cabeçalho da Seção**:
  - Título: "Alertas e Lembretes"
    - Fonte: Inter SemiBold, 18px
    - Cor: Preto Elegante (#333333)
  - Botão "Ver Todos":
    - Fonte: Inter Medium, 14px
    - Cor: Azul Confiança (#1A5F7A)

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
      - Data/Prazo:
        - Fonte: Inter Regular, 14px
        - Cor: Contextual conforme urgência
        - Alinhamento: Direita
      - Indicador de Prioridade:
        - Alta: Círculo vermelho (#E53935)
        - Média: Círculo âmbar (#FFA000)
        - Baixa: Círculo azul (#1A5F7A)

#### Seção de Últimas Atividades
- **Container**:
  - Cor de Fundo: Branco (#FFFFFF)
  - Sombra: 0px 4px 12px rgba(0, 0, 0, 0.05)
  - Borda: Raio de 12px
  - Padding: 24px

- **Cabeçalho da Seção**:
  - Título: "Últimas Atividades"
    - Fonte: Inter SemiBold, 18px
    - Cor: Preto Elegante (#333333)
  - Botão "Ver Todas":
    - Fonte: Inter Medium, 14px
    - Cor: Azul Confiança (#1A5F7A)

- **Timeline de Atividades**:
  - Layout: Lista vertical com linha conectora
  - Cada Item:
    - Indicador: Círculo 16px, cor contextual conforme tipo de atividade
    - Data e Hora:
      - Fonte: Inter Medium, 14px
      - Cor: Cinza médio (#6B7280)
    - Título:
      - Fonte: Inter Medium, 16px
      - Cor: Preto Elegante (#333333)
    - Descrição:
      - Fonte: Inter Regular, 14px
      - Cor: Cinza médio (#6B7280)
    - Botão "Ver Detalhes" (quando aplicável):
      - Fonte: Inter Medium, 14px
      - Cor: Azul Confiança (#1A5F7A)

## Modal: Registrar Quilometragem

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
  - Texto: "Registrar Quilometragem"
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

#### Resumo do Veículo
- **Container**:
  - Cor de Fundo: Cinza muito claro (#F5F7F9)
  - Borda: Raio de 8px
  - Padding: 16px
  - Margin-bottom: 24px

- **Informações**:
  - Layout: Flexbox com gap
  - Placa:
    - Fonte: Inter SemiBold, 16px
    - Formato: Container retangular similar à tabela
  - Modelo:
    - Fonte: Inter Regular, 14px
    - Cor: Cinza médio (#6B7280)
  - Quilometragem Atual:
    - Fonte: Inter Medium, 14px
    - Cor: Preto Elegante (#333333)
    - Formato: "Atual: XXX.XXX km"

#### Campos do Formulário
Cada campo segue o padrão geral de formulários:

1. **Data do Registro** (seletor de data, obrigatório)
   - Valor padrão: Data atual
2. **Quilometragem Atual** (numérico, obrigatório)
   - Placeholder: Valor atual + sugestão de incremento
3. **Tipo de Uso** (dropdown, obrigatório)
   - Opções: "Aplicativo", "Particular", "Misto"
4. **Observações** (textarea, opcional)
   - Altura: 100px
   - Placeholder: "Informe detalhes adicionais se necessário..."

#### Seção de Upload de Foto
- **Título**:
  - Texto: "Foto do Hodômetro (obrigatório)"
  - Fonte: Inter Medium, 14px
  - Cor: Cinza escuro (#4B5563)
  - Margin-bottom: 8px

- **Container de Upload**:
  - Altura: 160px
  - Cor de Fundo: Cinza muito claro (#F5F7F9)
  - Borda: 2px tracejado (#D1D5DB), raio de 12px
  - Texto:
    - Principal: "Tire uma foto do hodômetro ou faça upload"
    - Secundário: "Formatos aceitos: JPG, PNG. Máximo 5MB."
    - Fonte Principal: Inter Medium, 16px
    - Fonte Secundária: Inter Regular, 14px
    - Cor Principal: Cinza escuro (#4B5563)
    - Cor Secundária: Cinza médio (#6B7280)
  - Ícone: Câmera, 48x48px, cor Azul Confiança (#1A5F7A)

- **Preview da Foto** (após upload):
  - Container: 160px x 160px
  - Borda: Raio de 8px
  - Miniatura: object-fit contain
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
- **Botão "Registrar"**:
  - Cor de Fundo: Azul Confiança (#1A5F7A)
  - Cor de Texto: Branco (#FFFFFF)
- **Especificações Comuns**:
  - Altura: 48px
  - Padding: 0 24px
  - Fonte: Inter SemiBold, 16px
  - Borda: Raio de 6px

## Modal: Solicitar Vistoria

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
  - Texto: "Solicitar Vistoria"
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

#### Resumo do Veículo
- **Container**:
  - Cor de Fundo: Cinza muito claro (#F5F7F9)
  - Borda: Raio de 8px
  - Padding: 16px
  - Margin-bottom: 24px

- **Informações**:
  - Layout: Flexbox com gap
  - Placa:
    - Fonte: Inter SemiBold, 16px
    - Formato: Container retangular similar à tabela
  - Modelo:
    - Fonte: Inter Regular, 14px
    - Cor: Cinza médio (#6B7280)
  - Última Vistoria:
    - Fonte: Inter Medium, 14px
    - Cor: Preto Elegante (#333333)
    - Formato: "Última: DD/MM/AAAA"

#### Campos do Formulário
Cada campo segue o padrão geral de formulários:

1. **Tipo de Vistoria** (radio buttons, obrigatório)
   - Opções: "Periódica", "Emergencial"
2. **Data Preferencial** (seletor de data, obrigatório)
   - Datas disponíveis: Próximos 7 dias úteis
3. **Horário Preferencial** (dropdown, obrigatório)
   - Opções: Intervalos de 1 hora (8h às 18h)
4. **Local da Vistoria** (radio buttons, obrigatório)
   - Opções: "Sede da Empresa", "Endereço Atual"
5. **Endereço Atual** (campos de endereço, condicional se "Endereço Atual" for selecionado)
6. **Motivo** (dropdown, obrigatório se tipo for "Emergencial")
   - Opções: "Acidente", "Problema Mecânico", "Problema Elétrico", "Outro"
7. **Descrição do Problema** (textarea, obrigatório se tipo for "Emergencial")
   - Altura: 120px
   - Placeholder: "Descreva detalhadamente o problema encontrado..."

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
- **Botão "Solicitar"**:
  - Cor de Fundo: Azul Confiança (#1A5F7A)
  - Cor de Texto: Branco (#FFFFFF)
- **Especificações Comuns**:
  - Altura: 48px
  - Padding: 0 24px
  - Fonte: Inter SemiBold, 16px
  - Borda: Raio de 6px

## Modal: Reportar Problema

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
  - Texto: "Reportar Problema"
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

#### Resumo do Veículo
- **Container**:
  - Cor de Fundo: Cinza muito claro (#F5F7F9)
  - Borda: Raio de 8px
  - Padding: 16px
  - Margin-bottom: 24px

- **Informações**:
  - Layout: Flexbox com gap
  - Placa:
    - Fonte: Inter SemiBold, 16px
    - Formato: Container retangular similar à tabela
  - Modelo:
    - Fonte: Inter Regular, 14px
    - Cor: Cinza médio (#6B7280)

#### Campos do Formulário
Cada campo segue o padrão geral de formulários:

1. **Categoria do Problema** (dropdown, obrigatório)
   - Opções: "Mecânico", "Elétrico", "Lataria", "Interior", "Pneus", "Luzes", "Outro"
2. **Urgência** (radio buttons, obrigatório)
   - Opções: "Baixa", "Média", "Alta", "Crítica"
   - Cada opção com cor contextual e descrição breve
3. **Descrição do Problema** (textarea, obrigatório)
   - Altura: 120px
   - Placeholder: "Descreva detalhadamente o problema encontrado..."
4. **Impacto na Utilização** (dropdown, obrigatório)
   - Opções: "Não impede o uso", "Uso limitado", "Impossível utilizar"

#### Seção de Upload de Fotos
- **Título**:
  - Texto: "Fotos do Problema (recomendado)"
  - Fonte: Inter Medium, 14px
  - Cor: Cinza escuro (#4B5563)
  - Margin-bottom: 8px

- **Container de Upload**:
  - Altura: 160px
  - Cor de Fundo: Cinza muito claro (#F5F7F9)
  - Borda: 2px tracejado (#D1D5DB), raio de 12px
  - Texto:
    - Principal: "Adicione fotos do problema"
    - Secundário: "Formatos aceitos: JPG, PNG. Máximo 5MB por foto."
    - Fonte Principal: Inter Medium, 16px
    - Fonte Secundária: Inter Regular, 14px
    - Cor Principal: Cinza escuro (#4B5563)
    - Cor Secundária: Cinza médio (#6B7280)
  - Ícone: Câmera, 48x48px, cor Azul Confiança (#1A5F7A)

- **Previews de Fotos** (após upload):
  - Layout: Grid de miniaturas
  - Cada Miniatura:
    - Tamanho: 80x80px
    - Borda: Raio de 8px
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
- **Botão "Enviar"**:
  - Cor de Fundo: Vermelho (#E53935)
  - Cor de Texto: Branco (#FFFFFF)
- **Especificações Comuns**:
  - Altura: 48px
  - Padding: 0 24px
  - Fonte: Inter SemiBold, 16px
  - Borda: Raio de 6px

## Comportamentos e Interações

### Menu Lateral
- Item atual destacado visualmente
- Efeito hover em itens não selecionados
- Opção para recolher menu (toggle)
- Menu de usuário expande ao clicar na foto/nome

### Notificações
- Dropdown aparece ao clicar no ícone
- Notificações não lidas destacadas
- Opção para marcar como lida
- Opção para ver todas as notificações

### Cards de Resumo
- Hover com efeito sutil de elevação
- Clicável, direciona para seção relacionada
- Atualização em tempo real dos valores

### Gráfico de Quilometragem
- Interativo, mostra valores ao passar o mouse
- Zoom em períodos específicos
- Exportação do gráfico (PNG, PDF)

### Seção de Alertas e Lembretes
- Alertas ordenados por prioridade e data
- Clicável, expande para mais detalhes ou navega para página relacionada
- Botões de ação rápida para cada alerta

### Modais
- Validação em tempo real dos campos
- Upload de fotos com preview
- Confirmação antes de descartar alterações não salvas
- Feedback visual após conclusão bem-sucedida

## Responsividade (Adaptação para Telas Menores)
- **Breakpoint 1366px**:
  - Menu lateral pode ser recolhido (apenas ícones)
  - Cards de resumo em grid 2x2
  - Layout da seção do veículo atual muda para coluna única

- **Breakpoint 1024px**:
  - Menu lateral inicialmente recolhido
  - Gráfico de quilometragem com altura reduzida
  - Seção do veículo atual com layout simplificado

- **Breakpoint 768px**:
  - Menu lateral se torna drawer (fora da tela, aparece ao clicar no hambúrguer)
  - Cards de resumo empilhados (um abaixo do outro)
  - Modais ocupam tela inteira

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
