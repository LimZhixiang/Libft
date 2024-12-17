# Libft
A foundational 42 project to create a custom C library, replicating standard libc functions like strlen, strdup, and memset. It strengthens low-level programming skills, memory management, and understanding of pointers, serving as a base for advanced projects.

## Table of Contents

1. [About the Project](#about-the-project)
2. [Functions Overview](#functions-overview)
3. [Bonus Functions](#bonus-functions)
4. [Installation](#installation)
5. [Usage](#usage)

## About the Project
Libft is one of the foundational projects for C in the 42 curriculum, and the goal is to create a custom C library that mimics a few of the essential standard library function in C. In this project I got exposed to string maniplulation, pointers, memory management skills and basics of linked list. This lay a solid foundation for future projects by building a personal library of reusable utility functions.

## Functions Overview

### Character Handling Functions
- `ft_isalpha(int c)`
	- Checks for alphabetic character.
	- Return: `1` is true, `0` is false.
- `ft_isdigit(int c)` 
	- Checks for a digit (0 through 9).
	- Return: `1` is true, `0` is false.
- `ft_isalnum(int c)`
	- Checks for an alphanumeric character.
	- Return: `1` is true, `0` is false.
- `ft_isascii(int c)`
	- Checks if argument is a 7-bit unsigned char that fits into the ASCII character set.
	- Return: `1` is true, `0` is false.
- `ft_isprint(int c)`
	- Checks if argument is a printable character including space.
	- Return: `1` is true, `0` is false.
- `ft_toupper(int c)`
	- Returns: Uppercase equivalent of c if it's lowercase, otherwise returns c.
- `ft_tolower(int c)`
	- Returns: Lowercase equivalent of c if it's lowercase, otherwise returns c.

### String manipulation Functions
- `ft_strlen(const char *s)`
	- Returns: Length of the string s as size_t.
- `ft_strchr(const char *s, int c)`
	- Finds the first occurence of character c in the string s
	- Returns: The pointer to the occurence of c in the string, else `NULL`.
- `ft_strdup(const char *s)`
	- Copies string s and returns it as a new string
	- Returns: Pointer to a new string which is a duplicate of s, if fails returns `NULL`
- `ft_striteri(char *s, void (*f)(unsigned int, char*))`
	- Applies function f to each character of the string passed as argument and passing its index as first argument. Each character is passed by address to f to be modified if necessary.
	- Returns: No return value.
- `ft_strjoin(char const *s1, char const *s2)`
	- Allocates memory and returns a new string which is the result of the concatenation of s1 and s2.
	- Returns: Pointer to a new string which is the concatentation of s1 and s2, `NULL` if memory allocation fails.
- `ft_strlcat(char *dst, const char *src, size_t size)`
	- Appends the NUL-terminated string src to the end of dst. it will append at most size - strlen(dst) - 1 bytes, NUL-terminating the result.
	- Returns: The total length of the string the function creates.
- `ft_strlcpy(char *dst, const char *src, size_t size)`
	- Copies up to size -1 characters from the NUL-terminated string src to dst, NUL-terminating the result.
	- Returns: The total length of the string the function creates.
- `ft_strmapi(char const *s, char (*f)(unsigned int, char))`
	- Applies the function f to each character of the string s to create a new string resulting from successive application of f.
	- returns: The string created from the successive applications of 'f'. Returns NULL if the memory allocation fails.
- `ft_strncmp(const char *s1, const char *s2, size_t )`
	- Compares the first n character of the two strings s1 and s2.
	- Returns: Returns `0` if the strings are equal up to `n` characters, `> 0` value if non-matching character s1 is greater than the corresponding character in s2. `< 0` value if non-matching character in s1 is less than corresponding characte in s2.
- `ft_strnstr(const char *big, const char *little, size_t len)`
	- 