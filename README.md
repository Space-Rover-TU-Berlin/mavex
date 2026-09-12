# MAVEX
This is documentation for the drone project associated with European
Rover Project

## Domain
Drones are defined as Unmanned Aerial Vehicles that generally are of
the quadcopter configuration. They could be remotely operated or
autonomously functioning.

### Inventory Management
The inventory is maintained in CSV files in the inventory
directory. The calculation and display of these files is done by
python notebook.

## Engg
### Tools
- [make](https://www.gnu.org/software/make/)
- [quarto](https://quarto.org/)
- [python](https://www.python.org/)
- [uv](https://docs.astral.sh/uv/)
- [R](https://www.r-project.org/)
- [latex](https://www.latex-project.org/)
- [gh](https://cli.github.com/)
- [act](https://nektosact.com/)

Check if all the dependencies are correctly installed

``` bash
make configure
```

If you get error for any of the above, please install the software on your system to be able to work with this documentation

### List targets

``` bash
make help
```

### Generation of website

``` bash
cd project/doc
make html
```

The website is then generated in the `website/public` folder.

``` bash
open project/doc/public/index.html
```

### Compile the notebooks in place

``` bash
make notebooks
```

### Download the dependencies

``` bash
gh extension install https://github.com/nektos/gh-act
make dependencies
```

### Testing github action workflows locally

``` bash
gh act push
```
