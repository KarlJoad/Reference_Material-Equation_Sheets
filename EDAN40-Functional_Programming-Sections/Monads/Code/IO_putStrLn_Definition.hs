putStrLn :: String -> IO ()
putStrLn xs = do putStr xs
                 putChar '\n'
