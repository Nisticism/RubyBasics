file = File.open("employees.txt", "r")
  puts file.readlines()
file.close()

file = File.open("employees.txt", "w")
  file.write("Oscar, Accounting")
file.close()

file = File.open("index.html", "w")
  file.write("<h1>Hello</h1>")
file.close()
