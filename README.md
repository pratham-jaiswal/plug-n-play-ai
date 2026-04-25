# Plug & Play AI ⚡

**Plug & Play AI** is a _fully air-gapped, zero-dependency, plug-and-play Local AI environment_ designed to run seamlessly from your **local hard drive** or a **portable USB/SSD**. It bypasses complex installations by natively executing large language models directly on your hardware with no internet required.

With a unified architecture, you can initialize your AI models once and choose to keep them on your system or carry them with you across Windows, macOS, Linux, and Android.

🎥 **Watch the Original Setup & Demo Video:** [https://youtu.be/60PSXsoXc8A](https://youtu.be/60PSXsoXc8A)

<div align="center" style="border: 1px solid #30363d; border-radius: 8px; padding: 20px; margin-bottom: 30px;">
  <p style="color: #e6edf3; font-weight: bold; margin-bottom: 10px;">TECHNICAL ARCHITECTURE NOTICE</p>
  <p style="color: #8b949e; font-size: 13.5px; line-height: 1.6; text-align: left;">
    <strong>Plug & Play AI</strong> is an environment designed for <strong>Computational Sovereignty</strong>. 
    This system utilizes ablated and uncensored model weights where internal refusal mechanisms have been mathematically suppressed. 
    This ensures the AI remains a neutral, high-utility tool for research and creative logic tasks without forced lecturing or refusal triggers.
  </p>
  <p style="color: #7d8590; font-size: 12px; margin-top: 15px; border-top: 1px solid #30363d; padding-top: 15px;">
    By initializing this environment, the user acknowledges that the system provides unfiltered outputs. 
    Users are responsible for their own prompts and for ensuring their use of the software complies with applicable regulations. 
    Use with discretion.
  </p>
</div>

---

## 🚀 Core Features

- **Zero Dependency Setup:** Ships with portable Python and isolated engine binaries. No system permissions, registry edits, or package managers required.
- **Offline-First UI:** Runtime dependencies (scripts, styles, and fonts) are now bootstrapped locally during installation. The UI works perfectly in air-gapped environments with **zero CDN heartbeats**.
- **Centralized Configuration:** All platform installers consume shared JSON catalogs for models and assets, ensuring zero "version drift" across different operating systems.
- **Cross-Platform Interoperability:** Uses an intelligent `Shared` volume system — download your 5GB+ AI models _once_, and use them natively on Windows, macOS, and Linux without duplication.
- **Censorship Free:** Integrates cutting-edge ablative and heretic fine-tuned models for completely unfiltered interactions.
- **Network Proxied UI:** The custom Python HTTP server instantly serves a blazing-fast dark mode UI. Access the AI from your phone or tablet on the same WiFi network without complex CORS configuration.
- **Hardware Accelerated:** Uses a custom-compiled engine under the hood, natively capitalizing on AVX CPU instructions, NVIDIA CUDA, or Apple Metal GPU accelerators dynamically.

---

## 💻 System Requirements

Before preparing your drive, ensure you have:

- **Storage:** A USB 3.0+ flash drive or SSD with an absolute minimum of **8 GB** free space (16 GB is **highly** recommended).
- **RAM:** The host computer should have at least **8 GB of system memory** to run the 2B/4B models, and **16 GB of memory** to fluidly run the 9B/12B models.

---

## 📂 Folder Architecture

The project is structured to strictly isolate operating system executables while securely unifying heavy model weights to save precious portable storage capacity.

```text
[Portable USB Drive]
 ├── 📁 Android     # Native Android (Termux) installers & launchers
 ├── 📁 Linux       # Native Ubuntu/Debian offline installers & launchers
 ├── 📁 Mac         # Native macOS offline installers & launchers
 ├── 📁 Windows     # Native Windows offline automatic UI menus
 └── 📁 Shared      # Unified Data System
     ├── 📁 bin         (Holds isolated engine executables)
     ├── 📁 config      (NEW: Shared JSON catalogs for models & assets)
     ├── 📁 vendor      (NEW: Local UI assets: Marked, Highlight.js, Fonts)
     ├── 📁 chat_data   (Houses cross-platform persistent conversation history)
     ├── 📁 models      (HuggingFace GGUF Weights & local database mapping)
     └── 📁 python      (Isolated portable python environment)
```

---

Here is the fully updated documentation for your portable AI environment, incorporating the latest **Gemma 4 E4B** specifications and the mandatory categories for your project.

---

## 🧠 Curated AI Model Library

The environment includes an automated installer that verifies hardware compatibility before downloading the following models.

### 🖥️ Desktop & Workstation Models

Optimized for Windows, macOS, and Linux via the built-in Ollama/Llama-CPP bridge.

| #   | Model Name                 |    Label     |  Size   | Min. RAM | Min. GPU | Best Use Case                       |
| :-- | :------------------------- | :----------: | :-----: | :------: | :------: | :---------------------------------- |
| 1   | **Gemma 2 2B Abliterated** | `UNFILTERED` | 1.7 GB  |   4 GB   |   2 GB   | Blazing fast - Recommended for all  |
| 2   | **Gemma 4 E4B Ultra**      |  `HERETIC`   | 5.3 GB  |   8 GB   |   8 GB   | Zero refusal - Agentic Reasoning    |
| 3   | **Qwen 3.5 9B Aggressive** | `AGGRESSIVE` | 5.6 GB  |   8 GB   |   8 GB   | High capacity unfiltered            |
| 4   | **NemoMix Unleashed 12B**  | `UNCENSORED` | 7.5 GB  |  12 GB   | 10 GB\*  | Heavyweight roleplay & prose        |
| 5   | **Dolphin 2.9 Llama 3 8B** |  `BALANCED`  | 4.9 GB  |   8 GB   |   8 GB   | Reliable & unfiltered multi-purpose |
| 6   | **Phi-3.5 Mini 3.8B**      | `ANALYTICAL` | 2.4 GB  |   4 GB   |   4 GB   | Lightweight reasoning & analysis    |
| 7   | **Mistral NeMo 12B**       | `TECHNICAL`  | 7.5 GB  |  12 GB   | 10 GB\*  | Coding, math, and logical tasks     |
| 8   | **Llama 3.1 70B**          |  `FRONTIER`  | 42.5 GB |  64 GB   |  48 GB   | Ultimate reasoning - Near-human     |
| 9   | **DeepSeek-R1 32B**        | `REASONING`  | 19.9 GB |  32 GB   |  24 GB   | "Thinking" model - Complex logic    |

> **\*Note on VRAM**: 12B models can run on 8GB GPUs via partial offloading, but 10GB+ is required for full GPU acceleration.

---

### 📱 Mobile & Ultra-Lightweight (Android/Termux)

Optimized for the limited thermal and memory overhead of mobile devices.

| Model Name                  |     Label      |  Size  | Performance Badge              |
| :-------------------------- | :------------: | :----: | :----------------------------- |
| **Gemma 2 2B Abliterated**  |  `MOBILE-RAW`  | 1.7 GB | Fastest mobile unfiltered      |
| **SmolLM2 1.7B Uncensored** | `ULTRA-LIGHT`  | 1.1 GB | Low battery impact             |
| **Qwen 2.5 1.5B Instruct**  |   `STANDARD`   | 1.0 GB | Multilingual support           |
| **Phi 3.5 Mini 3.8B**       | `MOBILE-LOGIC` | 2.4 GB | Smart reasoning for tablets    |
| **Qwen 3.5 9B Aggressive**  | `MOBILE-HEAVY` | 5.6 GB | For 12GB+ RAM flagship devices |

## ⚙️ Customization

The installer supports custom `.gguf` downloads. If you have a specific model from HuggingFace:

1.  Run the installer and select **[C] Custom**.
2.  Paste the direct download URL for the GGUF file.
3.  The system will automatically generate a `Modelfile` and import it into the local engine.

> **Warning:** Running uncensored models allows the AI to generate content without safety filters. Use responsibly.

---

## ⚙️ Quick Start Guide

### Step 1: Initialize the Engine & UI Assets

Depending on the computer you are currently plugged into, navigate into the respective Operating System folder and run the install script.

- **Windows:** Double-click `Windows/install.bat`
- **macOS:** Open Terminal, drag in `Mac/install.command`, and press Enter.
- **Linux:** Run `bash Linux/install.sh`
- **Android:** Run `bash Android/install.sh`

> **Note:** Initializing downloads the execution engine specific to that computer **and** bootstraps local UI vendor assets (fonts/libraries) to the `Shared/vendor` folder for a true offline experience.

### Step 2: Download AI Models

It is highly recommended to run the model download phase via a **Windows PC** (`Windows/install.bat`), which provides an interactive, terminal-based catalog to easily select and download highly curated models.
_(If you do not have a Windows PC, simply download your `.gguf` weights from HuggingFace and place them into the `Shared/models` folder manually)._

### Step 3: Launch

Open the respective OS folder and run the `start` script:

- **Windows:** `Windows/start-fast-chat.bat`
- **macOS:** `Mac/start.command`
- **Linux:** `bash Linux/start.sh`
- **Android:** `bash Android/start.sh` (in Termux)

The engine will spin up securely in the background, and your default web browser will automatically open the locally-served Chat UI.

---

## 🏠 Local Disk Installation

While this project is optimized for USB portability, it works beautifully as a lightweight local AI setup on your primary computer.

**How to Install Locally:**

1.  **Download/Clone** this repository to a folder on your `C:\` or `D:\` drive.
2.  Navigate to the **Windows** (or Mac/Linux) folder.
3.  Run **`install.bat`** and choose your desired models.
4.  The system will download everything into that local folder.
5.  Run **`start-fast-chat.bat`** to begin.

_Benefit:_ Running from an internal SSD is significantly faster than a USB drive, resulting in near-instant AI model loading!

---

## 📱 Android Native (Termux)

Run the AI engine **directly on your Android phone or tablet** — no PC required!

### Requirements

- **Termux** installed from [F-Droid](https://f-droid.org/en/packages/com.termux/) (NOT the Play Store — it's outdated)
- **6 GB+ RAM** (8 GB+ recommended). Only the 2B model runs well on 6 GB devices.
- **WiFi or mobile data** for initial setup (downloading engine + models)
- **ARM64 processor** (virtually all modern Android phones/tablets)

### Setup

1. Copy the USB-Uncensored-LLM folder to your Android device (via USB OTG, file transfer, or `git clone`)
2. Open **Termux** and navigate to the project folder
3. Run: `bash Android/install.sh`
4. Select your model (Gemma 2 2B recommended for most Android devices)
5. Wait for downloads to complete — **keep Termux in the foreground!**

### Launch

```bash
bash Android/start.sh
```

The AI engine starts and Chrome opens automatically with the chat UI.

### Android Performance Tips

- **Run `termux-wake-lock`** before starting — prevents Android from killing the process
- **Keep Termux in the foreground** for best performance
- **Close other apps** to free RAM for the AI model
- **Use the 2B model** on devices with less than 12 GB RAM
- **Plug in your charger** — LLM inference drains battery fast
- Expect **~3-10 tokens/sec** on the 2B model (vs 30-50+ on a PC with GPU)

---

## 📱 LAN Mobile Access

To use the Heavyweight AI from your phone while lounging on the couch:

1. Ensure your PC running the `start` script and your phone are on the same WiFi network.
2. The terminal window will automatically display a **Network Access** IP Address (e.g., `http://192.168.1.15:3333`).
3. Simply type that URL into your mobile browser (Safari/Chrome).
   _(Note: If pages do not load, ensure Windows Firewall allows incoming connections on port `3333`)_.

---

## 🛠️ Troubleshooting

- **Offline UI Rendering:** If fonts or icons fail to load in air-gapped mode, re-run your OS installer to ensure the `Shared/vendor` assets were correctly bootstrapped.
- **The script instantly closes on Windows:** You likely have legacy Windows App Execution Aliases turned on. Run the script via a command prompt to see the error log.
- **Ollama Engine Not Found:** You attempted to run the `start` script before the `install` script. Run your OS's installer first!

---
