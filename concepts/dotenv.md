# WTF is dotenv?

A library that loads environment variables from a `.env` file into your app's process. It keeps secrets and config out of your code and lets each developer have their own local settings.

```
# .env file (not committed to git)
DATABASE_URL=postgres://localhost:5432/mydb
API_KEY=sk-abc123

# app.js
require('dotenv').config()
process.env.DATABASE_URL  // "postgres://localhost:5432/mydb"
```

**Examples:** [dotenv (Node.js)](https://github.com/motdotla/dotenv), [python-dotenv](https://github.com/theskumar/python-dotenv), [godotenv](https://github.com/joho/godotenv)
