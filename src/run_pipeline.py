import subprocess
import sys

steps = [
    "extract.py",
    "transform.py",
    "load.py",
    "validate.py"
]

for step in steps:
    print(f"\n=== Running {step} ===")

    result =subprocess.run(
        [sys.executable, f"src/{step}"]
    )

    if result.returncode != 0:
        print(f"\n Pipeline failed at step: {step}")
        sys.exit(1)

print("===================================")
print("Pipeline completed successfully!")
print("===================================")