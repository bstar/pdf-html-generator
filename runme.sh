#!/bin/bash
# ------------------------------------------------------------------
# Fun Status Messages for Visual Eye Candy
#
# Immediately upon running, the script prints:
#   Generation commencing:
#
# Then, after a 2-second pause, it toggles through a series of fun,
# status messages in the interval. Each message is displayed for 2 seconds
# in a random color (picked from a list of ANSI color codes) and overwrites
# the previous message. Any leading "." or "-" are stripped.
#
# When the loop finishes, the text "Destruction initiated..." is printed
# and persists until the progress bar begins on the next line.
# ------------------------------------------------------------------

# Print the fixed header.
echo -e "Generation commencing:" >&2

# Wait 2 seconds before starting the interval messages.
sleep 2

# Define the list of fun status messages.
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

# Define a list of ANSI color escape codes.
colors=(
  "\033[91m"  # Light Red
  "\033[92m"  # Light Green
  "\033[93m"  # Light Yellow
  "\033[94m"  # Light Blue
  "\033[95m"  # Light Magenta
  "\033[96m"  # Light Cyan
)

# Run the interval loop: 5 iterations, each pausing 2 seconds.
for i in {1..5}; do
    rand_msg=$(( RANDOM % ${#messages[@]} ))
    rand_color=$(( RANDOM % ${#colors[@]} ))
    msg="${messages[$rand_msg]}"
    # Remove any leading "." or "-" characters.
    while [[ "${msg:0:1}" == "." || "${msg:0:1}" == "-" ]]; do
        msg="${msg:1}"
    done
    # Print the message in the chosen random color, clearing the line first.
    echo -ne "\r\033[K${colors[$rand_color]}$msg\033[0m" >&2
    sleep 2
done

# Immediately clear the line and persist the message.
echo -ne "\r\033[KDestruction initiated..." >&2
echo "" >&2

# ------------------------------------------------------------------
# Begin HTML Generation
# ------------------------------------------------------------------

output="books.html"

# Write the HTML content with refined, colorful styling.
cat <<'EOF' > "$output"
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>PDF Topics Collection</title>
  <style>
    /* Background with a subtle gradient */
    body {
      background: linear-gradient(135deg, #f9f9f9, #e0e0e0);
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      padding: 20px;
      line-height: 1.6;
      color: #333;
      margin: 0;
    }
    /* Main title */
    h1 {
      text-align: center;
      color: #336699;
      margin-top: 0;
    }
    /* Topic headings */
    h2 {
      background-color: #336699;
      color: #ffffff;
      padding: 10px;
      border-radius: 5px;
      margin-top: 40px;
    }
    /* File list styling */
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
      transition: background 0.3s, color 0.3s;
    }
    .file-list a:hover {
      background: #336699;
      color: #ffffff;
    }
    /* Jump widget styling */
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
    }
    /* "Return to top" overlay styling */
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
      transition: background 0.3s;
    }
    #back-to-top:hover {
      background: #254d73;
    }
  </style>
  <script>
    // When the user selects a topic from the jump widget, scroll to that section.
    function jumpToDir(selectObj) {
      var target = selectObj.value;
      if(target) {
        location.href = '#' + target;
      }
    }
    // Show or hide the "Return to top" button based on scroll position.
    window.addEventListener('scroll', function() {
      var backToTop = document.getElementById('back-to-top');
      if (window.pageYOffset > 200) {
        backToTop.style.display = 'block';
      } else {
        backToTop.style.display = 'none';
      }
    });
    // Smooth scroll back to the top when "Return to top" is clicked.
    function scrollToTop(e) {
      e.preventDefault();
      window.scroll({ top: 0, left: 0, behavior: 'smooth' });
    }
  </script>
</head>
<body>
  <h1>PDF Topics Collection</h1>
  <div class="jump-widget">
    <label for="jumpSelect">Jump to Topic:</label>
    <select id="jumpSelect" onchange="jumpToDir(this)">
      <option value="">Select a topic</option>
EOF

# --- Build the Jump Widget Options (Topics) ---
mapfile -t topics < <(find . -type f -print0 | xargs -0 -n1 dirname | sort -u)
for topic in "${topics[@]}"; do
    safe=$(echo "$topic" | sed 's/[^a-zA-Z0-9]/_/g')
    topic_label=$(echo "$topic" | sed 's/\// - /g')
    echo "      <option value=\"${safe}\">${topic_label}</option>" >> "$output"
done

cat <<'EOF' >> "$output"
    </select>
  </div>
EOF

# --- Processing Files and Grouping by Topic ---
total=$(find . -type f | wc -l)
counter=0
current_topic=""

while IFS= read -r -d '' file; do
    ((counter++))
    percent=$(( 100 * counter / total ))
    bar_len=$(( percent / 2 ))
    bar=$(printf '%0.s#' $(seq 1 $bar_len))
    printf "\rProcessing: [%-50s] %3d%% (%d/%d)" "$bar" "$percent" "$counter" "$total" >&2

    topic=$(dirname "$file")
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
done < <(find . -type f -print0 | sort -z)

if [[ -n "$current_topic" ]]; then
    echo "  </div>" >> "$output"
fi

echo "" >&2

# --- Add the "Return to top" overlay ---
cat <<'EOF' >> "$output"
  <a href="#" id="back-to-top" onclick="scrollToTop(event)">Return to top</a>
EOF

# --- Finish the HTML Document ---
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
