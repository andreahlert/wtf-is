# WTF is a .env File?

A plain text file that stores environment variables as key-value pairs, one per line. It keeps configuration and secrets separate from code and should never be committed to git.

```
# .env
DATABASE_URL=postgres://localhost:5432/mydb
API_KEY=sk-abc123
DEBUG=true
PORT=3000

# .gitignore
.env          <-- always ignore this
.env.local

# .env.example  <-- commit this (no real values)
DATABASE_URL=
API_KEY=
```

**Examples:** [dotenv](https://github.com/motdotla/dotenv), [docker compose env_file](https://docs.docker.com/compose/environment-variables/set-environment-variables/), [direnv](https://github.com/direnv/direnv)
