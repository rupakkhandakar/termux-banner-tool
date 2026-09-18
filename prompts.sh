#!/data/data/com.termux/files/usr/bin/bash
# ═══════════════════════════════════════════════════════════
#  TERMUX BANNER TOOL - PROMPT STYLES (35 command signs)
#  Tokens: {1} {2} {3} = theme colors, {W} = white, {X} = reset
#  The installer replaces tokens with real PS1 color codes.
#  Keep bash prompt escapes (\w \u \h \$ \n etc.) as-is.
# ═══════════════════════════════════════════════════════════

PROMPT_ORDER=(
  "FPV Arrow"
  "Classic Dollar"
  "Lightning Bolt"
  "Fire Blaze"
  "Skull Dark"
  "Royal Crown"
  "Rocket Launch"
  "Diamond Premium"
  "Ghost Spooky"
  "Ninja Stealth"
  "Root Hash"
  "Time Stamp"
  "Date Power"
  "Double Arrow"
  "Triple Chevron"
  "Cyberpunk"
  "Matrix Code"
  "Box Two-Line"
  "Minimal Dot"
  "Ocean Wave"
  "Night Moon"
  "Super Star"
  "Love Heart"
  "Gamer Mode"
  "Music Note"
  "Coffee Break"
  "Dragon Power"
  "Shield Guard"
  "Sword Battle"
  "Hacker Root"
  "Simple Hash"
  "Arrow Bar"
  "Short Chevron"
  "User Folder"
  "Neon Block"
)

declare -A PROMPT_PS1

PROMPT_PS1["FPV Arrow"]='{1}\w{X} {2}FPV⟩⟩{X} '
PROMPT_PS1["Classic Dollar"]='{1}\u@\h{X}:{2}\w{X}\$ '
PROMPT_PS1["Lightning Bolt"]='{2}⚡{X} {1}\w{X} ❯ '
PROMPT_PS1["Fire Blaze"]='{2}🔥{X} {1}\w{X} ⟩⟩ '
PROMPT_PS1["Skull Dark"]='💀 {1}\w{X} {2}⟩⟩{X} '
PROMPT_PS1["Royal Crown"]='{3}👑{X} {1}\w{X} ❯❯ '
PROMPT_PS1["Rocket Launch"]='🚀 {1}\w{X} {2}➜{X} '
PROMPT_PS1["Diamond Premium"]='💎 {1}\w{X} {3}◆{X} '
PROMPT_PS1["Ghost Spooky"]='👻 {1}\w{X} {2}>{X} '
PROMPT_PS1["Ninja Stealth"]='🥷 {1}\w{X} {3}»{X} '
PROMPT_PS1["Root Hash"]='{1}\u{X}@{2}\h{X}:{3}\w{X}# '
PROMPT_PS1["Time Stamp"]='{3}[\t]{X} {1}\w{X} ❯ '
PROMPT_PS1["Date Power"]='{2}[\d]{X} {1}\w{X} » '
PROMPT_PS1["Double Arrow"]='{1}\w{X} {2}»»{X} '
PROMPT_PS1["Triple Chevron"]='{1}\w{X} {2}❯❯❯{X} '
PROMPT_PS1["Cyberpunk"]='{2}[{1}\u{2}@{1}\w{2}]{X}{3}>_{X} '
PROMPT_PS1["Matrix Code"]='{1}[\u@\h \w]{X}{2}»{X} '
PROMPT_PS1["Box Two-Line"]='{2}┌─[{1}\w{2}]\n└─{3}⟩⟩{X} '
PROMPT_PS1["Minimal Dot"]='{1}•{X} {2}\w{X} '
PROMPT_PS1["Ocean Wave"]='🌊 {1}\w{X} {3}≈≈{X} '
PROMPT_PS1["Night Moon"]='🌙 {1}\w{X} {2}❯{X} '
PROMPT_PS1["Super Star"]='⭐ {1}\w{X} {3}★{X} '
PROMPT_PS1["Love Heart"]='❤️ {1}\w{X} {2}⟩{X} '
PROMPT_PS1["Gamer Mode"]='🎮 {1}\w{X} {2}►{X} '
PROMPT_PS1["Music Note"]='🎵 {1}\w{X} {3}♪{X} '
PROMPT_PS1["Coffee Break"]='☕ {1}\w{X} {2}❯{X} '
PROMPT_PS1["Dragon Power"]='🐉 {1}\w{X} {3}⟩⟩{X} '
PROMPT_PS1["Shield Guard"]='🛡️ {1}\w{X} {2}❯{X} '
PROMPT_PS1["Sword Battle"]='⚔️ {1}\w{X} {3}»{X} '
PROMPT_PS1["Hacker Root"]='{1}root{X}@{2}termux{X}:{3}\w{X}# '
PROMPT_PS1["Simple Hash"]='{1}\w{X} {2}#{X} '
PROMPT_PS1["Arrow Bar"]='{2}─➤{X} {1}\w{X} '
PROMPT_PS1["Short Chevron"]='{1}\W{X} {3}❯❯{X} '
PROMPT_PS1["User Folder"]='{2}\u{X} {1}\w{X} {3}\${X} '
PROMPT_PS1["Neon Block"]='{2}█{X} {1}\w{X} {3}█⟩{X} '
