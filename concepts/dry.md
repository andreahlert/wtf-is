# WTF is DRY?

DRY stands for "Don't Repeat Yourself." If you find the same logic in multiple places, extract it into a single source of truth. When you need to change it, you change it once.

```
// WET (Write Everything Twice)
fn create_user() { validate(email); hash(pw); save(db); log("created"); }
fn update_user() { validate(email); hash(pw); save(db); log("updated"); }

// DRY (extract shared logic)
fn save_user(action) {
    validate(email)
    hash(pw)
    save(db)
    log(action)
}
```

**Examples:** [ESLint no-duplicate-imports](https://github.com/eslint/eslint), [Terraform modules](https://github.com/hashicorp/terraform), [Rails ActiveRecord](https://github.com/rails/rails)
