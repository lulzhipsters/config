---
name: format
description: Format the existing code to improve readability
---

## Problem Statement

Even with formatters like `oxfmt` or `prettier`, code can still be less readable than is ideal.
Coding agents do not necessarily optimize for human readability.

## Goal

Have code be as easily scannable and understandable as possible. Ideally it should also be visually pleasing.

## Process

1. Get an understanding of the formatting tooling and rules enforced in this code base
2. Format using any tooling required by this code base
3. Reformat within the rules allowed by lint/formatting configuration
4. If available, run a 'check' pass with the included formatter to check for any violations. If there are violations, address them.
5. Look for other issues that could improve readability, but are minor refactorings. These _SHOULD NOT_ be performed automatically, but should be suggested as follow ups, as confirmed by the user. See "Additional Refactorings" below

## Formatting guidelines

- Use whitespace to separate or group code by concept, or separate blocks of complex code, as one would with paragraphs in prose.
- Comment placement may be important. Moving from before a block to in-line is an option, but length should be considered.

## Additional refactorings

- Consider whether constants or variables can be moved and grouped by purpose / naming.
- Consider whether destructuring of objects may be more/less readable vs repeated assignment or access.
- Look for long lines that are wrapped by the formatter that could instead become multiple clearer lines.
- Look for properties that are not logically or alphabetically sorted. Consider sorting, depending on the impact.
- Consider replacing nested `if/else` or long chained ternaries with `switch` statements or named variable assignments.
- Consider splitting logical blocks of code out from long functions where they may be grouped under a single function name.
