#!/usr/bin/python3
import os
import subprocess

SCRIPT_DIR = "tools"
INSTALL_LOG = "install.log"
ERROR_LOG = "error.log"

def run_scripts(script_dir):
    with open(INSTALL_LOG, "w") as install_log, open(ERROR_LOG, "w") as error_log:
        for file in sorted(os.listdir(script_dir)):
            if file.endswith(".sh"):
                script_path = os.path.join(script_dir, file)
                
                running_msg = f"Running {file} ...\n"
                print(f"\n--- {running_msg.strip()} ---")
                install_log.write(running_msg)
                install_log.flush()

                process = subprocess.Popen(
                    ["bash", script_path],
                    stdout=subprocess.PIPE,
                    stderr=subprocess.STDOUT,
                    text=True
                )

                output = ""
                for line in process.stdout:
                    print(line, end='')  # Nur Terminal ausgeben
                    output += line       # Aber für Fehlerlog merken

                process.wait()
                
                if process.returncode == 0:
                    install_log.write(f"[+] {file}\n")
                else:
                    install_log.write(f"[-] {file}\n")
                    error_log.write(f"[-] {file}\n{output}\n")

                install_log.flush()
                error_log.flush()
        
        install_log.write("*** Install finished ***\n")
        install_log.flush()

    print(f"\nDone. See {INSTALL_LOG} and {ERROR_LOG}")

if __name__ == "__main__":
    run_scripts(SCRIPT_DIR)
