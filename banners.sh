#!/data/data/com.termux/files/usr/bin/bash
# ═══════════════════════════════════════════════════════════
#  TERMUX BANNER TOOL - BANNER STYLES (35 logo styles)
#  Format: "renderer:font"  (figlet = .flf fonts, toilet = .tlf fonts)
#  Frame: none | line | stars | box
#  All fonts below were tested on Termux (figlet 2.2.5 / toilet 0.3)
# ═══════════════════════════════════════════════════════════

BANNER_ORDER=(
  "Slant Hacker"
  "Bold Big"
  "Classic Standard"
  "Shadow 3D"
  "Handwriting"
  "Compact Small"
  "Poster Banner"
  "Bubbles"
  "Digital Clock"
  "Lean Machine"
  "Tiny Mini"
  "Small Script"
  "Small Shadow"
  "Small Slant"
  "Heavy Block"
  "Circled Letters"
  "Wide Fullwidth"
  "Pagga Art"
  "Big Letter"
  "Future Style"
  "Embossed"
  "Embossed 2"
  "Mono Blocks"
  "Small Blocks"
  "Braille Dots"
  "Slant + Star Frame"
  "Big + Box Frame"
  "Standard + Line Frame"
  "Shadow + Star Frame"
  "Banner + Box Frame"
  "Script + Line Frame"
  "Lean + Star Frame"
  "Bubble + Line Frame"
  "Digital + Box Frame"
  "Mini + Star Frame"
)

declare -A BANNER_FONT
declare -A BANNER_FRAME

# --- figlet fonts (15) ---
BANNER_FONT["Slant Hacker"]="figlet:slant";          BANNER_FRAME["Slant Hacker"]="none"
BANNER_FONT["Bold Big"]="figlet:big";                BANNER_FRAME["Bold Big"]="none"
BANNER_FONT["Classic Standard"]="figlet:standard";   BANNER_FRAME["Classic Standard"]="none"
BANNER_FONT["Shadow 3D"]="figlet:shadow";            BANNER_FRAME["Shadow 3D"]="none"
BANNER_FONT["Handwriting"]="figlet:script";          BANNER_FRAME["Handwriting"]="none"
BANNER_FONT["Compact Small"]="figlet:small";         BANNER_FRAME["Compact Small"]="none"
BANNER_FONT["Poster Banner"]="figlet:banner";        BANNER_FRAME["Poster Banner"]="none"
BANNER_FONT["Bubbles"]="figlet:bubble";              BANNER_FRAME["Bubbles"]="none"
BANNER_FONT["Digital Clock"]="figlet:digital";       BANNER_FRAME["Digital Clock"]="none"
BANNER_FONT["Lean Machine"]="figlet:lean";           BANNER_FRAME["Lean Machine"]="none"
BANNER_FONT["Tiny Mini"]="figlet:mini";              BANNER_FRAME["Tiny Mini"]="none"
BANNER_FONT["Small Script"]="figlet:smscript";       BANNER_FRAME["Small Script"]="none"
BANNER_FONT["Small Shadow"]="figlet:smshadow";       BANNER_FRAME["Small Shadow"]="none"
BANNER_FONT["Small Slant"]="figlet:smslant";         BANNER_FRAME["Small Slant"]="none"
BANNER_FONT["Heavy Block"]="figlet:block";           BANNER_FRAME["Heavy Block"]="none"

# --- toilet fonts (10) ---
BANNER_FONT["Circled Letters"]="toilet:circle";      BANNER_FRAME["Circled Letters"]="none"
BANNER_FONT["Wide Fullwidth"]="toilet:wideterm";     BANNER_FRAME["Wide Fullwidth"]="none"
BANNER_FONT["Pagga Art"]="toilet:pagga";             BANNER_FRAME["Pagga Art"]="none"
BANNER_FONT["Big Letter"]="toilet:letter";           BANNER_FRAME["Big Letter"]="none"
BANNER_FONT["Future Style"]="toilet:future";         BANNER_FRAME["Future Style"]="none"
BANNER_FONT["Embossed"]="toilet:emboss";             BANNER_FRAME["Embossed"]="none"
BANNER_FONT["Embossed 2"]="toilet:emboss2";          BANNER_FRAME["Embossed 2"]="none"
BANNER_FONT["Mono Blocks"]="toilet:mono9";           BANNER_FRAME["Mono Blocks"]="none"
BANNER_FONT["Small Blocks"]="toilet:smblock";        BANNER_FRAME["Small Blocks"]="none"
BANNER_FONT["Braille Dots"]="toilet:smbraille";      BANNER_FRAME["Braille Dots"]="none"

# --- framed specials (10) ---
BANNER_FONT["Slant + Star Frame"]="figlet:slant";    BANNER_FRAME["Slant + Star Frame"]="stars"
BANNER_FONT["Big + Box Frame"]="figlet:big";         BANNER_FRAME["Big + Box Frame"]="box"
BANNER_FONT["Standard + Line Frame"]="figlet:standard"; BANNER_FRAME["Standard + Line Frame"]="line"
BANNER_FONT["Shadow + Star Frame"]="figlet:shadow";  BANNER_FRAME["Shadow + Star Frame"]="stars"
BANNER_FONT["Banner + Box Frame"]="figlet:banner";   BANNER_FRAME["Banner + Box Frame"]="box"
BANNER_FONT["Script + Line Frame"]="figlet:script";  BANNER_FRAME["Script + Line Frame"]="line"
BANNER_FONT["Lean + Star Frame"]="figlet:lean";      BANNER_FRAME["Lean + Star Frame"]="stars"
BANNER_FONT["Bubble + Line Frame"]="figlet:bubble";  BANNER_FRAME["Bubble + Line Frame"]="line"
BANNER_FONT["Digital + Box Frame"]="figlet:digital"; BANNER_FRAME["Digital + Box Frame"]="box"
BANNER_FONT["Mini + Star Frame"]="figlet:mini";      BANNER_FRAME["Mini + Star Frame"]="stars"
