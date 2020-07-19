import os
from setuptools import setup, Extension, find_packages


THISDIR = os.path.dirname(os.path.realpath(__file__))
EXT_RELDIR = os.path.join('src', 'ext')

setup(
    name="simple",
    version='0.1',
    ext_modules=[
        Extension('simple._simple', [
            os.path.join(EXT_RELDIR, 'simple.c'),
            os.path.join(EXT_RELDIR, 'simple_wrap.c')
        ])
    ],
    package_dir={'': 'src'},
    packages=find_packages(where='src'),
    include_package_data=True,
)

