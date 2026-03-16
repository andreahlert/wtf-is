# WTF is Monkey Patching?

Monkey patching is modifying or extending existing code at runtime without changing the source. You replace methods, add properties, or override behavior on the fly. Useful for testing and hotfixes, but dangerous because it makes code unpredictable.

```
# Python: patching a method at runtime
class Dog:
    def speak(self):
        return "woof"

# Monkey patch
Dog.speak = lambda self: "meow"

Dog().speak()  # "meow" (wat)

# Common in testing:
from unittest.mock import patch
with patch("requests.get") as mock:
    mock.return_value = fake_response
    result = my_function()  # uses fake requests.get
```

**Examples:** [pytest monkeypatch](https://github.com/pytest-dev/pytest), [Ruby open classes](https://github.com/ruby/ruby), [Python unittest.mock](https://github.com/python/cpython)
