<div align="center">

# <span style="color:#ff4d4d">C</span><span style="color:#ff9d4d">y</span><span style="color:#ffe84d">b</span><span style="color:#6bff4d">e</span><span style="color:#4dffe0">r</span><span style="color:#4d8dff">F</span><span style="color:#b04dff">a</span><span style="color:#ff4dd2">n</span>

**A neon RGB PC case fan with an integrated clock, rendered entirely in HTML/CSS/JS on your desktop.**

<br>

<img src="https://img.shields.io/badge/Rainmeter-4.5+-orange?style=flat-square" alt="Rainmeter 4.5+">
<img src="https://img.shields.io/badge/Plugin-WebView2%20by%20NSTechBytes-yellow?style=flat-square" alt="WebView2 plugin">
<img src="https://img.shields.io/badge/Platform-Windows-green?style=flat-square" alt="Windows">
<img src="https://img.shields.io/badge/Version-1.0.0-blue?style=flat-square" alt="Version 1.0.0">
<img src="https://img.shields.io/badge/License-Free-purple?style=flat-square" alt="Free to use">

<br>

A fully animated RGB PC case fan skin for Rainmeter. Seven blades spin continuously, an RGB LED band cycles through the full color spectrum, and the center hub doubles as a live clock with day and date. The entire skin is drawn with HTML, CSS and JavaScript inside a WebView2 surface, so every pixel is crisp, smooth and completely customizable.

</div>

<hr>

## <span style="color:#ff4d4d">Features</span>

- <span style="color:#ff4d4d">Seven-blade fan assembly</span> spinning at a realistic speed with motion-smear ghosting.
- <span style="color:#ff9d4d">Animated RGB LED band</span> with a soft neon glow that cycles through the full spectrum.
- <span style="color:#ffe84d">Integrated clock</span> in the center hub showing time, day of the week and full date.
- <span style="color:#6bff4d">Pure WebView2 rendering</span> - all visuals are HTML/CSS/JS, running at full GPU-accelerated quality.
- <span style="color:#4dffe0">Click-through skin</span> - the fan never blocks your clicks or desktop icons.
- <span style="color:#4d8dff">Mouse-scroll scaling</span> - zoom the fan from 50% up to 250% without touching config files.
- <span style="color:#b04dff">Developer tools built in</span> - open DevTools or reload the page straight from the right-click menu.
- <span style="color:#ff4dd2">Zero CPU usage</span> - the skin runs its own internal timer and Rainmeter never polls it.

<hr>

## <span style="color:#ff9d4d">Requirements</span>

| Requirement | Why you need it |
| :--- | :--- |
| <span style="color:#ff9d4d">Windows 10 / 11</span> | Rainmeter and WebView2 only run on Windows. |
| <span style="color:#ff9d4d">Rainmeter 4.5 or newer</span> | The skin container requires a modern Rainmeter build. |
| <span style="color:#ff9d4d">WebView2 Runtime</span> | Usually pre-installed with Windows 11 or Edge. |
| <span style="color:#ff9d4d">WebView2.dll plugin</span> | Bundled inside the `.rmskin` installer - nothing to install by hand. |

<hr>

## <span style="color:#ffe84d">Quick Install (Recommended)</span>

The skin is distributed as a single `.rmskin` installer file that includes the skin **and** the WebView2 plugin. Setup takes three steps:

