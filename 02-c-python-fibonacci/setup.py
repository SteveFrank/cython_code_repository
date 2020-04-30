from setuptools import setup
from Cython.Build import cythonize

# 使用打包命令 python3 setup.py build_ext --inplace
setup(
    ext_modules=cythonize("fib.pyx"),
)
