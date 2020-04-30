from libc.stdlib cimport atoi
from libc.math cimport sin

from cpython.version cimport PY_VERSION_HEX

# Python version >= 3.2 final ?
print(PY_VERSION_HEX >= 0x030200F0)

cdef int parse_charptr_to_py_int(char* s):
    assert s is not NULL, "byte string value is NULL"
    return atoi(s)  # note: atoi() has no error detection!

cdef double f(double x):
    return sin(x * x)

cdef extern from "math.h":
    cpdef double sin(double x)

cdef extern from "string.h":
    char* strstr(const char*, const char*)

cdef extern from "string.h":
    char* strstr(const char *haystack, const char *needle)

cdef char* data = "hfvcakdfagbcffvschvxcdfgccbcfhvgcsnfxjh"

cdef char* pos = strstr(needle='akd', haystack=data)
print(pos is not NULL)
