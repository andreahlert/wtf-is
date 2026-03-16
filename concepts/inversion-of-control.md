# WTF is Inversion of Control?

Inversion of Control (IoC) means your code doesn't call the framework; the framework calls your code. Instead of you controlling the flow, you hand control to a framework and it decides when to run your pieces.

```
// Normal control: you drive
main() {
    input = read()
    result = process(input)
    display(result)
}

// Inverted control: framework drives
framework.on("request", myHandler)    // you register
framework.on("error", myErrorHandler) // framework decides when to call
framework.start()                     // framework runs the show
```

**Examples:** [Spring IoC](https://github.com/spring-projects/spring-framework), [NestJS](https://github.com/nestjs/nest), [Angular](https://github.com/angular/angular)
