# WTF is an ORM?

An ORM (Object-Relational Mapping) maps database tables to classes and rows to objects in your programming language. Instead of writing SQL, you call methods on objects and the ORM generates the SQL for you. This speeds up development but can hide performance problems like N+1 queries behind innocent-looking code.

```
  SQL:                          ORM:
  SELECT * FROM users           User.objects.all()
  WHERE age > 25;               User.query.filter(age > 25)

  INSERT INTO users             user = User(name="Alice")
  (name) VALUES ('Alice');      db.session.add(user)

  Table "users" ←→ class User
  Column "name" ←→ user.name
  Row            ←→ object instance
```

**Examples:** [SQLAlchemy](https://github.com/sqlalchemy/sqlalchemy), [Prisma](https://github.com/prisma/prisma), [Django ORM](https://github.com/django/django)
