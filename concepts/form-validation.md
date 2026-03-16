# WTF is Form Validation?

Checking that user input meets requirements before submitting it. Client-side validation gives instant feedback (field turns red, error message appears). Server-side validation is the real security gate. You always need both because client-side validation can be bypassed.

```
Client-side (UX):             Server-side (security):

User types "abc" in email     POST /register { email: "abc" }
  ──► "Invalid email" shown     ──► Server: "Invalid email"
  ──► Form won't submit         ──► Returns 422

Both are needed. Client-side is for speed. Server-side is for safety.
```

**Examples:** [React Hook Form](https://github.com/react-hook-form/react-hook-form), [Zod](https://github.com/colinhacks/zod), [Formik](https://github.com/jaredpalmer/formik)
