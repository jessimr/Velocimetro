/*
 De una serie de números de 0 a 100 (incluido)
 -Si el número es divisible entre 5 -> # Bingo!!!
 -Si el número es par -> # Par!!!
 -Si el número es impar -> # Impar!!!
 -Si el número se encuentra en un rango entre 30-40 -> # Viva Swift!!!
 */

import UIKit

var num = 0...100

for i in num{
    if i % 5 == 0{
        print("\(i) Bingo!!!")
    }
    if i % 2 == 0{
        print("\(i) Par!!!")
    }else {
        print("\(i) Impar!!!")
    }
    if i >= 30 && i <= 40 {
        print("\(i) Viva Swift!!!")
    }
}
