"""Stage only reviewed public files; never publish the portfolio source tree."""
from pathlib import Path
import shutil
import sys

SOURCE = Path(__file__).resolve().parents[1]
MANIFEST = Path(__file__).with_name('public-site-files.txt')


def build(destination):
    destination = Path(destination).resolve()
    if destination == SOURCE or SOURCE in destination.parents or destination in SOURCE.parents:
        raise ValueError('Output must be outside the source tree')
    if destination.exists():
        raise ValueError('Output must not already exist')
    selected = []
    for name in MANIFEST.read_text().splitlines():
        relative = Path(name)
        if relative.is_absolute() or '..' in relative.parts:
            raise ValueError('Unsafe manifest path')
        if relative.parts[0] in {'automation', 'content-drafts', 'synthetic-e2e', 'seo'}:
            raise ValueError('Internal path in public manifest')
        if relative.parts[0] == 'data' and name not in {'data/services.json', 'data/billing.json', 'data/service-images.json'}:
            raise ValueError('Unreviewed data in public manifest')
        source = SOURCE / relative
        if any(part.is_symlink() for part in [source, *source.parents]) or not source.is_file():
            raise ValueError('Missing file or symlink in manifest')
        selected.append((source, relative))
    for source, relative in selected:
        target = destination / relative
        target.parent.mkdir(parents=True, exist_ok=True)
        shutil.copyfile(source, target)
    print(f'Staged {len(selected)} public files')


if __name__ == '__main__':
    build(sys.argv[1])
