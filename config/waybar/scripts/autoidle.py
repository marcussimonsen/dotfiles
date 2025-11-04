#!/usr/bin/env python
import json
import argparse
import subprocess


def get_status():
    """Returns current status of hypridle (1 if enabled, 0 otherwise)"""
    inactive = subprocess.run(args="systemctl --user status hypridle | grep -ci 'inactive'", shell=True, capture_output=True, text=True)
    return 1 - int(inactive.stdout)


def toggle_status(current_status):
    if current_status == 0:
        subprocess.run(args="systemctl --user start hypridle", shell=True)
    elif current_status == 1:
        subprocess.run(args="systemctl --user stop hypridle", shell=True)


def main():
    parser = argparse.ArgumentParser(description="Hypridle waybar helper util")
    parser.add_argument("command", nargs="?", default=None)

    args = parser.parse_args()

    status = get_status()

    if args.command == "toggle":
        toggle_status(status)
        return

    icon = "󰤄" if status else ""

    print(json.dumps({
        "text": icon,
        "class": "autoidle"
    }))



if __name__ == "__main__":
    main()
