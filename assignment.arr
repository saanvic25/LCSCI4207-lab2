import file("lab2-support.arr") as support
"1..."
support.encryptor1("hello")

fun my-encryptor1(s :: String) -> String:
  string-repeat(s, 5)
end

support.test-encryptor1(my-encryptor1)

"2..."
fun my-encryptor2(s :: String) -> String:
  doc: "returns the first letter of the string" 
  string-substring(s, 0, 4)
end

support.test-encryptor2(my-encryptor2)

"3...."
support.encryptor3("holmes....")
fun my-encryptor3(s :: String) -> String:
  doc: "changes the punctuation" 
  string-replace(s, "." , "!")
end
string-replace("holmes....", ".", "!")

support.test-encryptor3(my-encryptor3)

support.encryptor4("ABCDEFGHIJKLMNOPQRSTUVWXYZ")
fun my-encryptor4(s :: String) -> String:
  doc: "repeats the letters" 
  string-replace(s, "ABCDEFGHIJKLMNOPQRSTUVWXYZ" ,"ABCDABCDABCDABCDABCD")
end

support.test-encryptor4(my-encryptor4)

