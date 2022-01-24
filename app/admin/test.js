// JavaScript code below
// Use console.log(...) to debug your solution.

//FIND LARGEST
function findLargest(numbers) {
    // Your code goes here
var numbers = [5, 7, 13, 17, 19];
var largest= 0;

for(var i = 0; i < numbers.length; i++){
    if( numbers[i] > largest){
    var largest = numbers[i];
  }

}
console.log(largest);
console.log(findLargest([7, 17, 13, 19, 5]));
}

// CALCUL
const PI = 3.14;
let radius = 5;

let perimeter = 2 * PI * radius;

console.log("Le périmètre du cercle de rayon " + radius + " est égal à : " + perimeter);

// CALCUL 2
function add(a, b) {
  return a + b;
}

console.log(add(12, 56));

// CALCUL 3
const sub = function (a, b) {
  return a - b;
};

let mult = function (a, b) {
  return a * b;
};

const factorielle = function fac(n) {
  if (n < 2) {
    return 1;
  } else {
    return n * fac(n - 1);
  }
};

console.log(sub(15, 26));
console.log(mult(15, 53));
console.log(factorielle(3));

// CALCUL 5
function categoryAthletism(age) {
  let category = '';

  if (age <= 6) { category = 'Baby Athlé'; }
  else if (age <= 9) { category = 'Ecole d\'athlétisme'; }
  else if (age <= 11) { category = 'Poussin'; }
  else if (age <= 13) { category = 'Benjamin'; }
  else if (age <= 15) { category = 'Minime '; }
  else if (age <= 17) { category = 'Cadet'; }
  else if (age <= 19) { category = 'Junior'; }
  else if (age <= 22) { category = 'Espoir'; }
  else { category = 'Autre'; }

  return category;
}

console.log(categoryAthletism(15));


// CALCUL 6
function getRandomInt(max) {
  return Math.floor(Math.random() * Math.floor(max));
}

function playOneArmBandit(monney) {
  const initialAmount = monney;
  let amountMonneyPlayed = 0;
  let amountWin = 0;
  let gains = [];

  while (monney > 0) {
    monney--;
    amountMonneyPlayed++;
    if (Math.random() > 0.95) {
      const gain = 1 + getRandomInt(10);
      amountWin += gain;
      monney += gain;
      gains.push(gain);
    }
  }

  console.log('gains: ' + gains);
  return (
    'You start with ' + initialAmount + ' euros\n' +
    'You win ' + amountWin + ' euros\n' +
    'You spent ' + amountMonneyPlayed +' euros\n'
  );
}
console.log(playOneArmBandit(100));


// COURS POURQUOI JAVASCRIPT
// Variables globales
let compteur = 0 // Compteur qui permettra de savoir sur quelle slide nous sommes
let timer, elements, slides, slideWidth

// window.onload = () => {

// On récupère le conteneur principal du diaporama
const diapo = document.querySelector(".diapo")

// On récupère le conteneur de tous les éléments
elements = document.querySelector(".elements")

// On récupère un tableau contenant la liste des diapos
slides = Array.from(elements.children)

// On récupère les deux flèches
let next = document.querySelector("#nav-droite")
let prev = document.querySelector("#nav-gauche")



// On calcule la largeur visible du diaporama
slideWidth = diapo.getBoundingClientRect().width

// On met en place les écouteurs d'évènements sur les flèches
next.addEventListener("click", slideNext)
prev.addEventListener("click", slidePrev)

    // Automatiser le diaporama
    timer = setInterval(slideNext, 4000)

    // Gérer le survol de la souris
    diapo.addEventListener("mouseover", stopTimer)
     diapo.addEventListener("mouseout", startTimer)

    // Mise en oeuvre du "responsive"
    window.addEventListener("resize", () => {
        slideWidth = diapo.getBoundingClientRect().width
        slideNext()
    })
//}
/**
 * Cette fonction fait défiler le diaporama vers la droite
 */
