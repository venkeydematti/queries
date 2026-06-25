---
name: security-scan
description: Perform a deep security audit on a JavaScript or TypeScript file. Use when the user asks for a thorough security scan, vulnerability check, or comprehensive security review of a .js or .ts file. Produces verbose output covering each vulnerability category in detail.
allowed-tools: ["Read", "Grep", "Glob"]
context: fork
---

# Security Scan

Perform a thorough, verbose security audit on the file(s) the user specifies.

## Procedure

For each of the following categories, perform a thorough scan AND write out your reasoning explicitly:

### 1. Injection vulnerabilities
- Look for: eval(), Function() constructor, dynamic require(), template literals in SQL queries, shell command concatenation
- For each finding: explain the attack vector, the exploit example, the recommended fix
- If no findings: explain what you checked and why nothing matched

### 2. Cross-site scripting (XSS)
- Look for: dangerouslySetInnerHTML, innerHTML assignments, document.write, unsafe URL handling
- For each finding: explain the attack vector, the exploit example, the recommended fix
- If no findings: explain what you checked

### 3. Authentication and authorization
- Verbose output

### 4. Input validation
- Verbose review

### 5. Cryptographic concerns
- Detailed analysis

### 6. Information disclosure
- Detailed explanation

## Final output (this is what comes back to the main session)

After completing all the verbose reasoning above, end with a **concise summary section** titled "Summary of findings" that lists only the actual issues, one bullet each. The verbose reasoning stays in the forked context; only the summary returns to the main session.