#!/usr/bin/env python3
## MIT License
##
## Copyright (c) 2019 Alon Rashelbach
##
## Permission is hereby granted, free of charge, to any person obtaining a copy
## of this software and associated documentation files (the "Software"), to deal
## in the Software without restriction, including without limitation the rights
## to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
## copies of the Software, and to permit persons to whom the Software is
## furnished to do so, subject to the following conditions:
##
## The above copyright notice and this permission notice shall be included in all
## copies or substantial portions of the Software.
##
## THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
## IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
## FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
## AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
## LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
## OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
## SOFTWARE.

import os
import sys
from distutils.core import setup, Extension


def check_python_version():
    # Get the major, minor, and micro version numbers
    major, minor, micro = sys.version_info[:3]

    # Define the version range
    min_version = (3, 5)
    max_version = (3, 7)

    # Check if the current version is within the range
    if (major, minor) < min_version or (major, minor) > max_version:
        raise sys.exit(
            f"Python version must be between {min_version[0]}.{min_version[1]}.X and {max_version[0]}.{max_version[1]}.X. Current version is {major}.{minor}.{micro}.")


check_python_version()

my_path=os.path.dirname(os.path.realpath(__file__))
bin_dir=os.path.join(my_path, '..', 'bin')
lib_dir=os.path.join(my_path, '..', 'src')
include_dir=os.path.join(my_path, '..', 'include')
bin_dir = os.environ.get('BIN_DIR', bin_dir)
lib_dir = os.environ.get('SRC_DIR', lib_dir)
include_dir = os.environ.get('INCLUDE_DIR', include_dir)

install_requirements = [
    "tensorflow==1.13.1",
    "numpy==1.16.2",
    "matplotlib==3.0.3",
    "protobuf==3.20.1"
]

# Note: The makefile executes this script from the bin directory
module=Extension('rqrmi',
    include_dirs = [lib_dir, include_dir],
    libraries = ['rqrmi'],
    library_dirs = [bin_dir],
    extra_compile_args=['-std=c++11'],
    sources = ['%s/python_library.cpp' % lib_dir])

setup(name='rqrmi',
      version='1.0',
      ext_modules=[module], install_requires=install_requirements)
