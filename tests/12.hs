data Bool = True | False

main = print (show (take 5 (let ns = 1 : map (foo 123) ns in ns)))

print = foreignJS 1 "console.log" ""

show = foreignPure 1 "JSON.stringify" ""

foo x y = x * y / 2

take 0 _      = []
take n (x:xs) = x : take (n - 1) xs

map f []     = []
map f (x:xs) = f x : map f xs
