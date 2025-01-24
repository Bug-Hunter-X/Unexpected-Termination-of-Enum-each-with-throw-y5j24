```elixir
list = [1, 2, 3, 4, 5]

# Using Enum.reduce
result = Enum.reduce(list, [], fn x, acc ->
  if x == 3 do
    acc
  else
    [x | acc]
  end
end)
IO.inspect(Enum.reverse(result))

#Alternative using for loop and try-catch
for x <- list do 
  try do
    if x == 3 do
      throw(:three_found)
    else
      IO.puts(x) 
    end
  catch
    :three_found -> IO.puts("Encountered 3, proceeding...")
  end
end
```