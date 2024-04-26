# Welcome to the Rogues Gallery C++ Software Build Demo Project

[![License](https://img.shields.io/badge/License-BSD%202--Clause-orange.svg)](https://opensource.org/licenses/BSD-2-Clause)
[![GitHub Workflow Status](https://img.shields.io/github/actions/workflow/status/gt-crnch-rg/rg-slurm-build-demo/ci.yml?branch=main)](https://github.com/gt-crnch-rg/rg-slurm-build-demo/actions/workflows/ci.yml)
[![Documentation Status](https://readthedocs.org/projects/rg-slurm-build-demo/badge/)](https://rg-slurm-build-demo.readthedocs.io/)



# Prerequisites

Building the Rogues Gallery C++ Software Build Demo Project requires the following software installed:

* A C++11-compliant compiler
* CMake `>= 3.9`
* Doxygen (optional, documentation building is skipped if missing)
* The testing framework [Catch2](https://github.com/catchorg/Catch2) for building the test suite

# Building the Rogues Gallery C++ Software Build Demo Project

The following sequence of commands builds the Rogues Gallery C++ Software Build Demo Project.
It assumes that your current working directory is the top-level directory
of the freshly cloned repository:

```
mkdir build
cd build
cmake -DCMAKE_BUILD_TYPE=Release ..
cmake --build .
```

The build process can be customized with the following CMake variables,
which can be set by adding `-D<var>={ON, OFF}` to the `cmake` call:

* `BUILD_TESTING`: Enable building of the test suite (default: `ON`)
* `BUILD_DOCS`: Enable building the documentation (default: `ON`)



# Testing the Rogues Gallery C++ Software Build Demo Project

When built according to the above explanation (with `-DBUILD_TESTING=ON`),
the C++ test suite of the `Rogues Gallery C++ Software Build Demo Project` can be run using
`ctest` from the build directory:

```
cd build
ctest
```


# Documentation

The Rogues Gallery C++ Software Build Demo Project provides a Sphinx-based documentation, that can
be browsed [online at readthedocs.org](https://rg-slurm-build-demo.readthedocs.io).
To build it locally, first ensure the requirements are installed by running this command from the top-level source directory:

```
pip install -r doc/requirements.txt
```

Then build the sphinx documentation from the top-level build directory:

```
cmake --build . --target sphinx-doc
```

The web documentation can then be browsed by opening `doc/sphinx/index.html` in your browser.
