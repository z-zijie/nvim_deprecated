# The Config for neovim

### Requirements
1. neovim
2. git
3. GCC
4. Clang
5. Clangd
6. Python3
7. clang-format

### How to install
```sh
cd ~/.config/
git clone https://github.com/z-zijie/nvim.git
```
*After cloned the repo, we should prepare environment for YCM*
#### Install YCM on Linux 64-bit
 - Install YCM plugin(by`:PlugInstall`)
 - Install cmake, vim and python
    ```sh
    sudo apt install build-essential cmake vim-nox python3-dev
    ```
 - Install mono-complete, go, node, java and npm
    ```sh
    sudo apt install mono-complete golang nodejs default-jdk npm
    ```
 - Compile YCM
    ```sh
    cd ~/.config/nvim/plugged/YouCompleteMe
    python3 install.py --all
    ```
