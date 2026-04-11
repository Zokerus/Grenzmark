# 🛡️ Grenzmark – Verteidige das Idyll

**Grenzmark** ist ein kleines, fokussiertes 3D-RPG-Testspiel, entwickelt mit der  
[Godot Engine](https://godotengine.org/).

Das Projekt dient der **Erprobung zentraler Spielsysteme und Designprinzipien**
in einem bewusst begrenzten Prototypen – mit dem Ziel zu prüfen,  
ob daraus ein größeres, atmosphärisch tragfähiges Spiel entstehen kann.

Für die visuelle Umsetzung werden bewusst **stilisierten Low-Poly-Assets** genutzt, um
den Fokus auf **Gameplay, Atmosphäre und Systemdesign** zu legen:

- Assets von [Kenney.nl](https://kenney.nl/assets)  
- Assets von [Kay Lousberg](https://kaylousberg.itch.io)

Die Assetwahl erlaubt schnelle Iteration und spätere visuelle Anpassungen,
ohne frühe Designentscheidungen festzuschreiben.

---

## 🎯 Ziel des Prototyps

Der Prototyp soll folgende Fragen beantworten:

- Trägt das **Setting** und die **Atmosphäre**?
- Funktioniert **Entdeckung ohne Marker oder UI-Führung**?
- Ist **Risiko** im Gameplay spürbar und bedeutungsvoll?
- Ist der Ansatz **solo-entwickelbar** und erweiterbar?

**Nicht Ziel** des Prototyps sind:
- Content-Menge oder Balancing
- Politur auf Release-Niveau
- Langzeitmotivation

Der Prototyp ist ein **Erlebnis- und Machbarkeitstest**, kein fertiges Spiel.

---

## Entwicklungsgrundsatz: Funktional vor Feinschliff

Alle Systeme im Prototyp gelten als **funktional**, nicht als abgeschlossen.

Das bedeutet:
- Mechaniken müssen testbar und stabil sein
- Spielgefühl, Smoothing, Balancing und visuelle Feinabstimmung
  werden **bewusst zurückgestellt**
- Verbesserungen erfolgen später über klar definierte Refinement-Aufgaben

Dieser Ansatz dient dazu, frühzeitig Erkenntnisse über
Spielbarkeit, Orientierung und Atmosphäre zu gewinnen,
ohne den Prototyp durch Politur zu verlangsamen.

---

## 🧭 Art des Prototyps

- 🧱 **Vertikaler Slice**  
  Ein vollständiger Gameplay-Loop (Bewegung → Entdeckung → Interaktion → Konsequenz)

- 🗺️ **Horizontaler Slice**  
  Mehrere Systeme in stark vereinfachter, aber echter Form

---

## 🌍 Welt & Umgebung

### Enthalten
- 🏘️ Ein kleines **Dorf** als Orientierungspunkt (3–5 NPCs)
- 🌲 Ein **Waldgebiet** mit Pfaden und Abwegen
- ⛏️ Ein besonderes Areal (z. B. **Mine** oder **See**)
- 🔭 Orientierung über **Landmarken** und Umwelt

### Nicht enthalten
- ❌ Weltkarte oder Minimap  
- ❌ Fast Travel  
- ❌ Mehrere Biome 

---

## Weltlayout v0 (Prototyp)

Der Prototyp nutzt ein klar begrenztes Weltareal in Form eines Talkessels.

### Grundstruktur
- Ein **Talkessel**, umgeben von Bergen, dient als natürliche Begrenzung
- Ein **Flusslauf** bildet die zentrale Orientierungslinie
- Ein kleines **Dorf** liegt auf einer Seite des Flusses
- Ein **Steg** verbindet das Dorf mit der gegenüberliegenden Seite

### Umgebung
- Auf der gegenüberliegenden Flussseite befindet sich ein **Waldgebiet**
- Ein **Weg mit Kreuzung** dient als zentraler Entscheidungspunkt
  - Weg A führt zu einem **Holzfällerlager**
  - Weg B führt zu einer **Mine / einem Minenschacht**

Dieses Layout dient der Erprobung von:
- Orientierung ohne Marker
- natürlicher Weglesbarkeit
- Entdeckung durch Landmarken 

---

## 🧍 Spieler & Perspektive

- Fester Protagonist (keine Charaktererstellung)
- 🎥 Third-Person-Perspektive
- Freie Kamera, optionaler Lock-On

---

## 🚶 Bewegung

### Enthalten
- Gehen / Laufen
- Ausweichen oder Schritt
- Optional: **Sprint oder Schleichen** (reduziert)

### Nicht enthalten
- ❌ Klettern / Parkour
- ❌ Reittiere

---

## ⚔️ Kampf

### Enthalten
- 🔪 Nahkampf (Schwert)
- 👤 1 Gegnertyp (+ einfache Variante)
- 🛡️ Timing-basiertes Blocken / Parieren
- 🔊 Klares Trefferfeedback (Sound & Reaktion)

### Nicht enthalten
- ❌ Fernkampf
- ❌ Magie
- ❌ Combo-Systeme
- ❌ Ausdauer-Management

---

## 🧩 Interaktion & Entdeckung

- Interaktion mit Objekten und NPCs
- Umweltstorytelling (Spuren, Hinweise, Situationen)
- Entscheidungen mit spürbaren Konsequenzen
- **Keine UI-basierte Führung**

---

## 🧑‍🤝‍🧑 NPCs & Quests

- 3–5 NPCs
- 1 Quest mit optionaler Variante oder alternativer Lösung
- Lineare Dialoge
- Konsequenzen werden in Welt oder Text sichtbar

---

## 📖 Tagebuch / Questübersicht

### Grundsatz
Es gibt **kein klassisches Questlog**.

Stattdessen führt der Charakter ein **diegetisches Tagebuch**.

> Das Spiel gibt keine Ziele vor.  
> Es erinnert nur daran, was der Charakter erlebt hat.

---

### 🧠 Zweck
- Gedächtnisstütze für den Spieler
- Orientierung ohne Marker oder Checklisten
- Kein steuerndes UI-Element

---

### 🗝️ Zugriff
- Bewusstes Öffnen über ein Menü
- Keine Popups, Marker oder Reminder

---

### 📝 Aufbau eines Eintrags

1. **Titel / Ein-Satz-Zusammenfassung**  
   _„Ein Mann sucht seinen Bruder.“_

2. **Zusammenfassung**
   - 2–4 Sätze
   - Nur gesicherte Informationen
   - Keine Hinweise oder Zielvorgaben

3. **Gesprächsnotizen**
   - Paraphrasierte Dialoge
   - Stichpunkte
   - Subjektiv aus Sicht des Charakters

---

### 📏 Regeln
- Einträge aktualisieren sich nur durch:
  - Gespräche
  - erlebte Ereignisse
- ❌ Kein Fortschrittsstatus
- ❌ Keine Aufgabenlisten
- ❌ Keine Questmarker

---

### 🧪 Prototyp-Umfang
- 1–2 Tagebuch-Einträge
- Inhalte statisch oder einfach datengetrieben
- Persistenz optional

---

## 🎒 Inventar & Crafting

- Einfaches Inventar
- ⚒️ Ein simples Handwerk  
  (z. B. Verbessern eines Gegenstands)

---

## 🖥️ UI & Präsentation

- Minimal-HUD (z. B. Gesundheit)
- Dezentes Interaktions-Feedback
- 🐛 Debug-Overlay für Entwicklung

---

## 🚫 Explizit **nicht** Teil des Prototyps

- Magiesystem
- Skilltrees
- Questmarker
- Open-World-Füllcontent
- Polierte Animationen
- Komplexes Savegame-System

---

## ✅ Erfolgskriterium

Der Prototyp gilt als erfolgreich, wenn:

- Erkundung neugierig macht
- Risiko spürbar ist
- Orientierung ohne Marker funktioniert
- klar wird, dass daraus ein größeres Spiel entstehen kann

---

## 🚀 Projekt einrichten (lokal)

Voraussetzung: [Godot 4.x](https://godotengine.org/download)

```bash
git clone https://github.com/Zokerus/Grenzmark.git
cd Grenzmark
# Projekt in Godot öffnen
