-- Haskell中函数是第一优先级，并且所有的函数都只有一个参数。
-- 匿名函数可以不指定函数的名称，可以在任何地方编写，匿名函数又叫lambda函数
-- 申明方式：
-- \<argument> -> <expression>
-- 以\开头有，后面跟函数类型
-- 比如下面的lambda
three = (\num1 -> \num2 -> num1 + num2) 1 2

-- el :: String -> String -> String
-- el tag content =
--   "<" <> tag <> ">" <> content <> "</" <> tag <> ">"
-- 等价于：
-- el :: String -> (String -> String)
-- el = \tag -> \content ->
--   "<" <> tag <> ">" <> content <> "</" <> tag <> ">"
