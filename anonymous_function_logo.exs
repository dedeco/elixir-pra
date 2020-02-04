logo_file = fn
  (:democrat) -> "donkey.png"
  (:republican) -> "elephant.png"
  (:libertian) -> "statue.png"
  (:green) -> "flower.png"
  _ -> "missing.png"
end

file = logo_file.(:libertian)

IO.puts(file)
