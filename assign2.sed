#!/bin/sed -f
# Mickey Clarke
# CS 3424 Systems Programming
# Assignment 1, Spring 2023

# No more than one space between tokens
#
# No trailing whitespace after a line
#
# Binary operators should always surrounded by a single space on
# either side (including assignment and Boolean).
#
# Only the following operators must be accounted for:
# +, -, *, /, =, ==, <=, >=, <, >.
#
# Conditions should not have whitespace immediately inside of the
# parentheses.
#
# The program should not modify spaces which are leading, expanded tabs.
#
# Comments should be left alone. You may assume comments (single- and
# multi-line) will not appear on lines with source code.

s/\(/\( /g;

s/\)/\ )/g;

