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
