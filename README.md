# Création des table du schema étoile

```bash
clear && dbt run --select tag:schema
```

# Création des vues correspondantes aux requêtes

```bash
clear && dbt run --select tag:queries
```
# Test des modèles

```bash
clear && dbt test --select tag:schema
clear && dbt test --select tag:queries
```