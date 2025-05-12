-- Definimos el tipo Estudiante
data Estudiante = Estudiante String Float
    deriving (Show)

-- Aumenta en 10% la nota de un estudiante
aumentarNota :: Estudiante -> Estudiante
aumentarNota (Estudiante nombre nota) = Estudiante nombre (nota * 1.10)

-- Aplica el aumento del 10% a una lista de estudiantes
aumentarNotas :: [Estudiante] -> [Estudiante]
aumentarNotas estudiantes = map aumentarNota estudiantes

-- Función principal
main :: IO ()
main = do
    let estudiantes = [Estudiante "Ana" 7.5, Estudiante "Luis" 6.0, Estudiante "Marta" 8.3]
    let estudiantesAumentados = aumentarNotas estudiantes
    putStrLn "Notas actualizadas:"
    mapM_ print estudiantesAumentados