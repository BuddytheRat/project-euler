var largestPrimeFactor = function (num) {
	var prime = true;
	var largest = Math.ceil(num/2);
	for (var x = largest; x > 0; x--) {
	    if (num % x === 0) { //If it is a factor..
	        console.log("Factor (Not Prime): " + largest);
	        largest = x;
	        prime = true;
	        for (var y = 2; y < x; y++) { //Check if it is prime...
	            if (x % y === 0) {prime = false; break;}
	        }
	        if (prime) {
	            console.log("Largest prime factor: " + largest);
	            break;
	        }
	    }
	}
};

largestPrimeFactor(840284);