function slideNext(){
    // On incrémente le compteur
    compteur++

    // Si on dépasse la fin du diaporama, on "rembobine"
    if(compteur == slides.length){
        compteur = 0
    }

    // On calcule la valeur du décalage
    let decal = -slideWidth * compteur
    elements.style.transform = `translateX(${decal}px)`
}

/**
 * Cette fonction fait défiler le diaporama vers la gauche
 */
function slidePrev(){
    // On décrémente le compteur
    compteur--

    // Si on dépasse le début du diaporama, on repart à la fin
    if(compteur < 0){
        compteur = slides.length - 1
    }

    // On calcule la valeur du décalage
    let decal = -slideWidth * compteur
    elements.style.transform = `translateX(${decal}px)`
}



/**
 * On stoppe le défilement
 */
function stopTimer(){
    clearInterval(timer)
}

/**
 * On redémarre le défilement
 */
function startTimer(){
    timer = setInterval(slideNext, 4000)
}


console.log(txt + " est ici une chaîne de caractères")
const z = 200
if (z == 200) {
      bin = true
    }
    else
    { bin = false }
    end
console.log(z)

const float = 7.23;
const fltAdd = flt + num
console.log(flt, num)


function isoNum() {
    const a = 42
    return a
}

function isTooLong(str) {
    if (str.length > 10)
        return true
    else
        return false
}
console.log(isTooLong('hello'))

// FUNCTION TYPE OF
// Ecrivez la fonction myFct
function myFct(arg1, arg2) {
    const b = arg1 * arg2 + arg1 + arg2 ;
    if(typeof(arg1) !== "number" || typeof(arg2) !== "number" ){
        return -999999999 ;
    } else {
        return arg1*arg2 + arg1 + arg2;
    }
}
console.log(myFct(30, 6))
// utilisez typeof( )

function aprec(X){
  if( X >=0 && X < 7) {return "Hideux"}
  else if (X >=7 && X < 10 ){ return "Moche"}
  else if (X >=10 && X < 15) {return "Nice"}
  else if (X >=15 && X <= 20) {return "GG"}
  else return "BUG"
}

function aprec(note) {
    let result = '';
    if (note <= 7) {result = 'Hideux';}
    else if (note <= 7) {result = 'Hideux';}
    else if (note <= 10) {result = 'Moche';}
    else if (note <= 15) {result = 'Nice';}
    else if (note <= 20) {result = 'GG';}
    else if (note != typeof(note) != number) {result = 'BUG'}
    return result
}

console.log(aprec(5));
//PRENDRE UN ELEMENT DANS UN TABLEAU ET MODIFIER CET ELEMENT
const tablo = [1, 2, 3];
const item = tablo[1];
tablo[1] = '5';
tablo[1];

// Créez un tableau qui se nomme tablo et qui contient 1, 2 et 3
const tablo = [1, 2, 3];
ids            0  1  2
// Puis réalisez les ajouts demandés
tablo[3] = '13';
tablo[4] = '14';

//FUNCTION PUISSANCE
function puissance (a, b){

var result = 1;
if(b == undefined)
b = 2;
for(var i=1; i<=b; i++) {
result = result * a;
}
return result;

}
console.log(puissance(5,4));

// Réalisez la fonction sortNumbers
function sortNumbers( tInit, tInf, tSup )
{
var temp = 0;
tInit.sort((a, b) => a - b);
console.log("sorted numbers" + tInit);

tInit.forEach((element) => {
  if (element < 10) {
    temp = element;
    tInf.push(temp);
  }
  else if(element >= 10) {
    temp = element;
    tSup.push(temp);
    }
  });
}

// console.log
const etude ="etude";
mondiplome = 'IUT';
var maFormation = 'INFO';
let maSpecialite = 'DEV';

if (etude == "etude") {
mondiplome = 'BTS';
var maFormation = 'SIO';
let maSpecialite = 'SLAM';
    console.log(mondiplome);
    console.log(maFormation);
    console.log(maSpecialite);
}
    console.log(" en dehors du bloc");
    console.log(mondiplome);
    console.log(maFormation);
    console.log(maSpecialite);

