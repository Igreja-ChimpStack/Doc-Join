
# Doc-Join

A professional documentation aggregation tool that combines multiple documents into a single markdown file.

## Overview

Doc-Join streamlines the process of consolidating documentation by automatically merging multiple markdown files and directories into a cohesive single document. This tool is particularly useful for creating comprehensive documentation packages, reports, or consolidated references.

## Prerequisites

Doc-Join requires VibeScript as a runtime dependency. Please ensure you have `gcc` or `clang` installed on your system before proceeding.

## Installation

### Step 1: Install VibeScript

Choose the appropriate installation method for your operating system:

#### Option A: Pre-compiled Binary (Linux only)
```bash
curl -L https://github.com/OUIsolutions/VibeScript/releases/download/0.32.0/vibescript.out -o vibescript.out && chmod +x vibescript.out && sudo mv vibescript.out /usr/local/bin/vibescript
```

#### Option B: Compile from Source (Linux and macOS)
```bash
curl -L https://github.com/OUIsolutions/VibeScript/releases/download/0.35.0/amalgamation.c -o vibescript.c && gcc vibescript.c -o vibescript.out && sudo mv vibescript.out /usr/local/bin/vibescript
```

### Step 2: Install Doc-Join
```bash
vibescript add_script --file https://github.com/Igreja-ChimpStack/Doc-Join/releases/download/0.1.0/doc_join.lua doc_join
```

## Usage

### Basic Syntax
```bash
doc_join --entries <input_files_or_directories> --output <output_file>
```

### Example
```bash
doc_join --entries docs README.md --output consolidated_documentation.md
```

This command will process all files in the `docs` directory along with the `README.md` file, combining them into `consolidated_documentation.md`.

## Parameters

- `--entries`: Specify input files and/or directories to be processed
- `--output`: Define the output filename for the consolidated markdown document

## License

This project is released into the public domain under the [Unlicense](LICENSE). You are free to use, modify, and distribute this software without any restrictions.

## Contributing

For contributions, bug reports, or feature requests, please visit the [project repository](https://github.com/Igreja-ChimpStack/Doc-Join).

