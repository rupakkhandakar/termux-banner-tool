#!/data/data/com.termux/files/usr/bin/bash
# ═══════════════════════════════════════════════════════════
#  TERMUX BANNER TOOL - COLOR THEMES (10 themes)
#  Each theme: "color1|color2|color3..." (cycled per logo line)
# ═══════════════════════════════════════════════════════════

# Ordered list (menu order)
THEME_ORDER=(
  "Ocean 🌊"
  "Sunset 🌅"
  "Candy 🍬"
  "Forest 🌲"
  "Royal 👑"
  "Neon ⚡"
  "Inferno 🔥"
  "Mint 🌿"
  "Ghost 👻"
  "Rainbow 🌈"
)

declare -A THEME_COLORS

# 1. Ocean - green / blue / cyan (brightest on black)
THEME_COLORS["Ocean 🌊"]='\e[1;32m|\e[1;34m|\e[1;36m'
# 2. Sunset - red / yellow / magenta
THEME_COLORS["Sunset 🌅"]='\e[1;31m|\e[1;33m|\e[1;35m'
# 3. Candy - magenta / cyan / yellow
THEME_COLORS["Candy 🍬"]='\e[1;35m|\e[1;36m|\e[1;33m'
# 4. Forest - green / yellow / blue
THEME_COLORS["Forest 🌲"]='\e[1;32m|\e[1;33m|\e[1;34m'
# 5. Royal - blue / magenta / cyan
THEME_COLORS["Royal 👑"]='\e[1;34m|\e[1;35m|\e[1;36m'
# 6. Neon - cyan / magenta / green
THEME_COLORS["Neon ⚡"]='\e[1;36m|\e[1;35m|\e[1;32m'
# 7. Inferno - red / magenta / cyan
THEME_COLORS["Inferno 🔥"]='\e[1;31m|\e[1;35m|\e[1;36m'
# 8. Mint - green / cyan / white
THEME_COLORS["Mint 🌿"]='\e[1;32m|\e[1;36m|\e[1;37m'
# 9. Ghost - white / gray / cyan
THEME_COLORS["Ghost 👻"]='\e[1;37m|\e[0;37m|\e[1;36m'
# 10. Rainbow - all six colors
THEME_COLORS["Rainbow 🌈"]='\e[1;31m|\e[1;33m|\e[1;32m|\e[1;36m|\e[1;34m|\e[1;35m'

# Shared codes (always available)
THEME_WHITE='\e[1;37m'
THEME_RESET='\e[0m'
