-- Muestra los 10 primeros números enteros positivos

main :: IO ()
main = mostrarNumeros 1

mostrarNumeros :: Int -> IO ()
mostrarNumeros n
    | n > 10    = return ()
    | otherwise = do
        print n
        mostrarNumeros (n + 1)
