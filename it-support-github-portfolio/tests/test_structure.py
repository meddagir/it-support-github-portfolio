from pathlib import Path
root = Path(__file__).resolve().parents[1]
projects = [
    'windows-support-automation', 'active-directory-lab',
    'endpoint-management', 'network-troubleshooting',
    'linux-admin-scripts', 'aws-cloud-infrastructure',
]
for project in projects:
    assert (root / project / 'README.md').is_file(), project
assert (root / 'SECURITY.md').is_file()
print('Project structure OK')
