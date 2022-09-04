--  Haskell是强类型语言，每个表达式都必须申明类型。在运行程序前，会检查类型，如果类型不合法，会报错。
-- 同时，Haskell也有类型推断，可以不显示的指定表达式的类型。但是指定类型，在阅读代码的时候就更加清晰。
-- 所以建议在最顶层的代码处添加类型说明。
-- -----支持的额类型：
-- Int ,数字类型
-- String ,字符串类型
-- Bool ,布尔变量
-- () ,空类型
-- a -> b , 函数类型，接受参数a类型，返回b类型
-- IO () IO子程序返回的是空
-- ----- 类型申明方式：使用双冒号 ::

-- 例子：
-- title_ :: String -> String   申明了函数title_ 接受String参数，返回字符串参数
-- makeHtml :: String -> String -> String  离谱，函数makeHtml怎么了三个类型
--   这个其实是类型的嵌套。在Haskell中所有的函数，只接受一个参数输入，一个参数返回。
--   所以maktHtml函数申明的类型意思是，接受一个String参数，并返回一个函数，函数的类型是 String -> String
--   -> 这个操作符跟<> 这个操作符一样是右联想（The magic here is that -> is right associative）的
--   String -> String -> String 等价于是这个 String -> (String -> String)

-- el 函数，提供了包裹标签，并写入内容的功能
el :: String -> String -> String
el tag content = "<" <> tag <> ">" <> content <> "</" <> tag <> ">"
-- html 函数，封装html标签
html_ :: String -> String
html_ = el "html" 
main = putStrLn (html_ "Hello Haskell")