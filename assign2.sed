#!/bin/sed
# Mickey Clarke
# CS 3424 Systems Programming
# Assignment 1, Spring 2023

# Comments should be left alone. You may assume comments (single- and
# multi-line) will not appear on lines with source code.
/^#/ d

# The program should not modify spaces which are leading, expanded tabs.

# No more than one space between tokens
s/[[:space]]{2}/ /g

# No trailing whitespace after a line
s/[[:space:]]*$//g

# Conditions should not have whitespace immediately inside of the
# parentheses.
s/\(\s\+/\(/g; s/\s\+\)/\)/g;

# Binary operators should always surrounded by a single space on
# either side (including assignment and Boolean).
# Only the following operators must be accounted for:
# +, -, *, /, =, ==, <=, >=, <, >.
s/[-+*/=<>]\+*\|==\|<=\|>=/g



