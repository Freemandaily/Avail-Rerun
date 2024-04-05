import subprocess

def main():
    command = "curl -sL1 avail.sh | bash"
    subprocess.Popen([command],shell=True)

if __name__ == "__main__":
    main()
