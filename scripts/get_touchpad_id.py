#!/usr/bin/python

import subprocess
import sys

def get_touchpad_id():
    # full command `xinput list | grep Touchpad`
    p1 = subprocess.Popen(
        ["xinput", "list"], stdout=subprocess.PIPE, stderr=subprocess.STDOUT
    )

    p2 = subprocess.Popen(
        ["grep", "Touchpad"], stdin=p1.stdout, stdout=subprocess.PIPE,
        stderr=subprocess.STDOUT
    )

    p1.stdout.close()
    reply = p2.communicate()[0]
    p1.wait()

    for s in reply.decode("utf-8").split():
        if s.startswith("id"):
            return int(s[3:])

    raise Exception("touchpad id not found")

if __name__=="__main__":
    try:
        print(get_touchpad_id())
    except Exception as e:
        sys.exit(1)

    sys.exit(0)
