# Contributing

Want to add a concept? Here's how.

## Rules

1. **One concept per file** in `concepts/`
2. **File name** is the concept in lowercase kebab-case: `service-mesh.md`
3. **Max 3-4 sentences** for the explanation. If you need more, you're overcomplicating it.
4. **ASCII diagrams** are encouraged but optional
5. **No jargon to explain jargon**. If your explanation requires understanding another concept, simplify it.
6. **Include real examples** (tools, products, services that implement the concept)
7. **No opinions**. Don't say "X is better than Y". Just explain what the thing is.

## Template

Use this template for new concepts:

```markdown
# WTF is [Concept]?

[2-4 sentences explaining the concept in plain language]

\```
[optional ASCII diagram]
\```

**Examples:** tool1, tool2, tool3
```

## Steps

1. Fork the repo
2. Create `concepts/your-concept.md` following the template
3. Add a link to `README.md` in the appropriate section
4. Open a PR with the title: `add: concept-name`

## What makes a good explanation

- You could explain it to a friend who codes but has never heard the term
- Someone can read it in 30 seconds and walk away understanding it
- The diagram actually clarifies something (don't add one just for decoration)

## What to avoid

- Wikipedia-style history ("First proposed in 1997 by...")
- Academic language ("A paradigm whereby distributed systems...")
- Explaining every edge case. Cover the 90% use case.
- Marketing language ("Revolutionary approach to...")
