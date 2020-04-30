from setuptools import setup
from Cython.Build import cythonize

# 使用打包命令 python3 setup.py build_ext --inplace
# 打印转化分析 annotate=True
setup(
    ext_modules=cythonize("primes.pyx", annotate=True),
)
