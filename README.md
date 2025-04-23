🔍 LogWatcher


LogWatcher est un outil léger en Bash pour analyser rapidement les logs Apache/Nginx : IP suspectes, erreurs 404, flood, etc.

⚙️ Fonctionnalités
📊 Classement des IP les plus actives

❌ Détection des erreurs 404 fréquentes

🚨 Alerte sur les IP générant plus de 100 requêtes

📁 Génération automatique d’un rapport lisible (output/rapport.txt)

📁 Structure
bash
Copier
Modifier
.
├── logs/
│   └── access.log       # Log brut à analyser
├── output/
│   └── rapport.txt      # Rapport généré
└── logwatcher.sh        # Script principal
🚀 Utilisation
bash
Copier
Modifier
bash logwatcher.sh
Le script va analyser logs/access.log et générer un fichier output/rapport.txt.

🔧 Dépendances
Bash

awk, grep, sort, uniq, head

⚠️ Compatible Linux / macOS / Git Bash sur Windows

🧠 Idée d'amélioration
Export HTML ou CSV 📄

Détection de brute force 🔐

Intégration CRON pour analyse quotidienne ⏱️

👤 Auteur
Souleymen Gld
📎 LinkedIn
💾 GitHub

📄 Licence
MIT – Faites-en ce que vous voulez, mais créditez ✌️

