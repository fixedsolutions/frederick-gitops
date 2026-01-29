python3 - <<'PY'
import glob, sys
import yaml

files = ["default.yml"] + sorted(glob.glob("teams/*.yml")) + sorted(glob.glob("lib/**/*.yml", recursive=True))
bad = []
for f in files:
    try:
        with open(f, "r", encoding="utf-8") as fp:
            yaml.safe_load(fp)
    except Exception as e:
        bad.append((f, str(e)))

if bad:
    for f,e in bad:
        print(f"\n--- YAML parse FAILED: {f}\n{e}")
    sys.exit(1)

print("All YAML parsed OK")
PY
