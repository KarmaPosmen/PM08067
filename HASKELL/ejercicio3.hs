-- Sumar o multiplicar dos números según la condición

main :: IO ()
main = do
    putStrLn "Ingrese el primer número:"
    entrada1 <- getLine
    putStrLn "Ingrese el segundo número:"
    entrada2 <- getLine

    let n1 = read entrada1 :: Int
        n2 = read entrada2 :: Int

    if n1 >= n2
        then putStrLn ("La suma es: " ++ show (n1 + n2))
        else putStrLn ("La multiplicación es: " ++ show (n1 * n2))
