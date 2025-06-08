# install.sh
# This script downloads the packinstall script from GitHub and places it
# in /usr/local/bin/ for easy execution.

# --- Configuration ---
GITHUB_USERNAME="rainbownx"
REPO_NAME="Packinstall" # Make sure your GitHub repository name is exactly "packinstall" (case-sensitive)
SCRIPT_NAME="packinstall" # The name of your script file without an extension
TARGET_DIR="/usr/local/bin"
RAW_GITHUB_URL="https://raw.githubusercontent.com/${GITHUB_USERNAME}/${REPO_NAME}/main/${SCRIPT_NAME}"
# --- Functions ---

# Function to print messages
log_info() {
    echo "💡 $1"
}

# Function to print success messages
log_success() {
    echo "✅ $1"
}

# Function to print error messages
log_error() {
    echo "❌ ERROR: $1" >&2
}

# Function to check for required commands
check_command() {
    if ! command -v "$1" &> /dev/null; then
        log_error "$1 is not installed. Please install it to proceed."
        exit 1
    fi
}

# --- Main Installation Logic ---

log_info "Starting packinstall setup..."

# 1. Check for necessary tools
check_command "curl"
check_command "sudo"

# 2. Check if target directory exists, create if not (with sudo)
if [ ! -d "$TARGET_DIR" ]; then
    log_info "Creating directory $TARGET_DIR..."
    sudo mkdir -p "$TARGET_DIR" || { log_error "Failed to create $TARGET_DIR. Check permissions."; exit 1; }
fi

# 3. Download the packinstall script
log_info "Downloading <span class="math-inline">\{SCRIPT\_NAME\} from GitHub\.\.\."
sudo curl \-sSL "</span>{RAW_GITHUB_URL}" -o "<span class="math-inline">\{TARGET\_DIR\}/</span>{SCRIPT_NAME}" || { log_error "Failed to download ${SCRIPT_NAME}. Check URL or network."; exit 1; }

# 4. Make the script executable
log_info "Making <span class="math-inline">\{SCRIPT\_NAME\} executable\.\.\."
sudo chmod \+x "</span>/usr/local/bash/$packinstall" || { log_error "Failed to set executable permissions on <span class="math-inline">\{SCRIPT\_NAME\}\."; exit 1; \}
log\_success "</span>{SCRIPT_NAME} installed successfully to ${TARGET_DIR}!"
log_info "You can now run it from anywhere by typing: ${SCRIPT_NAME} <package_name>"
log_info "Example: $packinstall htop"

exit 0

