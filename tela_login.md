# Protótipo Detalhado: Tela de Login

## Especificações Visuais

### Layout Geral
- **Resolução Base**: 1920x1080px (Desktop)
- **Fundo**: Gradiente suave de cinza claro (#F8F9FA) para branco (#FFFFFF)
- **Estrutura**: Layout centralizado com card de login em destaque

### Card de Login
- **Dimensões**: 480px x 600px
- **Cor de Fundo**: Branco (#FFFFFF)
- **Sombra**: 0px 8px 24px rgba(0, 0, 0, 0.12)
- **Borda**: Raio de 12px
- **Padding Interno**: 40px

### Logo e Cabeçalho
- **Logo**: Circular, 120px de diâmetro
- **Posição do Logo**: Centralizado, 60px do topo do card
- **Texto "LocaFácil"**: 
  - Fonte: Montserrat Bold
  - Tamanho: 32px
  - Cor: Azul Confiança (#1A5F7A)
  - Posição: Centralizado, 24px abaixo do logo

### Campos de Entrada
- **Largura**: 100% (400px considerando padding)
- **Altura**: 56px
- **Espaçamento entre campos**: 24px
- **Cor de Fundo**: Cinza muito claro (#F5F7F9)
- **Borda**: 1px sólido (#E0E4E8), raio de 8px
- **Estado de Foco**: Borda 2px Azul Confiança (#1A5F7A)
- **Padding Interno**: 16px
- **Rótulos**:
  - Fonte: Inter Regular
  - Tamanho: 14px
  - Cor: Cinza médio (#6B7280)
  - Posição: 8px acima do campo

#### Campo de Email
- **Ícone**: Envelope, 20x20px, cor cinza médio (#6B7280)
- **Placeholder**: "seu@email.com"
- **Validação**: Formato de email válido

#### Campo de Senha
- **Ícone**: Cadeado, 20x20px, cor cinza médio (#6B7280)
- **Ícone Secundário**: Olho (mostrar/ocultar senha), 20x20px
- **Placeholder**: "••••••••"
- **Validação**: Mínimo 8 caracteres

### Opção "Lembrar-me"
- **Checkbox**: 18x18px, cor de borda cinza (#D1D5DB)
- **Checkbox Selecionado**: Preenchimento Azul Confiança (#1A5F7A)
- **Texto**: 
  - Fonte: Inter Regular
  - Tamanho: 14px
  - Cor: Cinza escuro (#4B5563)
- **Posição**: Alinhado à esquerda, 24px abaixo do campo de senha

### Botão "Entrar"
- **Largura**: 100% (400px considerando padding)
- **Altura**: 56px
- **Cor de Fundo**: Azul Confiança (#1A5F7A)
- **Cor de Texto**: Branco (#FFFFFF)
- **Fonte**: Inter SemiBold
- **Tamanho da Fonte**: 16px
- **Borda**: Nenhuma, raio de 8px
- **Estado Hover**: Azul ligeiramente mais escuro (#164B61)
- **Posição**: 32px abaixo da opção "Lembrar-me"

### Link "Esqueci minha senha"
- **Fonte**: Inter Regular
- **Tamanho**: 14px
- **Cor**: Azul Confiança (#1A5F7A)
- **Estado Hover**: Sublinhado
- **Posição**: Centralizado, 16px abaixo do botão "Entrar"

### Separador
- **Linha**: 1px sólido (#E0E4E8)
- **Largura**: 100% (400px considerando padding)
- **Texto "ou"**: 
  - Fonte: Inter Regular
  - Tamanho: 14px
  - Cor: Cinza médio (#6B7280)
  - Fundo: Branco (#FFFFFF)
  - Padding: 0 16px
- **Posição**: Centralizado, 24px abaixo do link "Esqueci minha senha"

### Botão "Criar nova conta"
- **Largura**: 100% (400px considerando padding)
- **Altura**: 56px
- **Cor de Fundo**: Branco (#FFFFFF)
- **Cor de Texto**: Azul Confiança (#1A5F7A)
- **Cor de Borda**: Azul Confiança (#1A5F7A), 1px
- **Fonte**: Inter SemiBold
- **Tamanho da Fonte**: 16px
- **Borda**: Raio de 8px
- **Estado Hover**: Fundo azul muito claro (#F0F7FA)
- **Posição**: 24px abaixo do separador

### Rodapé
- **Texto de Copyright**: 
  - Fonte: Inter Regular
  - Tamanho: 12px
  - Cor: Cinza médio (#6B7280)
- **Posição**: Centralizado, 24px abaixo do botão "Criar nova conta"

## Comportamentos e Interações

### Validação de Campos
1. **Email**:
   - Validação em tempo real do formato de email
   - Mensagem de erro abaixo do campo: "Por favor, insira um email válido"
   - Cor da mensagem de erro: Vermelho (#E53935)

2. **Senha**:
   - Validação em tempo real da força da senha
   - Indicador visual de força (fraca, média, forte)
   - Botão de mostrar/ocultar senha funcional

### Botão "Entrar"
- Estado desabilitado até que ambos os campos estejam preenchidos corretamente
- Feedback visual ao clicar (efeito de pressionar)
- Indicador de carregamento (spinner) durante a autenticação

### Mensagens de Erro
- **Erro de Autenticação**:
  - Banner no topo do card
  - Cor de fundo: Vermelho claro (#FEECEB)
  - Texto: Vermelho (#E53935)
  - Ícone de alerta
  - Mensagem: "Email ou senha incorretos. Por favor, tente novamente."

### Animações
- Transição suave ao focar nos campos (300ms)
- Fade-in do card ao carregar a página
- Efeito de elevação sutil ao passar o mouse sobre os botões

## Responsividade (Adaptação para Telas Menores)
- **Breakpoint 768px**:
  - Card de login reduz para 90% da largura da tela (máximo 480px)
  - Padding interno reduz para 32px
  - Tamanho do logo reduz para 100px

- **Breakpoint 480px**:
  - Card de login ocupa 100% da tela
  - Padding interno reduz para 24px
  - Tamanho do logo reduz para 80px
  - Altura dos campos e botões reduz para 48px

## Acessibilidade
- Todos os campos possuem labels associados
- Ordem de tabulação lógica
- Mensagens de erro são anunciadas por leitores de tela
- Contraste de cores segue WCAG 2.1 AA
- Tamanho mínimo de texto de 14px para legibilidade

## Observações Técnicas
- Implementar autenticação via Supabase Auth
- Armazenar token de sessão de forma segura
- Implementar redirecionamento para Dashboard após login bem-sucedido
- Configurar recuperação de senha via email através do Supabase
