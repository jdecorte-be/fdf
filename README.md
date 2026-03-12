<header>
<h1 align="center">
  <a href="https://github.com/jdecorte-be/fdf"><img src=".assets/banner.png" alt="fdf" ></a>
  fdf
  <br>
</h1>

<p align="center">
  A 42 school graphics project to render a 3D wireframe landscape from a map file. Features isometric projection, transformations, and coloring using MiniLibX.
</p>

<p align="center">
<a href="https://www.42.fr/">
    <img src="https://img.shields.io/badge/42-School%20Project-00B8A9?labelColor=000000"
         alt="42 School Project">
  </a>
<a href="#">
    <img src="https://img.shields.io/badge/Focus-Computer%20Graphics-4CAF50?labelColor=000000"
         alt="Focus Computer Graphics">
  </a>
<a href="#">
    <img src="https://img.shields.io/badge/Type-Graphics%20Program-FFA500?labelColor=000000"
         alt="Type Graphics Program">
  </a>
<a href="#">
    <img src="https://img.shields.io/badge/Platform-macOS%20%7C%20Linux-A9A9A9?labelColor=000000"
         alt="Platform macOS | Linux">
  </a>
</p>

<p align="center">
<a href="#">
    <img src="https://img.shields.io/badge/Framework-MiniLibX-9F76CF?labelColor=000000"
         alt="Framework MiniLibX">
  </a>
  <a href="https://github.com/jdecorte-be/fdf/blob/master/LICENSE">
    <img src="https://img.shields.io/badge/License-GPL--3.0-AE81FF?labelColor=000000"
         alt="fdf license">
  </a>
  <a href="https://github.com/jdecorte-be/fdf/stargazers">
    <img src="https://img.shields.io/github/stars/jdecorte-be/fdf?logo=star&logoColor=white&labelColor=000000&color=E6DB74"
         alt="fdf stars">
  </a>
  <a href="https://github.com/jdecorte-be/fdf/issues">
    <img src="https://img.shields.io/github/issues/jdecorte-be/fdf?logoColor=white&labelColor=000000&color=orange"
         alt="fdf issues">
  </a>
  <a href="https://github.com/jdecorte-be/fdf">
    <img src="https://img.shields.io/github/repo-size/jdecorte-be/fdf?logo=database&logoColor=white&labelColor=000000&color=AE81FF"
         alt="fdf repo size">
  </a>
  <a href="https://github.com/jdecorte-be/fdf">
    <img src="https://img.shields.io/github/languages/top/jdecorte-be/fdf?logo=code&logoColor=white&labelColor=000000&color=A6E22E"
         alt="fdf top language">
  </a>
</p>
<p align="center">
  <a href="#demonstration">Demonstration</a> •
  <a href="#features">Features</a> •
  <a href="#getting-started">Getting Started</a> •
  <a href="#prerequisites">Prerequisites</a> •
  <a href="#installation">Installation</a> •
  <a href="#usage">Usage</a> •
  <a href="#controls">Controls</a>
</p>
</header>

![FdF Banner](assets/banner.png)

FdF, or *Fil de Fer* (Wireframe), is a graphics programming project from the 42 school curriculum. The goal is to render a 3D wireframe landscape from a 2D map of height data. This project develops core skills in 3D graphics, including projections, transformations, and window management using a graphics library.

## Demonstration

![Wireframe render of a complex map](map3.jpg)
*A complex map rendered in isometric view.*

![Wireframe render of a simple map](map0.png)
*A simple map with height-based coloring.*

## Features

-   **3D Wireframe Rendering**: Renders complex landscapes from `.fdf` map files.
-   **Isometric Projection**: Utilizes an isometric projection for a clear 3D perspective.
-   **Interactive Controls**: Allows real-time camera manipulation, including rotation, translation, and zoom.
-   **Dynamic Elevation**: Adjust the Z-axis scaling to exaggerate or flatten the terrain.
-   **Height-Based Coloring**: Applies color gradients to the wireframe based on altitude for better visualization.

## Getting Started

### Prerequisites

This project is developed for macOS and requires `make` and a C compiler like `clang` or `gcc`.

### Installation

1.  Clone the repository to your local machine:
    ```bash
    git clone https://github.com/jdecorte-be/fdf.git
    ```

2.  Navigate to the project directory:
    ```bash
    cd fdf
    ```

3.  Compile the project using the Makefile:
    ```bash
    make
    ```
    This command will build the `fdf` executable.

## Usage

Run the program by passing a map file as an argument:

```bash
./fdf [path_to_map_file]
```

For example: `./fdf maps/test_maps/42.fdf`

### Controls

Interact with the 3D model using the following keyboard controls:

| Key(s)              | Action                      |
| :------------------ | :-------------------------- |
| **Arrow Keys**      | Rotate the model (X/Y axes) |
| **W, A, S, D**      | Translate (pan) the model   |
| **`+` / `-`**       | Zoom In / Zoom Out          |
| **Page Up/Page Down** | Increase / Decrease Z-scale |
| **ESC**             | Exit the program            |

## Project Components

-   **`libft/`**: A custom library of standard C utility functions used throughout the project.
-   **`minilibx_macos/`**: The MiniLibX graphics library, used for windowing, event handling, and drawing pixels on macOS.
-   **`Makefile`**: Defines the build rules for compiling the project and its dependencies.
