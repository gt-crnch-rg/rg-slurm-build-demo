# Welcome to Rogues Gallery C++ Software Project

[![License](https://img.shields.io/badge/License-BSD%202--Clause-orange.svg)](https://opensource.org/licenses/BSD-2-Clause)
[![GitHub Workflow Status](https://img.shields.io/github/actions/workflow/status/SterlingPeet/rg-build-demo/ci.yml?branch=main)](https://github.com/SterlingPeet/rg-build-demo/actions/workflows/ci.yml)
[![Documentation Status](https://readthedocs.org/projects/rg-build-demo/badge/)](https://rg-build-demo.readthedocs.io/)



# Prerequisites

Building Rogues Gallery C++ Software Project requires the following software installed:

* A C++11-compliant compiler
* CMake `>= 3.9`
* Doxygen (optional, documentation building is skipped if missing)
* The testing framework [Catch2](https://github.com/catchorg/Catch2) for building the test suite

# Building Rogues Gallery C++ Software Project

The following sequence of commands builds Rogues Gallery C++ Software Project.
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



# Testing Rogues Gallery C++ Software Project

When built according to the above explanation (with `-DBUILD_TESTING=ON`),
the C++ test suite of `Rogues Gallery C++ Software Project` can be run using
`ctest` from the build directory:

```
cd build
ctest
```


# Documentation

Rogues Gallery C++ Software Project provides a Sphinx-based documentation, that can
be browsed [online at readthedocs.org](https://rg-build-demo.readthedocs.io).
To build it locally, first ensure the requirements are installed by running this command from the top-level source directory:

```
pip install -r doc/requirements.txt
```

Then build the sphinx documentation from the top-level build directory:

```
cmake --build . --target sphinx-doc
```

The web documentation can then be browsed by opening `doc/sphinx/index.html` in your browser.
