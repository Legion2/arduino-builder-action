# Run arduino-builder
Github Action to run arduino-builder for sketches and see if they compile.
Used Arduino IDE version is `1.8.3`.

## Usage
```
action "Build examples" {
  uses = "Legion2/arduino-builder-action@master"
  env = {
    BOARD_NAME = "arduino:avr:leonardo"
  }
}
```

### Arguments
Specified arguments override any default arguments passed to arduino-builder, with the exception of the sketch parameter.
The default arguments set all mandatory parameters.
Use the [Environment variables](#environment-variables) to change some of the parameters.

### Environment variables
* **`SKETCH_PATH`** *(optional)* : Path to a single sketch
* **`SKETCH_DIRECTORY_PATH`** *(optional)* : Directory in which to search for sketches (default: `examples/`)
* **`BOARD_NAME`** *(optional)* : Fully Qualified Board Name (default: `arduino:avr:uno`)
* **`LIBRARIES_PATH`** *(optional)* : Folder containing Arduino libraries.
Use this folder to install required 3rd-party libraries.
Libraries SHOULD be installed by a parent action e.g. [Download GitHub Release](https://github.com/marketplace/actions/download-github-release) (default: `libraries/`)

## License
The Dockerfile and associated scripts and documentation in this project are released under the [Apache-2.0 License](LICENSE).
