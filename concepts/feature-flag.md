# WTF is a Feature Flag?

An if-statement in your code controlled by a remote config. It lets you turn features on or off without deploying new code. You can target specific users, roll out to a percentage, or kill a broken feature instantly.

```
if feature_flag("new-checkout"):
    show_new_checkout()     # flag ON
else:
    show_old_checkout()     # flag OFF

Dashboard: [new-checkout] ON for 20% of users
```

**Examples:** [LaunchDarkly](https://launchdarkly.com), [Unleash](https://github.com/Unleash/unleash), [Flipt](https://github.com/flipt-io/flipt)
