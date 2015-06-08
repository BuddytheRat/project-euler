//Fibonacci
var sum = 0;
var x = 2;
var y = 1;
var z = 0;
while (x <= 4000000) {
    console.log(x);
    if (x % 2 === 0) {sum += x;}
    z = x;
    x += y;
    y = z;
}
console.log("Sum is: " + sum);