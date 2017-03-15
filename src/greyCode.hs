allGrey ::  [[String]]
allGrey = iterate doGrey ["0", "1"]
  where
    doGrey :: [String] -> [String]
    doGrey xs = (map ('0':) xs) ++ (map ('1':) $ reverse xs)

main :: IO ()
main = do
  length <- getLine
  putStr . unlines $ allGrey !! read length
  main
