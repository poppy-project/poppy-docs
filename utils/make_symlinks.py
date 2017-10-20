# python3.6
import glob
import os

destination = ["fr", "de", "es", "nl"]
extensions = [".jpg", ".gif", ".png", ".JPG", ".PNG", ".GIF"]

for ext in extensions:
    for src in glob.iglob('en/**/*%s' % ext, recursive=True):
        for lang in destination:
            dst = src.replace('en', lang)
            # Create directory if it doesn't exist
            if not os.path.exists(os.path.dirname(dst)):
                try:
                    os.makedirs(os.path.dirname(dst))
                except OSError as exc:
                    pass
            relative_path = os.path.relpath('%s/' % src, os.path.dirname(dst))

            # If translation have a copied image -> don't overwrite
            if os.path.isfile(dst):
                print("%s already exist" % dst)
                break

            print(relative_path)
            os.symlink(relative_path, dst)
