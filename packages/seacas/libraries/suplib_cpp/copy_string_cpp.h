#ifndef copy_string_cpp_h
#define copy_string_cpp_h
#include <copy_string.h>
#include <string>

template <size_t size> void copy_string(char (&output)[size], const char *source)
{
  // Copy the string — don’t copy too many bytes.
  copy_string(output, source, size);
}

template <size_t size> void copy_string(char (&output)[size], const std::string &source)
{
  // Copy the string — don’t copy too many bytes.
  copy_string(output, source.c_str(), size);
}

inline void copy_string(char *dest, const std::string &source, size_t elements)
{
  copy_string(dest, source.c_str(), elements);
}
#endif
