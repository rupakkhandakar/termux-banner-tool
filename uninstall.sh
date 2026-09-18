#!/data/data/com.termux/files/usr/bin/bash
# ═══════════════════════════════════════════════════════════
#  TERMUX BANNER TOOL - STANDALONE UNINSTALLER
#  Usage: bash uninstall.sh
#  Restores your original .bashrc and removes all tool files.
# ═══════════════════════════════════════════════════════════

TOOL_DIR="$HOME/.termux-banner-tool"
BACKUP_DIR="$TOOL_DIR/backups"

echo "🗑️  Uninstalling Termux Banner Tool..."

latest="$(ls -t "$BACKUP_DIR"/bashrc.backup.* 2>/dev/null | head -n 1)"
if [[ -n "$latest" ]]; then
  cp "$latest" "$HOME/.bashrc"
  echo "✅ Original .bashrc restored from backup."
else
  printf '%s\n' "PS1='\\w \\$ '" > "$HOME/.bashrc"
  echo "✅ No backup found — wrote a clean default .bashrc."
fi

rm -rf "$TOOL_DIR"
echo "✅ Tool files removed."
echo ""
echo "Restart Termux to finish. You can also delete this repo folder."
