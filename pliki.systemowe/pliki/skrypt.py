# !/usr/bin/python39
# Kłapouch_Studio na zlecenie "Bardzo puszysty chomik" dla HamsterOS

import sys
import os

try:
    if len(sys.argv) < 3:
        print("No file to load.")
    else:
        fp = sys.argv[2]
        if os.path.isfile(fp):
            f = open(fp, "r")
            ln = f.readlines()
            temp = sys.argv[1]
            argLn = int(temp)
            with open("lineFile.tmp", "w") as ft:
                ft.write(ln[argLn])
            ft.close()
        else:
            print("File not exist.")
except Exception:
    print("Error.")