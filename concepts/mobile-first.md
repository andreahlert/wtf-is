# WTF is Mobile-First Design?

A design strategy where you build the mobile layout first, then progressively add complexity for larger screens. Instead of shrinking a desktop design to fit phones, you start small and scale up. CSS media queries use `min-width` instead of `max-width`.

```
Desktop-first:                Mobile-first:

Start big, remove stuff       Start small, add stuff
@media (max-width: 768px)     @media (min-width: 768px)
  hide sidebar                  show sidebar
  stack columns                 use columns
```

**Examples:** [Tailwind CSS](https://github.com/tailwindlabs/tailwindcss), [Bootstrap](https://github.com/twbs/bootstrap), [Chakra UI](https://github.com/chakra-ui/chakra-ui)
