import glob

functions = glob.glob("*.mcfunction")

for _file in functions:
    with open(_file,mode="w") as f:
        f.write("{}")