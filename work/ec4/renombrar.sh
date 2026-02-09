#!/usr/bin/env bash
set -euo pipefail

# Renombra todos los LEE.ME a LEE.PORFAVOR en el working copy CVS.
# CVS no soporta rename real: se hace mv + cvs remove + cvs add

root="${1:-.}"

while IFS= read -r -d '' f; do
  dir="$(dirname "$f")"
  (
    cd "$dir"
    # Renombra archivo en disco
    mv -f "LEE.ME" "LEE.PORFAVOR"

    # CVS: marca el viejo como removido y agrega el nuevo
    cvs remove -f "LEE.ME" >/dev/null
    cvs add "LEE.PORFAVOR" >/dev/null
  )
done < <(find "$root" -type f -name "LEE.ME" -print0)

echo "OK: renombrados LEE.ME -> LEE.PORFAVOR y registrados en CVS (remove/add)."

