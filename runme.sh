#!/bin/bash
# ------------------------------------------------------------------
# CLI STATUS & PROGRESS BAR SECTION (33/33/33 Progress Bar)
# ------------------------------------------------------------------
# This section:
#  - Prints "Generation commencing:".
#  - After a 2-second pause, cycles through 5 fun status messages (each for 2 seconds)
#    in random ANSI colors (with any leading "." or "-" removed).
#  - Then prints "Destruction initiated..." in blood red.
#  - Finally, renders a 50-character progress bar whose filled portion is divided
#    into three equal segments using ░, then ▒, then ▓.
# Hidden files (and directories) and files with excluded extensions are omitted.
# ------------------------------------------------------------------

# Array of excluded file extensions.
EXCLUDE_EXT=("swp")

# Build exclusion conditions for find.
exclude_conditions=""
for ext in "${EXCLUDE_EXT[@]}"; do
    exclude_conditions+=" -not -iname '*.$ext'"
done

# Always exclude hidden files and directories.
hidden_exclude="-not -path '*/.*'"

# Print the fixed header.
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
# An inline script at the very top of the head sets dark mode as early as possible.
output="books.html"

cat <<'EOF' > "$output"
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>PDF Topics Collection</title>
  <script>
    // Immediately set dark mode based on localStorage to prevent a flash.
    (function(){
      var savedTheme = localStorage.getItem('theme') || 'light';
      if(savedTheme === 'dark'){
        document.documentElement.classList.add('dark-mode');
      }
    })();
  </script>
  <style>
    /* Light Theme */
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
      color: #336699;
      margin-top: 0;
    }
    h2 {
      background-color: #336699;
      color: #ffffff;
      padding: 10px;
      border-radius: 5px;
      margin-top: 40px;
    }
    .file-list {
      padding-left: 20px;
      margin-bottom: 20px;
    }
    .file-list a {
      display: block;
      color: #336699;
      text-decoration: none;
      padding: 8px 12px;
      border: 1px solid #cccccc;
      background: #ffffff;
      margin: 5px 0;
      border-radius: 4px;
    }
    .file-list a:hover {
      background: #336699;
      color: #ffffff;
    }
    .jump-widget {
      text-align: center;
      margin: 20px 0;
      padding: 10px;
      background: #ffffff;
      border: 1px solid #336699;
      border-radius: 5px;
      display: inline-block;
    }
    .jump-widget label {
      font-weight: bold;
      margin-right: 10px;
      color: #336699;
    }
    .jump-widget select {
      padding: 5px 10px;
      font-size: 1em;
      border: 1px solid #336699;
      border-radius: 3px;
      background: #ffffff;
      color: #336699;
    }
    /* "Return to top" overlay styling with opacity */
    #back-to-top {
      position: fixed;
      bottom: 20px;
      right: 20px;
      background: #336699;
      color: #ffffff;
      padding: 10px 15px;
      border-radius: 4px;
      text-decoration: none;
      font-size: 14px;
      z-index: 1000;
      display: none;
      opacity: 0.8;
    }
    #back-to-top:hover {
      background: #254d73;
      opacity: 1;
    }
    /* Dark Theme Overrides */
    html.dark-mode body {
      background: #1e1e1e;
      color: #cccccc;
    }
    html.dark-mode h1 {
      color: #9ecfff;
    }
    html.dark-mode h2 {
      background-color: #005f99;
      color: #ffffff;
    }
    html.dark-mode .file-list a {
      color: #9ecfff;
      background: #2e2e2e;
      border-color: #444444;
    }
    html.dark-mode .file-list a:hover {
      background: #005f99;
      color: #ffffff;
    }
    html.dark-mode .jump-widget {
      background: #2e2e2e;
      border-color: #005f99;
    }
    html.dark-mode .jump-widget label {
      color: #9ecfff;
    }
    html.dark-mode .jump-widget select {
      background: #2e2e2e;
      color: #9ecfff;
      border-color: #005f99;
    }
    /* Theme Toggle Button Styling */
    #theme-toggle {
      position: fixed;
      top: 20px;
      right: 20px;
      background: #336699;
      color: #ffffff;
      border: none;
      padding: 8px 12px;
      border-radius: 4px;
      cursor: pointer;
      z-index: 1100;
    }
    #theme-toggle:hover {
      background: #254d73;
    }
  </style>
  <script>
    // Toggle theme and persist in localStorage.
    function toggleTheme() {
      if(document.documentElement.classList.contains('dark-mode')) {
        document.documentElement.classList.remove('dark-mode');
        localStorage.setItem('theme', 'light');
      } else {
        document.documentElement.classList.add('dark-mode');
        localStorage.setItem('theme', 'dark');
      }
    }
    // Scroll to selected topic.
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
  <!-- Theme Toggle Button -->
  <button id="theme-toggle" onclick="toggleTheme()">Toggle Theme</button>

  <h1>PDF Topics Collection</h1>
  <div class="jump-widget">
    <label for="jumpSelect">Jump to Topic:</label>
    <select id="jumpSelect" onchange="jumpToDir(this)">
      <option value="">Select a topic</option>
