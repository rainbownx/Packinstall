# 📦 packinstall

**A universal Bash script to simplify package installation across diverse Linux distributions.**

`packinstall` automatically detects your Linux distribution and uses the appropriate package manager (like `apt`, `dnf`, `pacman`, `zypper`, `emerge`, or `apk`) to install the specified package. Say goodbye to remembering specific commands for each distro!

## ✨ Features

* **Automatic Distribution Detection:** Identifies your OS (e.g., Ubuntu, Fedora, Arch, OpenSUSE, Gentoo, Alpine).
* **Package Manager Agnostic:** Translates a simple `packinstall <package>` into the correct command for your system.
* **Pre-installation Updates:** Automatically updates package lists where necessary (e.g., `apt update`, `pacman -Sy`).
* **Lightweight & Fast:** A single Bash script with no external dependencies (beyond standard system tools).
* **Easy to Use:** Simple command-line interface.

## 🚀 Installation

The easiest way to install `packinstall` is to use the provided `install.sh` script. This script will download `packinstall` and place it in `/usr/local/bin/` so you can run it from anywhere.

1.  **Open your terminal.**
2.  **Download and run the installer script:**

    ```bash
    curl -fsSL [https://raw.githubusercontent.com/YOUR_GITHUB_USERNAME/packinstall/main/install.sh](https://raw.githubusercontent.com/YOUR_GITHUB_USERNAME/packinstall/main/install.sh) | bash
    ```
    *(Remember to replace `YOUR_GITHUB_USERNAME` with your actual GitHub username!)*

3.  **Verify installation:**
    ```bash
    packinstall --version # (Optional: if you add a --version flag to your script later)
    ```
    Or just try installing a package:
    ```bash
    packinstall htop
    ```

## 🛠️ Usage

Once installed, simply run `packinstall` followed by the name of the package you wish to install:

```bash
packinstall <package_name>
# 🌍 Supported Distributions

packinstall aims to support the following major Linux distributions and their derivatives:

    Debian / Ubuntu / Linux Mint / Pop!_OS (uses apt)
    Fedora / CentOS / RHEL / AlmaLinux / Rocky Linux (uses dnf or yum)
    Arch Linux / Manjaro / EndeavourOS (uses pacman)
    OpenSUSE (Leap/Tumbleweed) / SLES (uses zypper)
    Gentoo (uses emerge)
    Alpine Linux (uses apk)

If your distribution is not explicitly listed but is based on one of the above, it might still work. If not, please open an issue!
🤝 Contributing

Contributions are welcome! If you find a bug, have a feature request, or want to improve the script:

    Fork the repository.
    Create a new branch (git checkout -b feature/your-feature).
    Make your changes. 4. Commit your changes (git commit -m 'Add new feature').
    Push to your branch (git push origin feature/your-feature).
    Open a Pull Request.

Please ensure your code adheres to good Bash scripting practices and is well-commented.
📄 License

This project is licensed under the MIT License - see the LICENSE file for details.
