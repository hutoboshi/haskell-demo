module Main where

-- 偶数かどうかを判定する関数
isEven :: Int -> Bool
isEven x = x `mod` 2 == 0

-- リスト内の偶数の合計を求める関数
sumEvenNumbers :: [Int] -> Int
sumEvenNumbers xs = sum (filter isEven xs)

-- メイン関数
main :: IO ()
main = do
  let numbers = [1..10]
  putStrLn "リスト内の偶数の合計"
  print numbers
  let result = sumEvenNumbers numbers
  putStrLn ("偶数の合計は：" ++ show result)