EOF

# --- Build Jump Widget Options (Topics) ---
mapfile -t topics < <(find . -type f -not -path '*/.*' $(for ext in "${EXCLUDE_EXT[@]}"; do echo -n "-not -iname '*.$ext' "; done) -print0 | xargs -0 -n1 dirname | sort -u)
for topic in "${topics[@]}"; do
    topic="${topic#./}"  # Remove leading "./" if present.
    safe=$(echo "$topic" | sed 's/[^a-zA-Z0-9]/_/g')
    topic_label=$(echo "$topic" | sed 's/\// - /g')
    echo "      <option value=\"${safe}\">${topic_label}</option>" >> "$output"
done

cat <<'EOF' >> "$output"
    </select>
  </div>
EOF

# --- Processing Files and Grouping by Topic ---
total=$(find . -type f -not -path '*/.*' $(for ext in "${EXCLUDE_EXT[@]}"; do echo -n "-not -iname '*.$ext' "; done) | wc -l)
counter=0
current_topic=""

while IFS= read -r -d '' file; do
    file="${file#./}"  # Remove leading "./" from file path.
    ((counter++))
    percent=$(( 100 * counter / total ))
    bar_length=50
    filled=$(( percent * bar_length / 100 ))
    progress_bar=""
    # Build the 33/33/33 progress bar:
    if [ "$filled" -lt 1 ]; then
      progress_bar=""
    elif [ "$filled" -lt 3 ]; then
      progress_bar=$(printf '░%.0s' $(seq 1 $filled))
    elif [ "$filled" -lt 6 ]; then
      case "$filled" in
         3) progress_bar="░░░" ;;
         4) progress_bar="░░░▒" ;;
         5) progress_bar="░░░▒▓" ;;
      esac
    else
      # For filled >= 6: Divide filled evenly into 3 segments.
      t1=$(( filled / 3 ))
      t2=$(( filled / 3 ))
      t3=$(( filled - t1 - t2 ))
      progress_bar="$(printf '░%.0s' $(seq 1 $t1))$(printf '▒%.0s' $(seq 1 $t2))$(printf '▓%.0s' $(seq 1 $t3))"
    fi
    unfilled=$(printf '%*s' $((bar_length - filled)) "")
    printf "\rProcessing: [%s%s] %3d%% (%d/%d)" "$progress_bar" "$unfilled" "$percent" "$counter" "$total" >&2

    topic=$(dirname "$file")
    topic="${topic#./}"  # Remove leading "./" from topic.
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
done < <(find . -type f -not -path '*/.*' $(for ext in "${EXCLUDE_EXT[@]}"; do echo -n "-not -iname '*.$ext' "; done) -print0 | sort -z)

if [[ -n "$current_topic" ]]; then
    echo "  </div>" >> "$output"
fi

echo "" >&2

# --- Add "Return to top" overlay ---
cat <<'EOF' >> "$output"
  <a href="#" id="back-to-top" onclick="scrollToTop(event)">Return to top</a>
EOF

# --- Finish HTML Document ---
cat <<'EOF' >> "$output"
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
