#!/bin/bash
# ------------------------------------------------------------------
# CLI STATUS & PROGRESS BAR SECTION (33/33/33 Progress Bar)
# ------------------------------------------------------------------
# - Prints "Generation commencing:".
# - After a 2-second pause, cycles through 5 fun status messages (each for 2 seconds)
#   in random ANSI colors (with any leading "." or "-" removed).
# - Then prints "Destruction initiated..." in blood red.
# - Finally, renders a 50-character progress bar whose filled portion is divided
#   equally into three segments:
#      ░ for the first third,
#      ▒ for the second, and
#      ▓ for the final third.
# ------------------------------------------------------------------

# Array of excluded file extensions.
EXCLUDE_EXT=("swp" "htm" "html")

# Build exclusion conditions for find.
exclude_conditions=""
for ext in "${EXCLUDE_EXT[@]}"; do
    exclude_conditions+=" -not -iname '*.$ext'"
done

# Always exclude hidden files and directories.
hidden_exclude="-not -path '*/.*'"

# Print header.
echo -e "Generation commencing:" >&2
sleep 2

# Define fun status messages.
messages=(
  "Adding Hidden Agendas"
  "Adjusting Bell Curves"
  "Aesthesizing Industrial Areas"
  "Aligning Covariance Matrices"
  "Applying Feng Shui Shaders"
  "Applying Theatre Soda Layer"
  "Asserting Packed Exemplars"
  "Attempting to Lock Back-Buffer"
  "Binding Sapling Root System"
  "Breeding Fauna"
  "Building Data Trees"
  "Bureacritizing Bureaucracies"
  "Calculating Inverse Probability Matrices"
  "Calculating Llama Expectoration Trajectory"
  "Calibrating Blue Skies"
  "Charging Ozone Layer"
  "Coalescing Cloud Formations"
  "Cohorting Exemplars"
  "Collecting Meteor Particles"
  "Compounding Inert Tessellations"
  "Compressing Fish Files"
  "Computing Optimal Bin Packing"
  "Concatenating Sub-Contractors"
  "Containing Existential Buffer"
  "Debarking Ark Ramp"
  "Debunching Unionized Commercial Services"
  "Deciding What Message to Display Next"
  "Decomposing Singular Values"
  "Decrementing Tectonic Plates"
  "Deleting Ferry Routes"
  "Depixelating Inner Mountain Surface Back Faces"
  "Depositing Slush Funds"
  "Destabilizing Economic Indicators"
  "Determining Width of Blast Fronts"
  "Deunionizing Bulldozers"
  "Dicing Models"
  "Diluting Livestock Nutrition Variables"
  "Downloading Satellite Terrain Data"
  "Exposing Flash Variables to Streak System"
  "Extracting Resources"
  "Factoring Pay Scale"
  "Fixing Election Outcome Matrix"
  "Flood-Filling Ground Water"
  "Flushing Pipe Network"
  "Gathering Particle Sources"
  "Generating Jobs"
  "Gesticulating Mimes"
  "Graphing Whale Migration"
  "Hiding Willio Webnet Mask"
  "Implementing Impeachment Routine"
  "Increasing Accuracy of RCI Simulators"
  "Increasing Magmafacation"
  "Initializing My Sim Tracking Mechanism"
  "Initializing Rhinoceros Breeding Timetable"
  "Initializing Robotic Click-Path AI"
  "Inserting Sublimated Messages"
  "Integrating Curves"
  "Integrating Illumination Form Factors"
  "Integrating Population Graphs"
  "Iterating Cellular Automata"
  "Lecturing Errant Subsystems"
  "Mixing Genetic Pool"
  "Modeling Object Components"
  "Mopping Occupant Leaks"
  "Normalizing Power"
  "Obfuscating Quigley Matrix"
  "Overconstraining Dirty Industry Calculations"
  "Partitioning City Grid Singularities"
  "Perturbing Matrices"
  "Pixalating Nude Patch"
  "Polishing Water Highlights"
  "Populating Lot Templates"
  "Preparing Sprites for Random Walks"
  "Prioritizing Landmarks"
  "Projecting Law Enforcement Pastry Intake"
  "Realigning Alternate Time Frames"
  "Reconfiguring User Mental Processes"
  "Relaxing Splines"
  "Removing Road Network Speed Bumps"
  "Removing Texture Gradients"
  "Removing Vehicle Avoidance Behavior"
  "Resolving GUID Conflict"
  "Reticulating Splines"
  "Retracting Phong Shader"
  "Retrieving from Back Store"
  "Reverse Engineering Image Consultant"
  "Routing Neural Network Infanstructure"
  "Scattering Rhino Food Sources"
  "Scrubbing Terrain"
  "Searching for Llamas"
  "Seeding Architecture Simulation Parameters"
  "Sequencing Particles"
  "Setting Advisor Moods"
  "Setting Inner Deity Indicators"
  "Setting Universal Physical Constants"
  "Sonically Enhancing Occupant-Free Timber"
  "Speculating Stock Market Indices"
  "Splatting Transforms"
  "Stratifying Ground Layers"
  "Sub-Sampling Water Data"
  "Synthesizing Gravity"
  "Synthesizing Wavelets"
  "Time-Compressing Simulator Clock"
  "Unable to Reveal Current Activity"
  "Weathering Buildings"
  "Zeroing Crime Network"
)

