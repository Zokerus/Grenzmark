# Grenzmark – Verteidige das Idyll

**Grenzmark** ist ein kleines, veröffentlichbares 3D-RPG-Testspiel, entwickelt mit der [Godot Engine](https://godotengine.org/). Es dient der praktischen Erprobung zentraler Spielsysteme wie **Kampf**, **Crafting** und **Ressourcensammeln** in einem begrenzten Areal, das ein kleines Dorf mit Umgebung umfasst.

Low-Poly-Assets stammen aus frei verfügbaren Assetpacks, u. a. von:
- [Kenny.nl](https://kenney.nl/assets)
- [Kay Lousberg (itch.io)](https://kaylousberg.itch.io)

---

## 🎮 Ziel des Spiels

Der Spieler erkundet eine Grenzmark mit:
- einem kleinen **Dorf**
- einem **Waldstück**
- einer **alten Mine**
- einem **Fluss**
- Feldern und einer **Mühle**

Dabei gilt es, Ressourcen zu sammeln, Ausrüstung zu verbessern und sich gegen regelmäßig spawnende Gegner zu behaupten.

---

## 🧪 Prototyp-Status

Dieses Projekt ist als **iterativer Gameplay-Prototyp** angelegt.

Implementierte Systeme gelten als:
- ✅ funktional vorbereitet
- ❌ nicht als final oder „polished“

Verbesserungen am Spielgefühl (z. B. Smoothing, Feintuning, Animationen)
werden **bewusst in späteren Iterationen** als eigene Aufgaben behandelt,
um den Prototyping-Fokus nicht zu verlieren.

---

## 🧱 Hauptsysteme

- 🔪 **Echtzeit-Kampfsystem** (Nahkampf mit Parieren und Treffereffekten)
- ⚒️ **Crafting** (Ressourcenabbau, Herstellung von Waffen und Tränken)
- 🌿 **Sammeln** (Holz, Erze, Juwelen, Kräuter)
- 🏘️ **Weltinteraktion** (begrenztes, aber organisches Areal)

> Spätere Erweiterung möglich: Magie, Quests, NPC-Interaktionen

---

## 🛠️ Projektstatus

| System         | Status          |
|----------------|-----------------|
| Welt-Layout    | 🔄 In Arbeit     |
| Bewegung       | ✅ Implementiert |
| Kampf          | 🔄 Basis steht   |
| Ressourcen     | 🔄 Grundfunktionen |
| Crafting       | ⏳ Geplant       |

Aktuelle Entwicklungs-Roadmap findest du im [Project-Board](../../projects).

---

## 🎮 Steuerung (Prototype)

> Hinweis: Mausblick (Look) wird in Godot über **MouseMotion** umgesetzt und ist nicht als Axis in der InputMap bindbar.

### Keyboard & Mouse
- **WASD** – Bewegung
- **Maus** – Kamera / Blick
- **E** – Interagieren
- **LMB** – Angriff
- **RMB** – Blocken / Parieren
- **I** – Inventar (Prototype)
- **J** – Tagebuch (Prototype)
- **ESC** – Pause / Menü
- **F3** – Debug (optional)

### Gamepad (Basis)
- **Left Stick** – Bewegung
- **Right Stick** – Kamera / Blick
- **A / X** – Interagieren
- **RT / R2** – Angriff
- **LT / L2** – Blocken / Parieren

> UI-Actions per Gamepad sind teilweise noch nicht vollständig belegt (wird in Sprint 1/2 ergänzt).


---

## 🚀 Projekt einrichten (lokal)

Voraussetzung: [Godot 4.5](https://godotengine.org/download)

```bash
git clone https://github.com/Zokerus/Grenzmark.git
cd grenzmark
# Öffne das Projekt in Godot