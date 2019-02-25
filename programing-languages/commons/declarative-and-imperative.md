# Imperative vs Declarative
- Imperative programming: telling the “machine” how to do something, and as a result what you want to happen will happen.

```
var numbers = [1,2,3,4,5]
var doubled = []

for(var i = 0; i < number.length; i++) {
  doubled.push(numbers[i] * 2)
}
```

- Declarative programming: telling the “machine” what you would like to happen, and let the computer figure out how to do it.

```
var numbers = [1,2,3,4,5]
var doubled = numbers.map(n => n * 2)
```
# Refs:
- https://en.wikipedia.org/wiki/Imperative_programming
- https://en.wikipedia.org/wiki/Declarative_programming
- https://techmaster.vn/posts/33572/lap-trinh-declarative-programming
- https://medium.com/front-end-weekly/imperative-versus-declarative-code-whats-the-difference-adc7dd6c8380
