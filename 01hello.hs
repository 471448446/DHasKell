-- 
-- 运行一个hello world
-- 编写方式：

-- 1.直接定义
-- main = putStrLn "<html><body>hello Haskell</body></html>"
-- 2.传递变量，顺序居然不重要
-- 运行方式：
-- 1. 跟编译C语言一样，先编译，在运行
-- 1.1 ghc -o hello hello.hs
-- 1.2 ./hello
-- 2. runghc hello.hs

main = putStrLn myHtml
myHtml = "<html><body>hello Haskell</body></html>"