<img alt="" align="left" src="https://badges.pufler.dev/visits/pandas-id/termux-dotfiles"/> <img alt="" align="left" src="https://img.shields.io/github/repo-size/pandas-id/termux-dotfiles"/>

# Hi,terima kasih telah berkunjung ke repository ini

Ini adalah dotfiles untuk konfigurasi Termux saya.Saya membuat konfigurasi ini senyaman dan seringan mungkin untuk digunakan.

Berikut beberapa beberapa alat pendukung yang saya gunakan

- **Shell**  • [zsh](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH) + [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh) framework + Plugin
- **Prompt** • [powerlevel10k](https://github.com/romkatv/powerlevel10k)
- **Text Editor**  • [Neovim](https://neovim.io/) + Plugin

# Instalasi
<details>
<summary>Zsh Shell</summary>

```
$ pkg install zsh
```
</details>

<details>
<summary>Oh-my-zsh & Plugin <kbd>optional</kbd></summary>

```sh
$ sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
$ git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
$ git clone https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```
</details>

<details>
<summary>Powerlevel10k</summary>

> **Perhatian**: Perintah di bawah baru akan bekerja jika Anda telah memasang [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh).

```
$ git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```
</details>

<details>
<summary>Neovim & Plugin</summary>

> Untuk konfigurasi dan cara pemasangan plugin silahkan lihat [nvimrc](https://github.com/pandas-id/nvimrc) punya saya atau Anda juga bisa menyesuaikannya sendiri sesuai kebutuhan.

```
$ pkg install neovim
```
</details>

# Konfigurasi

<details>
<summary>Tema</summary>

```sh
$ chcolor
```
</details>

<details>
<summary>Font</summary>

> Repository ini hanya memiliki satu huruf yaitu *Nerd Font Complete Mono*.Jika Anda ingin menggunakan huruf sendiri,cukup unduh huruf yang Anda inginkan lalu pindahkan ke folder **.termux/fonts/MyFont**

```
$ chfont
```
</details>
