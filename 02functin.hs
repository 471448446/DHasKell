-- 02.1函数的申明方式：
--  <name> <arg1> <arg2> ... <argN> = <expression>
-- 建议使用驼峰方式命名
-- 定义了一个函数，名称是wrapHtml接受一个参数数。<>这个是一个操作符，链接左右两个参数
wrapHtml content = "<html><body>" <> content <> "</body></html>"
-- 02.2调用函数：
-- 不需要括号： <name> <arg1> <arg2> ... <argN>
myhtml = wrapHtml "Hello, world!"
-- 但是如果函数嵌套，就需要括号了,因為昨天也是函數，為了保證函數執行的正確性，括号用于指定优先级
main = putStrLn (wrapHtml "Hello world")
-- 02.3haskell 使用缩进的方式来完成区域区分，python也采用了这种思路