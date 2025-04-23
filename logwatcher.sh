#!/bin/bash

LOG_FILE="logs/access.log"
OUTPUT_FILE="output/rapport.txt"

mkdir -p output

echo "=== Rapport de log $(date) ===" > "$OUTPUT_FILE"

echo -e "\n🌐 IP les plus actives :" >> "$OUTPUT_FILE"
awk '{print $1}' "$LOG_FILE" | sort | uniq -c | sort -nr | head -10 >> "$OUTPUT_FILE"

echo -e "\n❌ Erreurs 404 les plus fréquentes :" >> "$OUTPUT_FILE"
grep "404" "$LOG_FILE" | awk '{print $1}' | sort | uniq -c | sort -nr | head -10 >> "$OUTPUT_FILE"

echo -e "\n⚠️  IP avec plus de 100 requêtes :" >> "$OUTPUT_FILE"
awk '{print $1}' "$LOG_FILE" | sort | uniq -c | awk '$1 > 100' >> "$OUTPUT_FILE"

echo -e "\n✅ Rapport généré dans $OUTPUT_FILE"
