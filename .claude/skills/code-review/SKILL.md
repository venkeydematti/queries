---
name: code-review
description: Review a JavaScript or TypeScript file for code quality, security issues, and missing tests, without making any changes. Use when the user asks for a code review, feedback on a file, or wants you to check the quality of a .js or .ts file.
allowed-tools: ["Read", "Grep", "Glob"]

---


# Code Review

When invoked, perform a focused review using only read-only tools.

## Procedure

1. **Read** the file(s) the user is asking about
2. **Use Grep** to check for patterns of concern (e.g., \`console.log\` left in, \`TODO\`, \`eval(\`, etc.)
3. **Use Glob** to find related files if a directory was specified
4. **Do NOT attempt to modify, fix, or rewrite anything.** Report findings only.

## Review criteria

Report only:
- **Security issues:** unsafe \`eval\`, unsanitized inputs, hardcoded secrets
- **Quality issues:** unused exports, missing error handling, debug logs left in
- **Missing tests:** new functions without corresponding tests
- **Documentation gaps:** exported functions missing JSDoc

Skip:
- Minor style nits (handled by linters)
- Personal preference issues

## Output format

For each finding:
- **File:line** — short description
- **Severity:** critical / high / medium
- **Why:** one sentence
- **Suggested fix:** describe in prose (do NOT write code edits — the user will apply changes themselves)
