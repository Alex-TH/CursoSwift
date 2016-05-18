//Alejandro Trejo Huerta
var rango = 0...100
for n in rango {
    if n % 5 == 0 {
        print("# \(n) Bingo!!!")
    }
    if n % 2 == 0 {
        print("# \(n) par!!!")
    }
    else {
        print("# \(n) impar!!!")
    }
    if n >= 30 && n <= 40 {
        print("# \(n) Viva Swift!!!")
    }
}
