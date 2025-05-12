esPar :: Int -> String
esPar n =
    if even n
        then "El número es par."
        else "El número es impar."

main :: IO ()
main = do
    putStrLn "Ingrese un número entero:"
    entrada <- getLine
    let numero = read entrada :: Int
    putStrLn (esPar numero)