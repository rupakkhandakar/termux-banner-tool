# 🎨 Termux Banner Tool

![bash](https://img.shields.io/badge/shell-bash-green)
![termux](https://img.shields.io/badge/platform-termux-blue)
![license](https://img.shields.io/badge/license-MIT-yellow)
![styles](https://img.shields.io/badge/banner_styles-35-cyan)
![prompts](https://img.shields.io/badge/prompt_styles-35-magenta)

A professional Termux startup-banner customizer. Pick from **35 ASCII logo styles**, **35 command-prompt signs**, and **10 color themes** — set your name once, and your banner appears every time you open Termux.

```
 _  ___                     _       _
| |/ / |__   __ _ _ __   __| | __ _| | ____ _ _ __
| ' /| '_ \ / _` | '_ \ / _` |/ _` | |/ / _` | '__|
...
 ┌────────────────────────────────────────────────────┐
 │ 👤 User    : Khandakar                             │
 │ 📅 Date    : Friday, 18 September 2026             │
 │ ⏰ Time    : 11:29:40 PM                            │
 └────────────────────────────────────────────────────┘
```

---

## ✨ Features

| Feature | Details |
|---|---|
| 🎨 35 banner styles | figlet + toilet fonts: Slant, Shadow, Bubble, Braille, Circled, Fullwidth, framed editions & more |
| 💻 35 prompt signs | `FPV⟩⟩`, `❯❯❯`, `⚡`, emoji prompts, hacker `root@termux`, two-line box prompt & more |
| 🌈 10 color themes | Ocean, Sunset, Candy, Forest, Royal, Neon, Inferno, Mint, Ghost, Rainbow |
| ✏️ Custom name | Your name rendered in the logo + info card |
| 👁️ Live preview | See every style rendered with *your* name before saving |
| 🔄 Reset | One-click restore of your original `.bashrc` (auto-backed-up) |
| 🗑️ Uninstall | Standalone uninstaller, removes everything cleanly |
| ➕ Extendable | All 3 lists are plain bash arrays — add your own styles in minutes |

## 📦 Installation

```bash
pkg install -y git
git clone https://github.com/<your-username>/termux-banner-tool.git
cd termux-banner-tool
bash install.sh
```

> `install.sh` auto-installs `figlet` and `toilet` if they are missing.

## 🚀 Usage

Run the interactive menu any time:

```bash
cd termux-banner-tool
bash install.sh
```

```
[1] 🎨 Banner Style (35 options)
[2] 💻 Prompt Style (35 options)
[3] 🌈 Color Theme (10 options)
[4] ✏️  Set Your Name
[5] 👁️  Preview Banner
[6] 🔄 Reset to Default
[7] 🗑️  Uninstall
[8] 🚪 Exit
```

Every choice rebuilds your banner instantly. Restart Termux (or run `source ~/.bashrc`) to see prompt changes.

### Uninstall (without the menu)

```bash
bash uninstall.sh
```

## 🛠️ Files

```
termux-banner-tool/
├── install.sh      # interactive installer / customizer menu
├── uninstall.sh    # standalone uninstaller
├── banners.sh      # 35 logo styles  (BANNER_ORDER + BANNER_FONT + BANNER_FRAME)
├── prompts.sh      # 35 prompt signs (PROMPT_ORDER + PROMPT_PS1, {1}{2}{3}{W}{X} tokens)
├── colors.sh       # 10 themes       (THEME_ORDER + THEME_COLORS)
├── README.md
└── LICENSE
```

Installed data lives in `~/.termux-banner-tool/` (`banner.sh`, `config`, `backups/`).
Your previous `.bashrc` is always backed up to `~/.termux-banner-tool/backups/` before any change.

## ➕ Add your own styles

**New banner style** — append to `banners.sh`:

```bash
BANNER_ORDER+=( "My Cool Font" )
BANNER_FONT["My Cool Font"]="figlet:slant"   # or "toilet:future"
BANNER_FRAME["My Cool Font"]="stars"         # none | line | stars | box
```

**New prompt sign** — append to `prompts.sh` (`{1}{2}{3}` = theme colors, `{W}` = white, `{X}` = reset):

```bash
PROMPT_ORDER+=( "My Sign" )
PROMPT_PS1["My Sign"]='{1}\w{X} {2} small text here
```

**New color theme** — append to `colors.sh` (colors cycle per logo line):

```bash
THEME_ORDER+=( "My Theme 🎆" )
THEME_COLORS["My Theme 🎆"]='\e[1;31m|\e[1;36m|\e[1;37m'
```

## 📝 Notes

- Very wide logos (e.g. Heavy Block, Lean) may wrap on narrow phone screens — pinch-zoom out, or pick a Compact style.
- Prompts using `\n` (like *Box Two-Line*) take two terminal lines by design.

## 📄 License

MIT — see [LICENSE](LICENSE). Made with ❤️ for the Termux community.
