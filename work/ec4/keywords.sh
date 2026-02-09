#!/usr/bin/env bash
set -euo pipefail

# Inserta $Id$ en archivos fuente sin duplicarlo.
# - .c/.h => /* $Id$ */
# - Makefile/makefile => # $Id$
# - .sh => después del shebang si existe, sino al inicio

root="${1:-.}"

insert_line_top() {
  local file="$1"
  local line="$2"
  # Inserta al inicio (línea 1)
  sed -i "1i$line" "$file"
}

insert_line_after_shebang() {
  local file="$1"
  local line="$2"
  # Inserta en línea 2
  sed -i "2i$line" "$file"
}

while IFS= read -r -d '' f; do
  # Evita tocar metadatos CVS
  if [[ "$f" == *"/CVS/"* ]]; then
    continue
  fi

  # No duplicar
  if grep -q '\$Id\$' "$f"; then
    continue
  fi

  base="$(basename "$f")"
  case "$base" in
    Makefile|makefile)
      insert_line_top "$f" "# \$Id\$"
      ;;
    *.sh)
      if head -n 1 "$f" | grep -q '^#!'; then
        insert_line_after_shebang "$f" "# \$Id\$"
      else
        insert_line_top "$f" "# \$Id\$"
      fi
      ;;
    *.c|*.h)
      insert_line_top "$f" "/* \$Id\$ */"
      ;;
  esac
done < <(find "$root" -type f \( -name "*.c" -o -name "*.h" -o -name "Makefile" -o -name "makefile" -o -name "*.sh" \) -print0)

echo "OK: keywords insertados (sin duplicados)."

