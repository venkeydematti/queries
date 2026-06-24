---

name: explain-js-file
description: Explain what a JavaScript file does in plain English. Use this when the user asks to explain, summarize, or describe the contents of a .js file. Provide a 3-bullet summary covering the file's purpose, the main functions/exports, and any obvious quality concerns.

---

# Explain JavaScript file

When invoked, follow this procedure:

1. **Read the file** the user is asking about.
2. **Identify the file's purpose** — is it a utility module, a React component, a test file, configuration, etc.?
3. **List the main exports/functions** — name and one-line description for each.
4. **Note any quality concerns** — missing JSDoc, unused exports, suspect patterns. Skip nitpicks.

# Output format

Respond with exactly three bullet points, in this order:

- **Purpose:** What this file does
- **Main exports:** Comma-separated list of functions/classes/variables exported
- **Quality notes:** Most important 1-2 quality observations, or "no concerns" if clean

Be concise. No more than 3 sentences total per bullet.