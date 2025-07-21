# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a Quarto-based educational repository containing slide presentations for an "Introduction to Engineering Mathematics" course. The presentations cover topics from trigonometry to integration and are rendered as Beamer PDFs for academic use.

## Common Commands

### Rendering Presentations

**Preview a single presentation:**
```bash
quarto preview presentations/<name-of-slidedeck.qmd>
```

**Render a single presentation to PDF:**
```bash
quarto render presentations/<name-of-slidedeck.qmd>
```

**Render all presentations using Make:**
```bash
cd presentations
make all
```

**Render individual presentation using Make:**
```bash
cd presentations
make <presentation-name>.pdf
```

### Publishing

**Publish to GitHub Pages:**
```bash
quarto publish gh-pages
```

### Environment Setup

**Create Conda environment for Python code execution:**
```bash
conda create --yes -n engineering-math python=3.10 jupyter matplotlib numpy
conda activate engineering-math
```

## Repository Structure

- `presentations/` - Main content directory containing Quarto markdown (.qmd) files for each presentation
- `presentations/images/` - Subject-specific image folders organized by topic (01-trigonometry/, 02-coordinate-geometry/, etc.)
- `presentations/header.tex` - Common LaTeX header with Beamer styling and custom commands
- `presentations/Makefile` - Build automation for rendering all presentations
- `extra-material/` - Additional LaTeX documents and problem sets
- `_quarto.yml` - Quarto project configuration (website type, output directory)
- `index.qmd` - Main landing page listing all presentations
- `_freeze/` - Quarto cache directory for executed code blocks

## Architecture Notes

### Presentation Format
- Presentations use Quarto markdown with YAML frontmatter
- Target format is Beamer (LaTeX) for PDF output  
- Common styling defined in `presentations/header.tex`
- Images use SVG format when possible for scalability

### Content Organization
- Each major topic has multiple presentation parts (e.g., 01a, 01b, 01c for trigonometry)
- Images organized by topic in subdirectories under `presentations/images/`
- Mathematical drawings created with Inkscape using IBM colorblind-friendly palette

### Python Integration
- Some presentations contain embedded Python code blocks
- Quarto executes Python code during rendering and inserts output
- Requires `engineering-math` Conda environment for mathematical packages

### Visual Guidelines
- Colors follow the 5-shade IBM colorblind-friendly palette
- Color palette file available in `tools/ibm.gpl`