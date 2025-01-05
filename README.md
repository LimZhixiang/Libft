# Libft
A foundational 42 project to create a custom C library, replicating standard libc functions like strlen, strdup, and memset. It strengthens low-level programming skills, memory management, and understanding of pointers, serving as a base for advanced projects.

## Table of Contents

1. [About the Project](#about-the-project)
2. [Built-With](#built-with)
2. [Functions Overview](#functions-overview)
	- [Character Manipulation Functions](#character-manipulation-functions)
	- [String Manipulation Functions](#string-manipulation-functions)
	- [Memory Manipulation Functions](#memory-manipulation-functions)
	- [File Descriptor Functions](#file-descriptor-functions)
	- [Int to string Function](#int-to-string-function)
3. [Bonus Functions](#bonus-functions)
	- [Linked List Manipulation Functions](#linked-list-manipulation-functions)
4. [Installation](#installation)
5. [Usage](#usage)

## About the Project
Libft is one of the foundational projects for C in the 42 curriculum, and the goal is to create a custom C library that mimics a few of the essential standard library function in C. In this project I got exposed to string maniplulation, pointers, memory management skills and basics of linked list. This lay a solid foundation for future projects by building a personal library of reusable utility functions.

## Built-With
<img src="https://skillicons.dev/icons?i=c">

## Functions Overview
<details id="character-manipulation-functions">
	<summary style="font-size: 20px; font-weight:bold;">Character Manipulation Functions</summary>

- `ft_isalnum(int c)`
	- Checks for an alphanumeric character.
	- Return: `1` is true, `0` is false.
- `ft_isalpha(int c)`
	- Checks for alphabetic character.
	- Return: `1` is true, `0` is false.
- `ft_isascii(int c)`
	- Checks if argument is a 7-bit unsigned char that fits into the ASCII character set.
	- Return: `1` is true, `0` is false.
- `ft_isdigit(int c)` 
	- Checks for a digit (0 through 9).
	- Return: `1` is true, `0` is false.
- `ft_isprint(int c)`
	- Checks if argument is a printable character including space.
	- Return: `1` is true, `0` is false.
- `ft_toupper(int c)`
	- Returns: Uppercase equivalent of c if it's lowercase, otherwise returns c.
- `ft_tolower(int c)`
	- Returns: Lowercase equivalent of c if it's lowercase, otherwise returns c.

</details>

<details id="string-manipulation-functions">
	<summary style="font-size: 20px; font-weight:bold;">String Manipulation Functions</summary>

- `ft_split(char const *s, char c)`
	- Returns an array of strings obtained by splitting s using the character c as a delimiter.
	- Returns: `NULL` is memory allocation fails; otherwise a `NULL` terminated array.
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
- `ft_strlen(const char *s)`
	- Returns: Length of the string s as size_t.
- `ft_strmapi(char const *s, char (*f)(unsigned int, char))`
	- Applies the function f to each character of the string s to create a new string resulting from successive application of f.
	- returns: The string created from the successive applications of 'f'. Returns NULL if the memory allocation fails.
- `ft_strncmp(const char *s1, const char *s2, size_t )`
	- Compares the first n character of the two strings s1 and s2.
	- Returns: Returns `0` if the strings are equal up to `n` characters, `> 0` value if non-matching character s1 is greater than the corresponding character in s2. `< 0` value if non-matching character in s1 is less than corresponding characte in s2.
- `ft_strnstr(const char *big, const char *little, size_t len)`
	- Locates the first occurrence of little in the string big, where not more than len characters are searched. Characters that appear after '\0' are not searched.
	- Returns: If little is an empty string, big is returned; `NULL` if little occurs nowhere in big; otherwise pointer to the first character of the first occurence of little is returned.
- `ft_strrchr(const char *s, int c)`
	- Locates the last occurence of char c in string s.
	- Returns: `NULL` if char c is not found in s; pointer to the last occurence of c in string s.
- `ft_strtrim(char const *s1, char const *set)`
	- Returns a copy of s1 with the characters specified in set removed from the beginning and the end of the string.
	- Returns: `NULL` if memory allocation fails; otherwise returns a copy of the trimmed string.
- `ft_substr(char const *s, unsigned int start, size_t len)`
	- Returns a substr of string s, beginning from index start and of maximum len.
	- Returns: `NULL` if memory allocation fails; otherwise returns the '\0' terminated sub string.
- `ft_atoi(const char *nptr)`
	- Converts a string to an integer
	- Returns: The converted value as int.

</details>

<details id="memory-manipulation-functions">
	<summary style="font-size: 20px; font-weight:bold;">Memory Manipulation Functions</summary>

- `ft_bzero(void *s, size_t n)`
	- Erases data in the n bytes of a memory starting at the location pointed to by s, by writing '\0' to the area.
- `ft_calloc(size_t nmemb, size_t size)`
	- Allocates memory for an array of nmemb elements of size bytes each and returns a pointer to the allocated memory. The memory is set to zero.
	- Returns: `NULL` if memory allocation fails, otherwise a pointer to the allocated memory.
- `ft_memchr(const void *s, int c, size_t n)`
	- Scans the initial n bytes of the memory pointed to by s for the first instance of c.
	- Returns: `NULL` if no matching byte is found; otherwise pointer to the matching byte.
- `ft_memcmp(const void *s1, const void *s2, size_t n)`
	- Compares the first n bytes of s1 and s2.
	- Returns: `0` if the string is equal up to n bytes; > 0 if a character in s1 is greater than s2; < 0 if a character in s2 is greater than s1.
- `ft_memcpy(void *dest, const void *src, size_t n)`
	- Copies n bytes of memory from src to dest.
	- Returns: pointer to dest.
- `ft_memmove(void *dest, const void *src, size_t n)`
	- Copies n bytes of memory from src to dest but it handles if the memory areas of dest and src overlaps.
	- Returns: pointer to dest.
- `ft_memset(void *s, int c, size_t n)`
	- Fills up first n bytes of memory s with a constant byte c.

</details>

<details id="file-descriptor-functions">
	<summary style="font-size: 20px; font-weight:bold;">File Descriptor Functions</summary>

- `ft_putchar_fd(char c, int fd)`
	- Outputs the character c to the given file descriptor.
- `ft_putendl_fd(char *s, int fd)`
	- Outputs the string s, followed by a newline '\n' to the given file descriptor.
- `ft_putnbr_fd(int n, int fd)`
	- Outputs the int n to the given file descriptor.
- `ft_putstr_fd(char *s, int fd)`
	- Outputs the string s to the given file descriptor.
</details>

<details id="int-to-string-function">
	<summary style="font-size: 20px; font-weight:bold;">Int to String Function</summary>

- `ft_itoa(int n)`
	- Converts a integer to a string.
	- Returns: `NULL` if memory allocation fails; otherwise pointer to converted string.

</details>

## Bonus Functions

<details id="linked-list-manipulation-functions">
	<summary style="font-size: 20px; font-weight:bold;">Linked List Manipulation Functions</summary>

- `ft_lstadd_back(t_list **lst, t_list *new)`
	- Adds a new node (new) to the back of the lst, if lst is empty then new will be the head in lst.
- `ft_lstadd_front(t_list **lst, t_list *new)`
	- Adds a new node (new) to the front of lst, making it the head of lst.
- `ft_lstclear(t_list **lst, void (*del)(void *))`
	- Deletes and free every node in lst.
- `ft_lstdelone(t_list *lst, void (*del)(void *))`
	- Deletes and free the node lst, the memory of next node will not be freed.
- `ft_lstiter(t_list *lst, void (*f)(void *))`
	- Iterates through the lst and applies the function 'f' to the content of each node.
- `ft_lstlast(t_list *lst)`
	- Iterates through the linked list lst and returns the last element of the lst.
	- Returns: Last node of the linked list.
- `ft_lstmap(t_list *lst, void *(*f)(void *), void (*del)(void *))`
	- Applies the function f to the content of each element. Creating a new list resulting in successful applications of function f.
	- Returns: `NULL` if memory allocation fails; otherwise pointer to the new list.
- `ft_lstnew(void *content)`
	- Creates a new node with content.
	- Returns: `NULL` if memory allocation fails; otherwise returns new node.
- `ft_lstsize(t_list *lst)`
	- Counts the number of nodes in the link list lst.
	- Returns: int number of nodes in the linked list.

</details>

## Installation
clone the project
```bash
git clone https://github.com/LimZhixiang/Libft.git
```
Navigate to the project directory
```bash
cd Libft
```
Compile the project
```bash
make
```
Compile the bonus files
```bash
make bonus
```
- this will generate the libft.a file in the project directory

## Usage
Include the header file libft.h in your project to access the library functions:
```c
#include "libft.h"
```
Compile your project with the library
- Use the -L flag to specify the directory where the compiled libft.a file is located and use the -l flag to link it. Example below:
```bash
gcc -Wall -Wextra -Werror -o my_program main.c -L/path/to/libft -lft
```