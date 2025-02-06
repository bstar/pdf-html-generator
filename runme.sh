#!/bin/bash
# This script generates an HTML file with a nicely styled,
# sorted, and grouped list of file links. The jump index at the top
# is a drop-down widget for convenience, and a progress bar shows the
# processing progress. An unobtrusive "Return to top" overlay appears
# when scrolling down. At the end, the user is prompted to optionally
# copy the result over to index.html.

output="books.html"

# Write the initial HTML content with the styling and jump widget.
cat <<'EOF' > "$output"
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Books Collection</title>
  <style>
    body {
      background-color: #f4f4f4;
      font-family: Arial, sans-serif;
      padding: 20px;
      line-height: 1.6;
      color: #333;
      position: relative;
    }
    h1 {
      text-align: center;
      color: #333;
    }
    h2 {
      background-color: #333;
      color: #fff;
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
      color: #0066cc;
      text-decoration: none;
      padding: 5px;
      border: 1px solid #ddd;
      background: #fff;
      margin: 5px 0;
      border-radius: 4px;
      transition: background 0.3s;
    }
    .file-list a:hover {
      background: #e6f2ff;
    }
    /* Jump widget styling */
    .jump-widget {
      text-align: center;
      margin: 20px 0;
      padding: 10px;
      background: #f8f8f8;
      border: 1px solid #ddd;
      border-radius: 5px;
      display: inline-block;
    }
    .jump-widget label {
      font-weight: bold;
      margin-right: 10px;
    }
    .jump-widget select {
      padding: 5px 10px;
      font-size: 1em;
    }
    /* "Return to top" overlay styling */
    #back-to-top {
      position: fixed;
      bottom: 20px;
      right: 20px;
      background: rgba(0,0,0,0.5);
      color: #fff;
      padding: 10px 15px;
      border-radius: 4px;
      text-decoration: none;
      font-size: 14px;
      z-index: 1000;
      display: none;
      transition: background 0.3s;
    }
    #back-to-top:hover {
      background: rgba(0,0,0,0.8);
    }
  </style>
  <script>
    // When the user selects a directory from the jump widget, scroll to that section.
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
  <h1>Books Collection</h1>
  <div class="jump-widget">
    <label for="jumpSelect">Jump to Directory:</label>
    <select id="jumpSelect" onchange="jumpToDir(this)">
      <option value="">Select a directory</option>
EOF

# --- Build the Jump Widget Options ---
# Use find with -print0 and xargs -0 to handle special characters safely.
# Capture unique directories into an array.
mapfile -t directories < <(find . -type f -print0 | xargs -0 -n1 dirname | sort -u)
for dir in "${directories[@]}"; do
    # Create a safe anchor name by replacing non-alphanumeric characters.
    safe=$(echo "$dir" | sed 's/[^a-zA-Z0-9]/_/g')
    echo "      <option value=\"${safe}\">$dir</option>" >> "$output"
done

cat <<'EOF' >> "$output"
    </select>
  </div>
EOF

# --- Processing Files and Grouping by Directory ---
# First, count the total number of files (for the progress bar).
total=$(find . -type f | wc -l)
counter=0

current_dir=""

# Process files using null-terminated strings.
while IFS= read -r -d '' file; do
    # Increment our counter and update the progress bar.
    ((counter++))
    percent=$(( 100 * counter / total ))
    bar_len=$(( percent / 2 ))  # Scale the bar to a maximum length of 50 characters.
    bar=$(printf '%0.s#' $(seq 1 $bar_len))
    printf "\rProcessing: [%-50s] %3d%% (%d/%d)" "$bar" "$percent" "$counter" "$total" >&2

    dir=$(dirname "$file")
    # When a new directory is encountered, output a heading and start a new file list.
    if [[ "$dir" != "$current_dir" ]]; then
        if [[ -n "$current_dir" ]]; then
            echo "  </div>" >> "$output"
        fi
        safe=$(echo "$dir" | sed 's/[^a-zA-Z0-9]/_/g')
        echo "  <h2 id=\"${safe}\">$dir</h2>" >> "$output"
        echo "  <div class=\"file-list\">" >> "$output"
        current_dir="$dir"
    fi
    # Output each file link with its basename.
    echo "    <a href=\"$file\">$(basename "$file")</a>" >> "$output"
done < <(find . -type f -print0 | sort -z)

# Close the last file list if needed.
if [[ -n "$current_dir" ]]; then
    echo "  </div>" >> "$output"
fi

# Ensure the progress bar ends on a new line.
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

# --- Ask the User Whether to Copy the Result to index.html ---
echo -n "Do you want to copy '$output' over to 'index.html'? (y/N): "
read -r response
if [[ "$response" =~ ^[Yy]$ ]]; then
    cp "$output" index.html
    echo "Copied '$output' to 'index.html'."
else
    echo "Result left as '$output'."
fi

