import subprocess

class layout:
    def __cmd(cmd : list):
        cmd.insert(0, "tmux")
        subprocess.run(cmd)

    def __selectPane(self, index : int):
        self.__cmd(["select-pane", "-t", str(index)])

    def __split(self, arg : str):
        self.__cmd(["split-window", arg])

    def __split2(self, pane : int, arg : str):
        self.__selectPane(self, pane)
        self.__split(self, arg)

    def __resize(self, pane : int, dir : str, size : int):
        self.__selectPane(self, pane)
        self.__cmd(["resize-pane", dir, str(size)])

    @classmethod
    def code(self):
        self.__split(self, "-h")
        self.__resize(self, 1, "-R", 24)
        self.__split2(self, 2, "-v")
        self.__split2(self, 3, "-h")
        return "Welcome"

import sys
def main(argv):
    if len(argv) != 2:
        return "use [layout] [type]"
    if argv[1] == "code":
        return layout.code()
    else:
        return "layout not found"

if __name__ == "__main__":
    print(main(sys.argv))
