# CivCity: Rome — Tradução PT-BR + Dublagem IA + Bug Fixes

[![Latest Release](https://img.shields.io/github/v/release/davydmaker/civcity-rome-mods-ptbr?label=vers%C3%A3o&color=blue)](https://github.com/davydmaker/civcity-rome-mods-ptbr/releases/latest)
[![License](https://img.shields.io/badge/licen%C3%A7a-apenas%20tradu%C3%A7%C3%A3o-green)](LICENSE)

> Tradução completa, dublagem com IA e correção de bugs para **CivCity: Rome** (2006, Firefly Studios / 2K Games) em **Português Brasileiro**.

---

## Conteúdo do mod

### Tradução PT-BR
- **3.366 strings** traduzidas — menus, missões, briefings, tooltips, nomes de edifícios, eventos, tecnologias
- **Ajuda in-game** (`F1`) completamente traduzida
- Status: **100% completo** · revisão contínua — contribuições são bem-vindas!

### Dublagem PT-BR com IA
- **1.253 arquivos de áudio** dublados em Português Brasileiro
- Cobre todas as vozes do jogo: conselheiro, narrador de campanha, cidadãos (5 classes sociais), mulheres, crianças, vagabundos, pedidos do império, eventos e personagens históricos
- Abertura do jogo também dublada
- Gerada com **XTTS v2** (Coqui TTS) — modelo de clonagem de voz multilíngue
- As **vozes originais em inglês** do jogo foram usadas como referência para a clonagem, preservando o timbre e tom de cada personagem
- O processo: transcrição do áudio original (Whisper) > tradução do texto (Claude AI) > síntese de voz PT-BR com clonagem (XTTS v2)

### Correções de bugs (scripts Lua)
Três bugs nos scripts de comportamento dos cidadãos foram identificados e corrigidos:

| Arquivo | Bug | Correção |
|---------|-----|----------|
| `scripts/BlacksmithSword.lua` | Ferreiro usava tabela de cache do *forjador de lanças* ao carregar a espada, causando animação incorreta ao caminhar | Corrigido para usar a tabela `BlacksmithSword` correta |
| `scripts/ArenaFighters.lua` | Chave de som `"FX_GLAD_sHIELD3"` com letra minúscula indevida, o som do escudo não tocava em 4 tipos de luta na arena | Corrigido para `"FX_GLAD_SHIELD3"` |

---

## Instalação

### Método 1 — Download da release (recomendado)

1. Acesse a [página de releases](https://github.com/davydmaker/civcity-rome-mods-ptbr/releases/latest)
2. Baixe o arquivo `.zip` da versão mais recente
3. Extraia o conteúdo dentro do diretório do jogo, **sobrescrevendo** os originais:
   ```
   Steam\steamapps\common\CivCity Rome\
   ```
4. Inicie o jogo — o idioma será detectado automaticamente

### Método 2 — Download direto do repositório

1. Clique em **Code → Download ZIP**
2. Extraia e copie **todos os arquivos e pastas** para o diretório do jogo
3. Inicie o jogo

### Método 3 — Git clone

```bash
cd "C:\Program Files (x86)\Steam\steamapps\common\CivCity Rome"
git clone https://github.com/davydmaker/civcity-rome-mods-ptbr .
```

### Verificando a instalação

Ao iniciar o jogo, você verá:
- Menus e textos em Português Brasileiro
- Vozes e narração em Português Brasileiro
- A ajuda in-game (tecla `F1`) em português

### Revertendo para o inglês

Para voltar ao inglês, edite `i18n/lang.txt` e substitua `pt-br` por `en-us`.
Para restaurar as vozes originais em inglês, reinstale o jogo ou verifique a integridade dos arquivos pelo Steam.

---

## Como a dublagem foi feita

A dublagem foi gerada através de um pipeline automatizado em 4 etapas:

| Etapa | Ferramenta | Descrição |
|-------|-----------|-----------|
| 1. Transcrição | **OpenAI Whisper** (modelo medium) | Transcreve o áudio original em inglês para texto |
| 2. Tradução | **Claude AI** (Haiku) | Traduz o texto para PT-BR mantendo o registro de cada personagem (formal para o conselheiro, coloquial para vagabundos, etc.) |
| 3. Síntese de voz | **XTTS v2** (Coqui TTS) | Gera áudio PT-BR usando clonagem de voz, e as vozes originais em inglês servem como referência para preservar o timbre de cada personagem |
| 4. Deploy | **ffmpeg** | Converte WAV para MP3 e substitui os arquivos no jogo |

A clonagem de voz usa amostras de 3-5 arquivos de áudio originais de cada personagem como "speaker reference", permitindo que o modelo XTTS v2 reproduza as características vocais (tom, ritmo, timbre) ao falar em português.

---

## Como contribuir

### Revisão da tradução textual
A tradução foi feita com auxílio de IA e pode conter termos imprecisos ou frases com construção estranha. **Como reportar:** abra uma [Issue](../../issues) com a string original, a tradução atual e sua sugestão.

### Revisão da dublagem
Se notar áudios com pronúncia estranha, palavras cortadas ou tom inadequado, abra uma issue indicando o arquivo de áudio.

---

## Contexto técnico

- `i18n/lang.txt` define o idioma ativo (ex: `pt-br`)
- `i18n/pt-br.xml` é um Excel XML Spreadsheet com pares `chave → tradução`
- `help/*.ffh` é um formato binário proprietário para a ajuda in-game
- `scripts/*.lua` controlam animações e sons dos cidadãos via engine Lua embutida
- `fx/speech/*.mp3` e `meshes/heads/*.wav` são os arquivos de áudio de voz
- `binks/intro.bik` é o vídeo de abertura do jogo

---

## Créditos

- Tradução, dublagem e bug fixes: contribuidores deste repositório
- Jogo original: **Firefly Studios / 2K Games** (2006)
- CivCity: Rome não tem mais suporte oficial — este é um projeto de preservação e acessibilidade para falantes de Português Brasileiro

---

## Licença

Este projeto contém apenas arquivos de tradução, áudios gerados por IA, scripts de comportamento e ferramentas de geração, e **não distribui assets protegidos** do jogo original (executáveis, texturas, meshes).

O jogo CivCity: Rome deve ser adquirido legalmente. Disponível na [Steam](https://store.steampowered.com/app/24680/CivCity_Rome/).
