# Plug & Play AI ⚡

**Plug & Play AI** is a _fully air-gapped, zero-dependency, plug-and-play Local AI environment_ designed to run seamlessly from your **local hard drive** or a **portable USB/SSD**. 

> [!IMPORTANT]
> **Fork Notice:** This project is a fork of [techjarves/USB-Uncensored-LLM](https://github.com/techjarves/USB-Uncensored-LLM). While the original repository remains active, this version introduces significant architectural changes focused on true offline autonomy and cross-platform resource centralization.
>
> **Hardware Disclaimer:** Due to hardware limitations, this fork has been **tested only on Windows**. While installers for macOS, Linux, and Android have been updated with the new logic, they remain untested. If you are on these platforms, feel free to test, update, and submit a PR!
>
> **Technical Architecture & Usage:**
> Plug & Play AI is an environment designed for **Computational Sovereignty**. This system supports both standard and uncensored/ablated model weights. By choosing uncensored models, users can utilize tools where internal refusal mechanisms have been mathematically suppressed, ensuring the AI remains a neutral, high-utility tool for research and creative logic without forced lecturing.
>
> **Disclaimer:**
> By using this environment, the user acknowledges that they have the option to load unfiltered models and are responsible for their own prompts. Use with discretion.

🎥 **Watch the Original Setup & Demo Video:** [https://youtu.be/60PSXsoXc8A](https://youtu.be/60PSXsoXc8A)

---

## 🛠️ Key Enhancements in this Fork

Compared to the original repository, this fork introduces the following improvements:

*   **True Offline-First Architecture:** The original repo relies on online CDNs for fonts, Markdown rendering, and code highlighting. This fork automatically downloads and localizes all vendor assets (Marked, Highlight.js, etc.) during the installation stage, ensuring the UI works in 100% air-gapped environments.
*   **Centralized Resource Management:** Instead of redundant lists across different platform scripts, this version utilizes a **Centralized Model & Vendor Catalog**. This ensures zero "version drift"—all platforms pull from the same JSON configurations.
*   **Expanded Model Library:** Includes presets for **larger model scales** and high-efficiency **iMatrix (Importance Matrix)** quantized models for better intelligence-to-size ratios.
*   **Integrated Uninstaller:** Added a dedicated uninstaller script to cleanly remove specific models or wipe the entire runtime environment without affecting base files.
*   **UI/UX Refinements:** Fixed minor display bugs and optimized the local Python HTTP server for faster response times.

---

## 🏗️ Understanding the Engine: GGUF & Quantization

To achieve "Plug & Play" performance on consumer hardware, this environment relies on specific file formats and mathematical optimizations.

### What is GGUF?
**GGUF (GPT-Generated Unified Format)** is the binary format used to store the AI models in this project. It is the successor to the older GGML format and is designed for fast loading and high compatibility.

### Why GGUF?

Unlike standard "safetensors" used by data scientists, GGUF is designed for **Inference** (running the model). It contains all the metadata the engine needs in a single file, allowing it to run on CPUs, NVIDIA GPUs, or Apple’s Metal framework with zero extra configuration.

### The Magic of Bits & Quantization

Standard AI models are usually released in **16-bit (FP16)** precision. To fit large, powerful models onto standard consumer hardware, we use **Quantized** versions. This mathematical optimization reduces the memory footprint while preserving intelligence.

*   **K-Quants:** A "smart" compression technique that identifies and keeps the most critical parts of the AI's "brain" at higher precision while compressing less vital data.
*   **iMatrix (NEW):** Importance Matrix quantization uses data-driven calibration to analyze which weights are most active during reasoning. This minimizes the "compression brain-fog" effect, often making a 4-bit **IQ4** model perform as intelligently as a traditional 6-bit model.

| Quant Level | Quality Loss | Size Reduction | Recommended For |
| :--- | :--- | :--- | :--- |
| **Q8_0** | Negligible | ~50% | High-end PCs with 24GB+ VRAM |
| **Q6_K** | Very Low | ~60% | The "Golden Standard" for high fidelity |
| **Q4_K_M** | Low | ~75% | **Best Balance** (The default for this kit) |
| **IQ4_XS** | Minimal | ~80% | Ultra-efficient iMatrix optimization |

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
| 10  | **SmolLM2 1.7B** | `ULTRA-LIGHT`| 1.1 GB  |   2 GB   |   1 GB   | Battery saver - Mobile optimized    |
| 11  | **Qwen 2.5 1.5B** |  `STANDARD`  | 1.0 GB  |   2 GB   |   1 GB   | Fast Multilingual - Low overhead    |
| 12  | **Phi 3.5 Mini (Mobile)** | `MOBILE-LOGIC`| 2.4 GB  |   4 GB   |   2 GB   | Logic-heavy - High efficiency       |

> [!NOTE]
> **\*VRAM**: 12B models can run on 8GB GPUs via partial offloading, but 10GB+ is required for full GPU acceleration.

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

> [!WARNING]
> Running uncensored models allows the AI to generate content without safety filters. Use responsibly.

---

## 🚀 Quick Start Guide

### Step 1: Initialize the Engine & UI Assets

Depending on the computer you are currently plugged into, navigate into the respective Operating System folder and run the install script.

- **Windows:** Double-click `Windows/install.bat`
- **macOS:** Open Terminal, drag in `Mac/install.command`, and press Enter.
- **Linux:** Run `bash Linux/install.sh`
- **Android:** Run `bash Android/install.sh`

> **Note:** Initializing downloads the execution engine specific to that computer **and** bootstraps local UI vendor assets (fonts/libraries) to the `Shared/vendor` folder for a true offline experience.

### Step 2: Download Models

Run the installer again and select your models from the interactive menu. They will be stored in `Shared/models`.

### Step 3: Launch

Open the respective OS folder and run the `start` script:

- **Windows:** `Windows/start-fast-chat.bat`
- **macOS:** `Mac/start.command`
- **Linux:** `bash Linux/start.sh`
- **Android:** `bash Android/start.sh` (in Termux)

The engine will spin up securely in the background, and your default web browser will automatically open the locally-served Chat UI.

### Optional: Uninstall / Cleanup

If you want to remove models or clear downloaded runtime data while keeping base project files:

- **Windows:** run `Windows/uninstall.bat`
- **macOS:** run `Mac/uninstall.command`
- **Linux:** run `bash Linux/uninstall.sh`
- **Android (Termux):** run `bash Android/uninstall.sh`

Uninstaller options:

- **`[1]` Remove selected model(s)**  
  Choose **one**, **many**, or **all** installed models.
- **`[2]` Remove all downloaded files (except base files)**  
  Clears downloaded models, runtime binaries/caches, portable Python/runtime artifacts, and chat data.

---

## 📂 Folder Architecture

The project is structured to strictly isolate operating system executables while securely unifying heavy model weights to save precious portable storage capacity.

```text
[Portable USB Drive / Local Disk]
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

## 📱 LAN Mobile Access

To use the Heavyweight AI from your phone while lounging on the couch:

1. Ensure your PC running the `start` script and your phone are on the same WiFi network.
2. The terminal window will automatically display a **Network Access** IP Address (e.g., `http://192.168.1.15:3333`).
3. Simply type that URL into your mobile browser (Safari/Chrome).
   _(Note: If pages do not load, ensure Windows Firewall allows incoming connections on port `3333`)_.

---

## 🛠️ Troubleshooting

* **UI Rendering:** If fonts or icons fail to load in air-gapped mode, re-run the installer to ensure `Shared/vendor` assets were correctly bootstrapped.
* **Non-Windows Platforms:** Due to hardware limitations, I am currently only able to test and verify functionality on **Windows**. While the scripts for macOS, Linux, and Android have been updated to use the new centralized architecture, they remain unverified on native hardware. If you encounter errors on these platforms, please report them or submit a PR!
* **Ollama Engine Not Found:** This usually occurs if the `start` script is run before the `install` script. Ensure you run your OS-specific installer first to pull the necessary binaries.

---