# Define ANSI color codes for CLI interval messages.
colors=(
  "\033[91m"  # Light Red
  "\033[92m"  # Light Green
  "\033[93m"  # Light Yellow
  "\033[94m"  # Light Blue
  "\033[95m"  # Light Magenta
  "\033[96m"  # Light Cyan
)

# Display 5 random messages, each for 2 seconds.
for i in {1..5}; do
  rand_msg=$(( RANDOM % ${#messages[@]} ))
  rand_color=$(( RANDOM % ${#colors[@]} ))
  msg="${messages[$rand_msg]}"
  while [[ "${msg:0:1}" == "." || "${msg:0:1}" == "-" ]]; do
    msg="${msg:1}"
  done
  echo -ne "\r\033[K${colors[$rand_color]}$msg\033[0m" >&2
  sleep 2
done

# Print persistent destruction message in blood red (ANSI 256 color 196).
echo -ne "\r\033[K\033[38;5;196mDestruction initiated...\033[0m" >&2
echo "" >&2

# ------------------------------------------------------------------
# HTML GENERATION SECTION
# ------------------------------------------------------------------
# The HTML page immediately applies the saved theme from localStorage.
# (The theme picker is collapsed by default.)
output="books.html"

cat <<'EOF' > "$output"
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>PDF Topics Collection</title>
  <script>
    // Immediately set the saved theme from localStorage.
    (function(){
      var savedTheme = localStorage.getItem('theme') || 'rosepine';
      document.documentElement.classList.add('theme-' + savedTheme);
    })();
  </script>
  <style>
    /* Base Styles */
    body {
      background: linear-gradient(135deg, #f9f9f9, #e0e0e0);
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      padding: 20px;
      line-height: 1.6;
      color: #333;
      margin: 0;
    }
    h1 {
      text-align: center;
      margin-top: 0;
    }
    h2 {
      padding: 8px 10px;
      border-radius: 4px;
      margin-top: 40px;
      background: rgba(0, 0, 0, 0.03);
    }
    .file-list {
      padding: 10px 15px;
      margin-bottom: 20px;
      background: transparent;
      border: 1px solid rgba(0,0,0,0.1);
      border-radius: 6px;
    }
    /* Override default link styles in file lists */
    .file-list a,
    .file-list a:visited,
    .file-list a:hover {
      color: inherit;
      text-decoration: none;
    }
    .file-list a {
      display: block;
      padding: 6px 8px;
      margin: 4px 0;
      border-bottom: 1px solid rgba(0,0,0,0.05);
      transition: background 0.2s;
    }
    .file-list a:hover {
      background: rgba(0,0,0,0.03);
    }
    /* Custom Dropdown Styling for Jump Widget */
    .jump-widget select {
      padding: 6px 12px;
      border: 1px solid var(--toggle-text, #fff);
      border-radius: 0; /* Squared corners */
      background: var(--toggle-bg, #666);
      color: var(--toggle-text, #fff);
      font-size: 14px;
      appearance: none;
      background-image: url('data:image/svg+xml;charset=UTF-8,<svg xmlns="http://www.w3.org/2000/svg" width="10" height="5"><polygon points="0,0 10,0 5,5" fill="%23ffffff"/></svg>');
      background-repeat: no-repeat;
      background-position: right 10px center;
      background-size: 10px 5px;
    }
    .jump-widget select:focus {
      outline: none;
      border-color: var(--toggle-text, #fff);
    }
    .jump-widget label {
      font-size: 14px;
      margin-right: 8px;
    }
    /* Theme Picker Card */
    #theme-picker-container {
      max-width: 600px;
      margin: 60px auto 20px; /* leave room for the fixed toggle tab */
      padding: 10px;
      border-radius: 8px;
      background: rgba(0, 0, 0, 0.05);
      display: none;
    }
    /* Fixed Toggle Button styled as a tab */
    #theme-picker-toggle {
      position: fixed;
      top: 0;
      right: 0;
      padding: 10px 15px;
      background: var(--toggle-bg, #666);
      color: var(--toggle-text, #fff);
      border: 1px solid #444;
      /* Top corners square; bottom-left rounded; bottom-right removed */
      border-top-left-radius: 0;
      border-top-right-radius: 0;
      border-bottom-left-radius: 10px;
      border-bottom-right-radius: 0;
      cursor: pointer;
      z-index: 1100;
    }
    /* Return-to-top Button */
    #back-to-top {
      position: fixed;
      bottom: 20px;
      right: 20px;
      padding: 8px 12px;
      background: var(--top-bg, #fff);
      color: var(--top-text, #000);
      border: none;
      border-radius: 4px;
      font-size: 13px;
      text-decoration: none;
      opacity: 0.9;
      transition: opacity 0.2s;
      z-index: 1000;
    }
    #back-to-top:hover {
      opacity: 1;
    }
    /* Theme Picker "Select" Buttons */
    #theme-picker button {
      padding: 4px 8px;
      background: transparent;
      border: 1px solid currentColor;
      color: inherit;
      cursor: pointer;
      transition: background 0.2s ease;
    }
    #theme-picker button:hover {
      background: rgba(255, 255, 255, 0.2);
    }
    /* Increase table cell padding for a less squished layout */
    #theme-picker th, #theme-picker td {
      padding: 12px;
      border-bottom: 1px solid rgba(0,0,0,0.1);
      text-align: center;
    }
    /* Active theme row indicator */
    #theme-picker tbody tr.active {
      background-color: rgba(255, 255, 255, 0.3);
    }
    /* Theme-Specific Styles and Custom Properties */
    html.theme-gruvbox body {
      background: #282828;
      color: #ebdbb2;
    }
    html.theme-gruvbox h1, html.theme-gruvbox h2 {
      color: #fabd2f;
    }
    html.theme-gruvbox .file-list a { color: #d79921; }
    html.theme-gruvbox .file-list { border-color: #3c3836; }
    html.theme-gruvbox {
      --toggle-bg: #3c3836;
      --toggle-text: #ebdbb2;
      --top-bg: #ebdbb2;
      --top-text: #282828;
    }

    html.theme-onedark body {
      background: #282c34;
      color: #abb2bf;
    }
    html.theme-onedark h1, html.theme-onedark h2 {
      color: #61afef;
    }
    html.theme-onedark .file-list a { color: #e06c75; }
    html.theme-onedark .file-list { border-color: #3e4451; }
    html.theme-onedark {
      --toggle-bg: #3e4451;
      --toggle-text: #abb2bf;
      --top-bg: #abb2bf;
      --top-text: #282c34;
    }

    html.theme-nord body {
      background: #2e3440;
      color: #d8dee9;
    }
    html.theme-nord h1, html.theme-nord h2 {
      color: #88c0d0;
    }
    html.theme-nord .file-list a { color: #81a1c1; }
    html.theme-nord .file-list { border-color: #3b4252; }
    html.theme-nord {
      --toggle-bg: #3b4252;
      --toggle-text: #d8dee9;
      --top-bg: #d8dee9;
      --top-text: #2e3440;
    }

    html.theme-dracula body {
      background: #282a36;
      color: #f8f8f2;
    }
    html.theme-dracula h1, html.theme-dracula h2 {
      color: #bd93f9;
    }
    html.theme-dracula .file-list a { color: #ff79c6; }
    html.theme-dracula .file-list { border-color: #44475a; }
    html.theme-dracula {
      --toggle-bg: #44475a;
      --toggle-text: #f8f8f2;
      --top-bg: #f8f8f2;
      --top-text: #282a36;
    }

    html.theme-tokyonight body {
      background: #1a1b26;
      color: #c0caf5;
    }
    html.theme-tokyonight h1, html.theme-tokyonight h2 {
      color: #7aa2f7;
    }
    html.theme-tokyonight .file-list a { color: #bb9af7; }
    html.theme-tokyonight .file-list { border-color: #24283b; }
    html.theme-tokyonight {
      --toggle-bg: #24283b;
      --toggle-text: #c0caf5;
      --top-bg: #c0caf5;
      --top-text: #1a1b26;
    }

    html.theme-rosepine body {
      background: #191724;
      color: #e0def4;
    }
    html.theme-rosepine h1, html.theme-rosepine h2 {
      color: #e0def4;
    }
    html.theme-rosepine .file-list a { color: #eb6f92; }
    html.theme-rosepine .file-list { border-color: #3e3a53; }
    html.theme-rosepine {
      --toggle-bg: #3e3a53;
      --toggle-text: #e0def4;
      --top-bg: #e0def4;
      --top-text: #191724;
    }

    html.theme-catppuccin body {
      background: #303446;
      color: #c6d0f5;
    }
    html.theme-catppuccin h1, html.theme-catppuccin h2 {
      color: #f5c2e7;
    }
    html.theme-catppuccin .file-list a { color: #f5e0dc; }
    html.theme-catppuccin .file-list { border-color: #424a59; }
    html.theme-catppuccin {
      --toggle-bg: #424a59;
      --toggle-text: #c6d0f5;
      --top-bg: #c6d0f5;
      --top-text: #303446;
    }

    html.theme-solarized body {
      background: #002b36;
      color: #839496;
    }
    html.theme-solarized h1, html.theme-solarized h2 {
      color: #268bd2;
    }
    html.theme-solarized .file-list a { color: #2aa198; }
    html.theme-solarized .file-list { border-color: #073642; }
    html.theme-solarized {
      --toggle-bg: #073642;
      --toggle-text: #839496;
      --top-bg: #839496;
      --top-text: #002b36;
    }

    html.theme-ayu body {
      background: #1f2430;
      color: #a6accd;
    }
    html.theme-ayu h1, html.theme-ayu h2 {
      color: #e2e4e5;
    }
    html.theme-ayu .file-list a { color: #f78c6c; }
    html.theme-ayu .file-list { border-color: #2a2f3a; }
    html.theme-ayu {
      --toggle-bg: #2a2f3a;
      --toggle-text: #a6accd;
      --top-bg: #a6accd;
      --top-text: #1f2430;
    }

    html.theme-aurora body {
      background: #FFF8F0;
      color: #222;
    }
    html.theme-aurora h1, html.theme-aurora h2 {
      color: #A00;
    }
    html.theme-aurora .file-list a { color: #3C91E6; }
    html.theme-aurora .file-list { border-color: rgba(0,0,0,0.15); }
    html.theme-aurora {
      --toggle-bg: #666666;
      --toggle-text: #fff;
      --top-bg: #F0F0F0;
      --top-text: #222;
    }

    html.theme-borealis body {
      background: #EDF2F4;
      color: #202020;
    }
    html.theme-borealis h1, html.theme-borealis h2 {
      color: #202020;
    }
    html.theme-borealis .file-list a { color: #8D99AE; }
    html.theme-borealis .file-list { border-color: rgba(0,0,0,0.15); }
    html.theme-borealis {
      --toggle-bg: #CCCCCC;
      --toggle-text: #202020;
      --top-bg: #F8F8F8;
      --top-text: #202020;
    }
  </style>
  <script>
    // Toggle the theme picker panel (no persistence).
    function toggleThemePicker() {
      var container = document.getElementById('theme-picker-container');
      var toggleBtn = document.getElementById('theme-picker-toggle');
      if (container.style.display === 'none' || container.style.display === '') {
        container.style.display = 'block';
        toggleBtn.textContent = 'Hide Themes ▲';
      } else {
        container.style.display = 'none';
        toggleBtn.textContent = 'Show Themes ▼';
      }
    }
    // Set the theme.
    function setTheme(themeName) {
      var themes = ['gruvbox','onedark','nord','dracula','tokyonight','rosepine','catppuccin','solarized','ayu','aurora','borealis'];
      themes.forEach(function(t) {
        document.documentElement.classList.remove('theme-' + t);
      });
      document.documentElement.classList.add('theme-' + themeName);
      localStorage.setItem('theme', themeName);
      // (Optionally, you can re-run the active-theme indicator code here.)
    }
    // Scroll to the selected topic.
    function jumpToDir(selectObj) {
      var target = selectObj.value;
      if(target) {
        location.href = '#' + target;
      }
    }
    // Show/hide "Return to top" based on scroll.
    window.addEventListener('scroll', function() {
      var backToTop = document.getElementById('back-to-top');
      if(window.pageYOffset > 200){
        backToTop.style.display = 'block';
      } else {
        backToTop.style.display = 'none';
      }
    });
    // Smooth scroll to top.
    function scrollToTop(e) {
      e.preventDefault();
      window.scroll({ top: 0, left: 0, behavior: 'smooth' });
    }
  </script>
</head>
<body>
  <!-- Fixed Toggle Button for Theme Picker -->
  <button id="theme-picker-toggle" onclick="toggleThemePicker()">Show Themes ▼</button>
  <div id="theme-picker-container">
    <table id="theme-picker">
      <thead>
        <tr>
          <th>Theme</th>
          <th>Background</th>
          <th>Heading</th>
          <th>File Link</th>
          <th>Border</th>
          <th>Select</th>
        </tr>
      </thead>
      <tbody>
        <!-- Each row includes a data-theme attribute for later identification -->
        <tr data-theme="gruvbox" style="--theme-border: #3c3836;">
          <td>Gruvbox</td>
          <td style="background: #282828; color: #eeeeee;">#282828</td>
          <td style="background: #fabd2f; color: #000000;">#fabd2f</td>
          <td style="background: #d79921; color: #000000;">#d79921</td>
          <td style="background: #3c3836; color: #eeeeee;">#3c3836</td>
          <td><button onclick="setTheme('gruvbox')">Select</button></td>
        </tr>
        <tr data-theme="onedark" style="--theme-border: #3e4451;">
          <td>OneDark</td>
          <td style="background: #282c34; color: #eeeeee;">#282c34</td>
          <td style="background: #61afef; color: #000000;">#61afef</td>
          <td style="background: #e06c75; color: #000000;">#e06c75</td>
          <td style="background: #3e4451; color: #eeeeee;">#3e4451</td>
          <td><button onclick="setTheme('onedark')">Select</button></td>
        </tr>
        <tr data-theme="nord" style="--theme-border: #3b4252;">
          <td>Nord</td>
          <td style="background: #2e3440; color: #ffffff;">#2e3440</td>
          <td style="background: #88c0d0; color: #000000;">#88c0d0</td>
          <td style="background: #81a1c1; color: #000000;">#81a1c1</td>
          <td style="background: #3b4252; color: #ffffff;">#3b4252</td>
          <td><button onclick="setTheme('nord')">Select</button></td>
        </tr>
        <tr data-theme="dracula" style="--theme-border: #44475a;">
          <td>Dracula</td>
          <td style="background: #282a36; color: #ffffff;">#282a36</td>
          <td style="background: #bd93f9; color: #000000;">#bd93f9</td>
          <td style="background: #ff79c6; color: #000000;">#ff79c6</td>
          <td style="background: #44475a; color: #ffffff;">#44475a</td>
          <td><button onclick="setTheme('dracula')">Select</button></td>
        </tr>
        <tr data-theme="tokyonight" style="--theme-border: #24283b;">
          <td>TokyoNight</td>
          <td style="background: #1a1b26; color: #ffffff;">#1a1b26</td>
          <td style="background: #7aa2f7; color: #000000;">#7aa2f7</td>
          <td style="background: #bb9af7; color: #000000;">#bb9af7</td>
          <td style="background: #24283b; color: #ffffff;">#24283b</td>
          <td><button onclick="setTheme('tokyonight')">Select</button></td>
        </tr>
        <tr data-theme="rosepine" style="--theme-border: #3e3a53;">
          <td>Rose Pine</td>
          <td style="background: #191724; color: #ffffff;">#191724</td>
          <td style="background: #e0def4; color: #000000;">#e0def4</td>
          <td style="background: #eb6f92; color: #000000;">#eb6f92</td>
          <td style="background: #3e3a53; color: #ffffff;">#3e3a53</td>
          <td><button onclick="setTheme('rosepine')">Select</button></td>
        </tr>
        <tr data-theme="catppuccin" style="--theme-border: #424a59;">
          <td>Catppuccin</td>
          <td style="background: #303446; color: #c6d0f5;">#303446</td>
          <td style="background: #f5c2e7; color: #000000;">#f5c2e7</td>
          <td style="background: #f5e0dc; color: #000000;">#f5e0dc</td>
          <td style="background: #424a59; color: #c6d0f5;">#424a59</td>
          <td><button onclick="setTheme('catppuccin')">Select</button></td>
        </tr>
        <tr data-theme="solarized" style="--theme-border: #073642;">
          <td>Solarized</td>
          <td style="background: #002b36; color: #ffffff;">#002b36</td>
          <td style="background: #268bd2; color: #ffffff;">#268bd2</td>
          <td style="background: #2aa198; color: #ffffff;">#2aa198</td>
          <td style="background: #073642; color: #ffffff;">#073642</td>
          <td><button onclick="setTheme('solarized')">Select</button></td>
        </tr>
        <tr data-theme="ayu" style="--theme-border: #2a2f3a;">
          <td>Ayu</td>
          <td style="background: #1f2430; color: #ffffff;">#1f2430</td>
          <td style="background: #e2e4e5; color: #000000;">#e2e4e5</td>
          <td style="background: #f78c6c; color: #000000;">#f78c6c</td>
          <td style="background: #2a2f3a; color: #ffffff;">#2a2f3a</td>
          <td><button onclick="setTheme('ayu')">Select</button></td>
        </tr>
        <tr data-theme="aurora" style="--theme-border: #e0dcdc;">
          <td>Aurora</td>
          <td style="background: #FFF8F0; color: #000000;">#FFF8F0</td>
          <td style="background: #D9544F; color: #ffffff;">#D9544F</td>
          <td style="background: #3C91E6; color: #ffffff;">#3C91E6</td>
          <td style="background: #e0dcdc; color: #000000;">#e0dcdc</td>
          <td><button onclick="setTheme('aurora')">Select</button></td>
        </tr>
        <tr data-theme="borealis" style="--theme-border: #d0d7de;">
          <td>Borealis</td>
          <td style="background: #EDF2F4; color: #000000;">#EDF2F4</td>
          <td style="background: #2B2D42; color: #ffffff;">#2B2D42</td>
          <td style="background: #8D99AE; color: #000000;">#8D99AE</td>
          <td style="background: #d0d7de; color: #000000;">#d0d7de</td>
          <td><button onclick="setTheme('borealis')">Select</button></td>
        </tr>
      </tbody>
    </table>
  </div>

  <!-- Jump Widget -->
  <div class="jump-widget" style="max-width:600px; margin: 20px auto;">
    <label for="jumpSelect">Jump to Topic:</label>
    <select id="jumpSelect" onchange="jumpToDir(this)">
      <option value="">Select a topic</option>
EOF

# Build Jump Widget Options (Topics)
mapfile -t topics < <(find . -type f -not -path '*/.*' $(for ext in "${EXCLUDE_EXT[@]}"; do echo -n "-not -iname '*.$ext' "; done) -print0 | xargs -0 -n1 dirname | sort -uV)
for topic in "${topics[@]}"; do
    topic="${topic#./}"
    safe=$(echo "$topic" | sed 's/[^a-zA-Z0-9]/_/g')
    topic_label=$(echo "$topic" | sed 's/\// - /g')
    echo "      <option value=\"${safe}\">${topic_label}</option>" >> "$output"
done

cat <<'EOF' >> "$output"
    </select>
  </div>

  <!-- Processing Files and Grouping by Topic -->
EOF

# Process files and group by topic
total=$(find . -type f -not -path '*/.*' $(for ext in "${EXCLUDE_EXT[@]}"; do echo -n "-not -iname '*.$ext' "; done) | wc -l)
counter=0
current_topic=""

while IFS= read -r -d '' file; do
    file="${file#./}"
    ((counter++))
    percent=$(( 100 * counter / total ))
    bar_length=50
    filled=$(( percent * bar_length / 100 ))
    progress_bar=""
    if [ "$filled" -lt 3 ]; then
      progress_bar=$(printf '░%.0s' $(seq 1 $filled))
    elif [ "$filled" -lt 6 ]; then
      case "$filled" in
         3) progress_bar="░░░" ;;
         4) progress_bar="░░░▒" ;;
         5) progress_bar="░░░▒▓" ;;
      esac
    else
      t1=$(( filled / 3 ))
      t2=$(( filled / 3 ))
      t3=$(( filled - t1 - t2 ))
      progress_bar="$(printf '░%.0s' $(seq 1 $t1))$(printf '▒%.0s' $(seq 1 $t2))$(printf '▓%.0s' $(seq 1 $t3))"
    fi
    unfilled=$(printf '%*s' $((bar_length - filled)) "")
    printf "\rProcessing: [%s%s] %3d%% (%d/%d)" "$progress_bar" "$unfilled" "$percent" "$counter" "$total" >&2

    topic=$(dirname "$file")
    topic="${topic#./}"
    if [[ "$topic" != "$current_topic" ]]; then
        if [[ -n "$current_topic" ]]; then
            echo "  </div>" >> "$output"
        fi
        safe=$(echo "$topic" | sed 's/[^a-zA-Z0-9]/_/g')
        topic_label=$(echo "$topic" | sed 's/\// - /g')
        echo "  <h2 id=\"${safe}\">${topic_label}</h2>" >> "$output"
        echo "  <div class=\"file-list\">" >> "$output"
        current_topic="$topic"
    fi
    echo "    <a href=\"$file\">$(basename "$file" .pdf)</a>" >> "$output"
done < <(find . -type f -not -path '*/.*' $(for ext in "${EXCLUDE_EXT[@]}"; do echo -n "-not -iname '*.$ext' "; done) -print0 | sort -zV)

if [[ "$current_topic" != "" ]]; then
    echo "  </div>" >> "$output"
fi

cat <<'EOF' >> "$output"

  <!-- Return-to-top Button -->
  <a href="#" id="back-to-top" onclick="scrollToTop(event)">Top</a>

  <!-- Active Theme Indicator Script -->
  <script>
  window.addEventListener('DOMContentLoaded', function(){
      var activeTheme = localStorage.getItem('theme') || 'rosepine';
      document.querySelectorAll('#theme-picker tbody tr').forEach(function(row) {
         if (row.getAttribute('data-theme') === activeTheme) {
             row.classList.add('active');
             var selectCell = row.querySelector('td:last-child');
             if (selectCell) {
                selectCell.innerHTML = '<span style="font-weight:bold; color:inherit;">Active</span>';
             }
         }
      });
  });
  </script>

</body>
</html>
EOF

echo -e "\nHTML file '$output' generated successfully."
echo -n "Do you want to copy '$output' over to 'index.html'? (y/N): "
read -r response
if [[ "$response" =~ ^[Yy]$ ]]; then
    cp "$output" index.html
    echo "Copied '$output' to 'index.html'."
else
    echo "Result left as '$output'."
fi

