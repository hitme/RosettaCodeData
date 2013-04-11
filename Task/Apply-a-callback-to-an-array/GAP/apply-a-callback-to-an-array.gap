a := [1 .. 4];
b := ShallowCopy(a);

# Apply and replace values
Apply(a, n -> n*n);
a;
# [ 1, 4, 9, 16 ]

# Apply and don't change values
Perform(b, Display);
1
2
3
4

b;
# [ 1 .. 4 ]
