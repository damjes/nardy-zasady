# Nardy — zasady gry

Oficjalna kodyfikacja zasad gry w nardy (backgammon, tryktrak, tabla, tavla) w języku polskim.

Dokument powstał z potrzeby — brakowało kompletnego, pisemnego opisu zasad po polsku. Obejmuje wszystko: od sprzętu, przez reguły rozgrywki, aż po standardy turniejowe.

## Pobieranie

Gotowy PDF jest dostępny w zakładce [Releases](../../releases/latest).

## Zawartość

- Wyposażenie: plansza, kostki, żetony, kostka podwojenia, zegary
- Układ startowy i cel gry
- Zasady poruszania się pionkami
- Zbijanie i blokowanie
- Zdejmowanie pionków z planszy
- Kostka podwojenia (reguła Crawforda, Beavera)
- Systemy czasowe: Simple Delay, Fischer, Bronstein
- Notacja ruchów i rzutów
- Zasady turniejowe
- FAQ — 13+ odpowiedzi na często zadawane pytania
- Diagramy plansz i schematów gry

## Budowanie

### Wymagania

| Narzędzie | Opis |
|-----------|------|
| [Typst](https://typst.app/) | Kompilator dokumentu |
| [draw.io Desktop](https://github.com/jgraph/drawio-desktop/releases) | Generowanie diagramów |
| [Iosevka Term Slab Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases) | Czcionka monospacjowa |
| [Libertinus Serif](https://github.com/alerque/libertinus/releases) | Czcionka szeryfowa (główna) |
| GNU Make | Automatyzacja budowania |
| `xvfb-run` | Wirtualny ekran dla draw.io (Linux) |

### Instalacja zależności (Ubuntu/Debian)

```bash
# Zależności systemowe
sudo apt-get install -y xvfb libgbm1 libasound2t64

# Typst — pobierz najnowszą wersję
wget https://github.com/typst/typst/releases/latest/download/typst-x86_64-unknown-linux-musl.tar.xz
tar xf typst-x86_64-unknown-linux-musl.tar.xz
sudo mv typst-x86_64-unknown-linux-musl/typst /usr/local/bin/

# draw.io Desktop — pobierz najnowszą wersję .deb
wget https://github.com/jgraph/drawio-desktop/releases/latest/download/drawio-amd64-<WERSJA>.deb
sudo apt-get install -y ./drawio-amd64-<WERSJA>.deb

# Iosevka Term Slab Nerd Font
wget https://github.com/ryanoasis/nerd-fonts/releases/latest/download/IosevkaTermSlab.tar.xz
mkdir -p ~/.local/share/fonts/IosevkaTermSlab
tar xf IosevkaTermSlab.tar.xz -C ~/.local/share/fonts/IosevkaTermSlab
fc-cache -f
```

### Budowanie

```bash
# Zbuduj nardy.pdf (domyślny cel)
make

# Lub jawnie
make nardy.pdf

# Tylko diagramy
make schematy.pdf

# Usuń wygenerowane pliki
make clean
```

Na Linuksie draw.io wymaga wirtualnego ekranu — jeśli budujesz w środowisku bez GUI:

```bash
xvfb-run make
```

### Kolejność kroków

1. `schematy.drawio` → `schematy.pdf` (draw.io)
2. `nardy.typ` + `schematy.pdf` → `nardy.pdf` (Typst)

## CI/CD

GitHub Actions automatycznie buduje PDF przy każdym wypchnięciu tagu w formacie `v.*` i tworzy nowe wydanie z plikiem `nardy.pdf`.

Ręczne uruchomienie jest też możliwe przez zakładkę **Actions → Build and Release PDF → Run workflow**.

## Licencja

Projekt objęty licencją **DamjesaP 2.0** (Damjesa License v. 2.0) — zob. [LICENSE.pl.md](LICENSE.pl.md).

Licencja zapewnia cztery podstawowe wolności: używania, studiowania i modyfikowania, dystrybucji oraz udoskonalania. Prace pochodne muszą zachować te wolności (copyleft).

Copyleft 2025 wiel. Damjes
