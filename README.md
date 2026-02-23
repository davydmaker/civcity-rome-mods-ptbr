# CivCity: Rome — Tradução PT-BR + Bug Fixes

> Tradução completa para **Português Brasileiro** do jogo CivCity: Rome (2006, Firefly Studios / 2K Games), com correções de bugs.

---

## Conteúdo do mod

### Tradução PT-BR
- **3.366 strings** traduzidas — menus, missões, briefings, tooltips, nomes de edifícios, eventos, tecnologias e muito mais
- **Ajuda in-game** (`F1`) completamente traduzida
- Status: **100% completo** · revisão em andamento — contribuições são bem-vindas!

### Correções de bugs (scripts Lua)
Três bugs nos scripts de comportamento dos cidadãos foram identificados e corrigidos:

| Arquivo | Bug | Correção |
|---------|-----|----------|
| `scripts/BlacksmithSword.lua` | Ferreiro de Espadas usava animação de *Ferreiro de Lanças* ao carregar a espada ao caminhar | Corrigido para usar `BlacksmithSword` |
| `scripts/ArenaFighters.lua` | Nome de áudio `"FX_GLAD_sHIELD3"` com letra minúscula indevida, o som do escudo não tocava em 4 tipos de luta na arena | Corrigido para `"FX_GLAD_SHIELD3"` |

---

## Instalação

### Método 1 — Download direto (recomendado)

1. Baixe o repositório como ZIP: clique em **Code → Download ZIP**
2. Extraia o conteúdo
3. Copie **todos os arquivos e pastas** para dentro do diretório do jogo, **sobrescrevendo** os originais:
   ```
   Steam\steamapps\common\CivCity Rome\
   ```
4. Inicie o jogo — o idioma será detectado automaticamente

> O arquivo `i18n/lang.txt` contém `pt-br`, que instrui o jogo a carregar a tradução.

### Método 2 — Git clone

```bash
# Navegue até o diretório do jogo
cd "C:\Program Files (x86)\Steam\steamapps\common\CivCity Rome"

# Clone o repositório diretamente na pasta do jogo
git clone https://github.com/SEU_USUARIO/civcity-rome-ptbr .
```

### Verificando a instalação

Ao iniciar o jogo, você verá:
- Menus e textos em Português Brasileiro
- O título "CivCity: Roma" nas telas de menu
- A ajuda in-game (tecla `F1`) em português

### Revertendo para o inglês

Para voltar ao inglês, edite o arquivo `i18n/lang.txt` e substitua `pt-br` por `en-us`.

---

## Tradução de vozes com IA *(em desenvolvimento)*

O jogo original possui narração e vozes (diálogos de missão, comentários dos personagens históricos, falas do conselheiro). Está em andamento um projeto experimental de **dublagem em Português Brasileiro gerada por IA**, utilizando modelos de síntese de voz para substituir os arquivos de áudio originais.

Esta etapa é significativamente mais complexa que a tradução textual e está em fase inicial de pesquisa. Atualizações serão publicadas neste repositório conforme o trabalho avançar.

Se você tem experiência com síntese de voz (TTS), clonagem de voz ou pós-produção de áudio e quer colaborar, **abra uma issue** ou entre em contato.

---

## Como contribuir

Toda contribuição é bem-vinda! As principais frentes abertas são:

### Revisão da tradução textual
A tradução foi feita com auxílio de IA e pode conter:
- Termos técnicos romanos traduzidos de forma imprecisa
- Frases com construção estranha ou pouco natural
- Nomes próprios (cidades, personagens históricos) que deveriam ser mantidos em latim

**Como reportar:** abra uma [Issue](../../issues) com:
- A string em inglês (original)
- A tradução atual (incorreta)
- Sua sugestão de correção

### Correção de bugs nos scripts Lua
O jogo possui 65+ scripts Lua que controlam o comportamento dos cidadãos. Além dos 2 já corrigidos, há outros bugs para corrigir.

**Como contribuir com código:**
1. Fork este repositório
2. Crie uma branch: `git checkout -b fix/nome-do-bug`
3. Faça a correção no arquivo `.lua` correspondente
4. Abra um Pull Request descrevendo o bug e a correção

### Tradução de vozes (IA)
Ver seção acima. Abra uma issue para discutir abordagens.

---

## Contexto técnico

O sistema de localização do CivCity: Rome funciona da seguinte forma:

- `i18n/lang.txt` define o idioma ativo (ex: `pt-br`)
- `i18n/pt-br.xml` é um Excel XML Spreadsheet com pares `chave -> tradução`
- `help/*.ffh` é um formato binário proprietário para a ajuda in-game
- Os scripts `scripts/*.lua` controlam animações e sons dos cidadãos via engine Lua embutida

---

## Créditos

- Tradução e bug fixes: contribuidores deste repositório
- Jogo original: **Firefly Studios / 2K Games** (2006)
- CivCity: Rome não tem mais suporte oficial — este é um projeto de preservação e acessibilidade para falantes de Português Brasileiro

---

## Licença

Este projeto contém apenas arquivos de tradução, scripts de comportamento e ferramentas de geração — **não distribui assets protegidos** do jogo original (executáveis, texturas, meshes, áudio).

O jogo CivCity: Rome deve ser adquirido legalmente. Disponível na [Steam](https://store.steampowered.com/app/24680/CivCity_Rome/).
