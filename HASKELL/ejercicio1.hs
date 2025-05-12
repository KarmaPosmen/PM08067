-- Ejercicio 1: Determinar si un número es par o impar
main :: IO ()
main = do
    putStrLn "Ingrese un número entero:"
    input <- getLine
    let numero = read input :: Int
    if esPar numero
        then putStrLn "El número es par."
        else putStrLn "El número es impar."

-- Función que verifica si un número es par
esPar :: Int -> Bool
esPar n = n `mod` 2 == 0

