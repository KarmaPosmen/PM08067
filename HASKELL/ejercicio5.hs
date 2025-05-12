--  Cálculo de aguinaldo segun antiguedad

main :: IO ()
main = do
    putStrLn "Ingrese el salario mensual del trabajador:"
    salarioStr <- getLine
    putStrLn "Ingrese la antigüedad en años (puede usar decimales):"
    antiguedadStr <- getLine

    let salario = read salarioStr :: Float
        antiguedad = read antiguedadStr :: Float
        aguinaldo = calcularAguinaldo salario antiguedad

    putStrLn ("El aguinaldo correspondiente es: $" ++ show aguinaldo)

-- Función que calcula el aguinaldo según los años de antigüedad
calcularAguinaldo :: Float -> Float -> Float
calcularAguinaldo salario anos
    | anos < 2    = salario / 30 * 15  -- 15 días
    | anos <= 5   = salario / 30 * 19  -- 19 días
    | otherwise   = salario / 30 * 30  -- 30 días
