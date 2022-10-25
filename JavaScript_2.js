let marsedes = 10
let bmw = 5
let porshe = 3

// 1. 
let cars = marsedes < bmw

if (cars) {
    console.log ("В условии переменная cars true:", cars)
} else {
    console.log ("В условии переменная cars false:", cars)
}

// 2.
let cars_1 = marsedes > bmw

if (cars_1) {
    console.log ("В условии переменная cars_1 true:", cars_1)
} else {
    console.log ("В условии переменная cars_1 false:", cars_1)
}

// 3.
let cars_2 = marsedes == bmw

if (cars) {
    console.log ("В условии переменная cars_2 true:", cars_2)
} else {
    console.log ("В условии переменная cars_2 false:", cars_2)
}

// 4.
let cars_3 = marsedes != bmw

if (cars_3) {
    console.log ("В условии переменная cars_3 true:", cars_3)
} else {
    console.log ("В условии переменная cars_3 false:", cars_3)
}


// console.log (true||false) - "||"логическое "или", при выборе между правдой и ложью выберет правду
// console.log (true&&false) - "&&" логическое "И", выберет ложь между правдой и ложь 


// 7. 

let cars_4 = marsedes > bmw || porshe < marsedes && marsedes == porshe
            //   "правда"   или    "правда"      и       "ложь"
console.log ("Выбираем  между правдой или ложью:",cars_4)

// 8. 

let cars_5 = marsedes > bmw && porshe > marsedes || marsedes == porshe
            //   "правда"   и       "ложь"       или      "ложь"  
console.log ("Выбираем  между ложью или ложью:", cars_5)

//9.
// young = 0- 17
// adult = 18-60
// old > 60
// вывод в консоль будет меняться в зависимости от значения переменной "user"

let user = 10

if (user < 18) {
    console.log ("Young content")
} else if (user >= 18 && user < 60) {
    console.log ("Adult content")
}  else {
    console.log ("Old content")
}

// 10.

let count = 0
while(count < 10) {
    console.log ("Выводим значение count =", count)
    count++ //добавляет +1 к переменной count после каждого прохождения по циклу
}


//11.

let count_1 = 0
while(count_1 < 5) {
        while (count_1 < 3) {
        console.log ("Счет меньше 3", count_1)
        break 
        // останавливает цикл для прохождения по следующим строкам
    }
    console.log ("Выводим значение count_1 =", count_1)
    count_1++ 
    }

//12.
let count_2 = 0
while (count_2 < 7) {
    
    if(count_2 == 5) {
        console.log ("Появляется пять:", count_2)
    }
    console.log ("Выводим значение count_2 =", count_2)
    count_2++ 
    }


//13.

 let count_3 = 10
for (let i=0; i < count_3; i++) {
    console.log ("Переменная count_3 =", count_3, "Переменная i =", i)
}

//14.
let status_code = ["Ales",200,300,400,"Gosha"]
for (let i in status_code) {
    if (status_code[i]==400) {
        console.log ("We find massives element 400")
    }
    console.log (" Статус код:", status_code[i])
}

//15.
let status_code_1 = ["Ales",200,300,400,"Gosha"]
for (let i of status_code_1) {
    console.log (" Статус код:", i)
}

//16.
let status_code_2 = ["Ales",200,300,400,"Gosha"]
for (let i of status_code_2) {
    if(i==400){
        continue
    }
    console.log (" Статус код:", i)
}

