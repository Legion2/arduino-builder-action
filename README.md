# Run arduino-builder
Github Action to run arduino-builder for sketches and see if they compile.
Used Arduino IDE version is `1.8.3`.

## Usage
See [action.yml](action.yml) for comprehensive list of parameters.

Basic:
```yaml
name: Build examples
on: push
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v1
    - name: Build all example sketches
      uses: Legion2/arduino-builder-action@v2.0.0
      with:
        board: "arduino:avr:leonardo"
```

### Arguments
Specified arguments override any input parameters passed to arduino-builder, with the exception of the sketch input parameter.
Only use arguments if the input parameters don't provide the feature you need.
See the the [action.yml](action.yml) for comprehensive list of input parameters.

### Install Libraries
Libraries SHOULD be installed by a previous step in the job in `/github/libraries/`.
You can use [Download GitHub Release Action](https://github.com/marketplace/actions/download-github-release) to install a library form a GitHub Release.

## License
The Dockerfile and associated scripts and documentation in this project are released under the [Apache-2.0 License](LICENSE).
