# HTML Books Collection Generator

This is a Bash script that scans your directories for files and generates a beautifully formatted HTML file (by default, `books.html`). The generated page includes:

- **Grouped File Links:** Files are grouped by their directories with clear headings.
- **Jump Widget:** A drop-down widget lets users quickly jump to any directory section.
- **Progress Bar:** A terminal-based progress bar displays the processing status.
- **Return to Top Overlay:** An unobtrusive overlay button appears when scrolling down, allowing users to quickly return to the top.
- **Optional Copy:** At the end of processing, you have the option to copy the result over to `index.html`.

## Features

- **Robust File Handling:** Uses null-terminated strings with `find -print0`, `sort -z`, and `xargs -0` to safely process file names with spaces and special characters.
- **User-Friendly Navigation:** A drop-down jump widget and a "Return to top" button enhance page navigation.
- **Terminal Feedback:** A dynamic progress bar keeps you informed during processing.
- **Customization:** Easily tweak the HTML styling and behavior by editing the script.
- **Optional Deployment:** Choose whether to update your main `index.html` file with the generated output.

## Prerequisites

- A Unix-like operating system (Linux, macOS, etc.)
- Bash shell
- Standard Unix tools: `find`, `sort`, `xargs`, `sed`, and `wc`

## Installation

1. **Clone the repository:**

   ```bash
   git clone https://github.com/your-username/html-books-collection-generator.git
   cd html-books-collection-generator
   ```