// Typage faible
// on attribue la variable
var myNumber = '500'; // oops, c'est toujours une chaîne
// on demande d'affiche le type de données
console.log(typeof(myNumber));
myNumber = 500; // mieux — maintenant c'est un nombre
typeof(myNumber);
console.log(typeof(myNumber));
myNumber = true; // mieux — maintenant c'est un boolean
typeof(myNumber);
console.log(typeof(myNumber));

// FUNCTION EN UNE VARIABLE TOUPPERCASE
function toUpper(str)
{
  // Ecrire la ligne de code ci-dessous
    var string = str.toUpperCase('hello world');
    return string
}

// ANNEE BISSEXTILE
function bissextile(annee)
{
    if (annee % 4 == 0 && annee % 100 != 0)
        return 1
    else
        return 0
}
console.log(bissextile(1982))

// CHECKFUN
function checkFun(a, b, c){
    console.log(this);
    console.log(a);
    console.log(b);
    console.log(c);
}
checkFun.apply(1,[2,3,4]);

// SUM OF NUMBERS
function sumOfNumbers() {
    var total = 0;
    for(var i = 0; i < arguments.length; i++){
        total += arguments[i];
    }
    return total;
}
var sum = sumOfNumbers(1,2,3);
console.log(sum);

// BIND
"use strict";
var person = {
    name : "Jack",
    prop : {
        name : "Daniel",
        getName : function() {
            return this.name;
        }
    }
}

var name = person.prop.getName.bind(person);
console.log(name());

var  name = person.prop.getName();
console.log(name);

function Animal(un_nom,une_espece,un_age) {
  this.nom=un_nom;
  this.espece=une_espece;
  this.age=un_age;
}

var milou=new Animal("Milou","Chien","4");
var titi=new Animal("Titi","Oiseau","1");
var rominet=new Animal("Rominet","Chat","2");
var nemo=new Animal("Nemo","Poisson","6");

var animaux=new Array();
animaux[0]=milou;
animaux[1]=titi;
animaux[2]=rominet;
animaux[3]=nemo;

var nom=animaux[0].nom;
var espece=animaux[0].espece;
var age=animaux[0].age;

console.log("Mon premier animal "+nom+" est un "+espece+" et a "+age+" ans.");



// JavaScript code​​​​​​‌​​‌​‌‌‌​​‌‌​​‌​‌‌‌‌​‌‌​‌ below
class Process {
  constructor(pid, delay, executionTime) {
    this.pid = pid;
    this.delay = delay;
    this.executionTime = executionTime;
  }
}

function execute(processes) {
  // Your code goes here
  // le code ci dessous est modifiable, il simule juste un processeur qui tourne à l'infini
  t = 0;
  while (true) {
      t++;
  }
  // your code ends here
}

// CONVERSIONS
//  here the value of Kelvin
const kelvin = 0;
// Conversion of Kelvin to Celsius
const Celsius = kelvin - 273;
// calculate the numerator for the right conversion of kelvin to fahrenheit
let fahrenheit = Celsius * (9/5) + 32
// Convert to Newton
let newton = Celsius * (33 / 100);
// Round down
newton = Math.floor(newton);

console.log(`The temperature is ${fahrenheit} degrees Fahrenheit.`);
console.log(`${kelvin} Kelvin is about ${fahrenheit} Fahrenheit!`)
console.log(`The temperature is ${newton} degrees Newton.`);

// DOG AGE
let myAge = 23;
let earlyYears  = 2;
earlyYears *= 10.5;

let laterYears = myAge - 2;
laterYears *= 4;

console.log(earlyYears);
console.log(laterYears);

var myAgeInDogYears = laterYears + earlyYears;
console.log(myAgeInDogYears);
var myName = 'BIGBULL'.toLowerCase()

console.log(`My name is ${myName}. I am ${myAgeInDogYears} years old in dog years.`);

// COMPARAISON
function Compare(num) {
  if (num > 200)
  return true
    else
  return false
}

console.log(Compare('230'))

// Magic Eight Ball


