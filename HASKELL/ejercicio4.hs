-- Ejercicio 4: Calculadora simple según opción ingresada

main :: IO ()
main = do
    putStrLn "Ingrese el primer número:"
    entrada1 <- getLine
    putStrLn "Ingrese el segundo número:"
    entrada2 <- getLine

    let n1 = read entrada1 :: Float
        n2 = read entrada2 :: Float

    putStrLn "Seleccione la operación:"
    putStrLn "1. Suma"
    putStrLn "2. Resta"
    putStrLn "3. Multiplicación"
    putStrLn "4. División"

    opcionStr <- getLine
    let opcion = read opcionStr :: Int

    case opcion of
        1 -> putStrLn ("Resultado: " ++ show (n1 + n2))
        2 -> putStrLn ("Resultado: " ++ show (n1 - n2))
        3 -> putStrLn ("Resultado: " ++ show (n1 * n2))
        4 -> if n2 /= 0
                then putStrLn ("Resultado: " ++ show (n1 / n2))
                else putStrLn "Error: No se puede dividir entre cero."
        _ -> putStrLn "Opción no válida."
