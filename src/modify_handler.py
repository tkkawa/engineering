import os
import time


def print_modified_filenames():
    nowtime = time.time()
    for dirname, subdirs, files in os.walk('.'):
        for filename in files:
            full_path = os.path.join(dirname, filename)
            modified_time = os.stat(full_path).st_mtime
            if nowtime - modified_time < 60:
                print(full_path)


def main():
    print_modified_filenames()


if __name__ == '__main__':
    main()
