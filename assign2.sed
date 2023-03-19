#!/bin/sed -f
# Mickey Clarke
# CS 3424 Systems Programming
# Assignment 1, Spring 2023

# Print and then delete all single line comments
/\/\//p
/\/\//d

# Remove trailing whitespace after a line
s/\s+$//g

# Print and delete multiline comments
/\/\*/,/\*\//p
/\/\*/,/\*\//d

# Print and delete import statements
/^#/p
/^#/d

# Remove trailing whitespace after a line
s/\s+$//g

# No more than one space between tokens
s/(\S)\s{2,}(\S)/\1 \2/g

# Condidtions should not have whitespace immediately inside of the parentheses.

s/\( */\(/g
s/ *\)/\)/g

#s/\(\s/(/g
#s/\s\)/\)/g

# Binary operators should always surrounded by a single space on
# either side (including assignment and Boolean).
# Only the following operators must be accounted for:
# +, -, *, /, =, ==, <=, >=, <, >.

# Handle = operator

s/ *= */ = /g

# Handle / operator

s/ *\/ */ \/ /g

# Handle * operator

s/ *\* */ \* /g

# Handle < operator

s/ *< */ < /g

#Handle > operator

s/ *> */ > /g

#Handle + operator
s/ *\+ */ \+ /g

#Handle - operator

s/ *\- */ \- /g

#Reset double binary
s/> =/>=/g
s/< =/<=/g
s/= *=/==/g


#Handle <= operator

s/ *<= */ <= /g

#Handle >= operator

s/ *>= */ >= /g

#Handle == operator
s/ *== */ == /g
