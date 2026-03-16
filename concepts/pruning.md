# WTF is Model Pruning?

Model pruning removes unnecessary weights or neurons from a trained model, making it smaller and faster. If certain connections contribute almost nothing to the output, you can zero them out or remove them entirely. Think of it as trimming dead branches from a tree.

```
  Before Pruning              After Pruning
  [x1]──►[h1]──►[y]          [x1]──►[h1]──►[y]
      ╲  ╱  ╲                     ╲     ╲
       ╳    ╲                      ╲     ╲
      ╱  ╲   ╲                     ╲
  [x2]──►[h2]──►                [x2]   [h2]──►
      ╲  ╱
       ╳        (removed weak connections)
      ╱  ╲
  [x3]──►[h3]              [x3]──►[h3]
```

**Examples:** [Neural Magic](https://github.com/neuralmagic/sparseml), [PyTorch Pruning](https://pytorch.org/tutorials/intermediate/pruning_tutorial.html), [Torch-Pruning](https://github.com/VainF/Torch-Pruning)