1. **Install Rainmeter** - download it from [rainmeter.net](https://www.rainmeter.net), run the installer and finish the wizard (one time only).
2. **Download the package** - grab `CyberFan_1.0.0.rmskin` from the [Releases](https://github.com/Xenoz-GitHub/CyberFan-Desktop/releases) page.
3. **Double-click it** - the Rainmeter Skin Installer opens. Click **Install** and the skin loads automatically on your desktop.

That is it. No plugin copying, no manual folder work, no configuration. The WebView2 plugin is installed for you by the package.

<hr>

## <span style="color:#ffe84d">Manual Installation (Step by Step)</span>

Prefer to do it by hand, or installing from the source repository? Follow these steps.

### Step 1 - Download and install Rainmeter

1. Go to the official Rainmeter website: [rainmeter.net](https://www.rainmeter.net).
2. Click the download button and save the installer (for example `Rainmeter-4.5.x.exe`).
3. Run the installer and click **Next** through the wizard.
4. Choose **Install for me only** or **Install for all users**, then click **Install**.
5. When prompted, check **Launch Rainmeter** and click **Finish**.
6. Rainmeter starts in the system tray (bottom-right). You can open its menu by clicking the raindrop icon.

### Step 2 - Install the WebView2 plugin

The skin renders through the WebView2 plugin by NSTechBytes. It is not bundled with Rainmeter, so you need to install it once:

1. Open the release page: [github.com/NSTechBytes/WebView2/releases](https://github.com/NSTechBytes/WebView2/releases).
2. Download the latest release archive (`.zip`).
3. Extract the archive and locate the `WebView2.dll` file.
4. Copy `WebView2.dll` into the Rainmeter plugins folder:
   ```
   C:\Program Files\Rainmeter\Plugins\
   ```
5. Fully restart Rainmeter - right-click the tray raindrop icon and choose **Exit**, then start Rainmeter again from the Start menu.
6. To verify the plugin is loaded, right-click the tray icon, select **About** (or **Manage**) and check that WebView2 appears in the list of plugins.

### Step 3 - Install the skin

1. Copy the `Skins\CyberFan` folder into your Rainmeter skins folder:
   ```
   Documents\Rainmeter\Skins\CyberFan\
   ```
   If the folder does not exist yet, launch Rainmeter once and it will be created automatically.
2. Right-click the Rainmeter tray icon and select **Refresh all**.
3. Right-click the tray icon again, go to **Skins**, and look for the **CyberFan** entry.
4. Click **CyberFan** in the submenu to load the skin. The fan appears on your desktop.

### Step 4 - Position and enjoy

- Drag the fan anywhere on your screen - it is click-through, so it will never block your clicks.
- Scroll your mouse wheel over the fan to scale it from 50% up to 250%.
- Right-click the skin to open its context menu with developer shortcuts.

<hr>

## <span style="color:#6bff4d">Controls</span>

| Action | Result |
| :--- | :--- |
| <span style="color:#6bff4d">Drag</span> | Move the fan around the desktop. |
| <span style="color:#6bff4d">Mouse wheel scroll</span> | Scale the fan between 50% and 250%. |
| <span style="color:#6bff4d">Right click</span> | Open the skin menu. |
| <span style="color:#6bff4d">Right click > Open DevTools</span> | Inspect the HTML/CSS in the WebView2 debugger. |
| <span style="color:#6bff4d">Right click > Reload Page</span> | Reload the HTML page without refreshing the skin. |
| <span style="color:#6bff4d">Right click > Refresh Skin</span> | Reload the whole skin. |

<hr>

## <span style="color:#4dffe0">Customization</span>

All visual work happens in the browser layer - no Rainmeter skills required.

- **Clock format, colors and layout** - edit `style.css` and `script.js` inside the `CyberFan` folder.
- **Fan speed** - change the `spin` animation duration in `style.css` (currently `1.1s` per rotation).
- **RGB spectrum colors** - edit the gradient stops in the `.rgb-band` and `.rgb-glow` rules in `style.css`.
- **Default scale** - change the `Scale` variable in `CyberFan.ini`.

After editing a file, right-click the skin and choose **Reload Page** (for HTML/CSS/JS) or **Refresh Skin** (for `CyberFan.ini`).

<hr>

## <span style="color:#4dffe0">Recommended Companion Tools</span>

CyberFan works beautifully on its own, but these two additions complete the setup:

- <span style="color:#4dffe0">**Fences by Stardock**</span> - [https://www.stardock.com/products/fences/](https://www.stardock.com/products/fences/) - organizes your desktop icons into clean, collapsible regions. CyberFan stays on the desktop as a decorative centerpiece while Fences keeps your shortcuts tidy around it.

- <span style="color:#4dffe0">**Windows Game Bar (Win + G)**</span> - a built-in Windows overlay that shows live CPU usage, FPS, RAM, GPU and network performance while you play or work. Since CyberFan does not display system stats, use the Game Bar (press **Win + G**) whenever you want real-time hardware monitoring - no extra software required.

<hr>

## <span style="color:#4d8dff">Project Structure</span>

```
RAINMETER/
├── README.md                        This documentation
├── RMSKIN.ini                       Installer manifest (name, version, requirements)
├── build.ps1                        One-command .rmskin package builder
├── .github/
│   └── workflows/
│       └── rmskin-packager.yml      Auto-builds the .rmskin on every push/release
├── Skins/
│   └── CyberFan/
│       ├── CyberFan.ini             Rainmeter container (plugin config, scale, menu)
│       ├── index.html               The fan - structure and markup
│       ├── style.css                The fan - neon styling, gradients, animations
│       └── script.js                The fan - live clock logic
└── Plugins/                         WebView2 DLLs (downloaded by build.ps1 / CI)
    └── WebView2/
        ├── 32bit/WebView2.dll
        └── 64bit/WebView2.dll
```

<hr>

## <span style="color:#6bff4d">Building the Package (for Maintainers)</span>

The `.rmskin` installer is generated automatically by GitHub Actions whenever you push a tag, and attached to the release. To build it locally instead:

1. Run `.\build.ps1` - it downloads the WebView2 plugin, stages it, and produces `dist\CyberFan_1.0.0.rmskin`.
2. Upload that file to the GitHub Releases page for the repo.

End users then install everything with a single double-click.

## <span style="color:#b04dff">Troubleshooting</span>

| Problem | Solution |
| :--- | :--- |
| <span style="color:#b04dff">The skin does not appear in the menu</span> | Make sure the `CyberFan` folder is inside `Documents\Rainmeter\Skins\`, then right-click the tray icon and choose **Refresh all**. |
| <span style="color:#b04dff">The fan shows a blank window</span> | The WebView2 plugin is missing or outdated. Reinstall `WebView2.dll` (Step 2) and restart Rainmeter. |
| <span style="color:#b04dff">Rainmeter reports a missing plugin</span> | Copy `WebView2.dll` to `C:\Program Files\Rainmeter\Plugins\` and restart Rainmeter completely. |
| <span style="color:#b04dff">The fan is too big or too small</span> | Scroll the mouse wheel over the skin, or change the `Scale` variable in `CyberFan.ini`. |
| <span style="color:#b04dff">The clock shows the wrong time</span> | The clock uses your local system time - check your Windows date and time settings. |

<hr>

## <span style="color:#ff4dd2">License</span>

This skin is free to use, modify and share. The WebView2 plugin is a third-party component and remains property of its respective author - see the [NSTechBytes WebView2 repository](https://github.com/NSTechBytes/WebView2) for its license.

## <span style="color:#ff4dd2">Author</span>

**CyberFan** was created and designed by **XenozExe**.

| Platform | Link |
| :--- | :--- |
| <span style="color:#ff4dd2">GitHub</span> | https://github.com/Xenoz-GitHub |
| <span style="color:#ff4dd2">TikTok</span> | https://www.tiktok.com/@xenozexe0.0 |
| <span style="color:#ff4dd2">Repository</span> | https://github.com/Xenoz-GitHub/CyberFan-Desktop.git |

<hr>

<div align="center">

<span style="color:#ff4d4d">R</span><span style="color:#ff9d4d">a</span><span style="color:#ffe84d">i</span><span style="color:#6bff4d">n</span><span style="color:#4dffe0">b</span><span style="color:#4d8dff">o</span><span style="color:#b04dff">w</span><span style="color:#ff4dd2">-</span><span style="color:#ff4d4d">p</span><span style="color:#ff9d4d">o</span><span style="color:#ffe84d">w</span><span style="color:#6bff4d">e</span><span style="color:#4dffe0">r</span><span style="color:#4d8dff">e</span><span style="color:#b04dff">d</span><span style="color:#ff4dd2">!</span>

</div>
