# sigmoid-function
A simple Lua class that can generate a Sigmoid function and transform input based on its parameters.

## Example
```lua
local sig = SigmoidFunction.new(-10, 5)
for x = 0, 1, 0.1 do
    local y = sig:transform(x)
    print(x, y)
end
```

[Inspired by this Reddit post](https://reddit.com/r/gamedev/comments/96f8jl/)