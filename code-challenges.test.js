// ASSESSMENT 4: JavaScript Coding Practical Questions with Jest

// Please read all questions thoroughly
// Pseudo coding is REQUIRED
// If you get stuck, please leave comments to help us understand your thought process

// Add appropriate dependencies to the repository:
// $ yarn add jest

// Use test driven development to complete the following questions
// Run the file with the following command:
// $ yarn jest

// Reminder: The test will call your function


// --------------------1) Create a function that takes in an array, removes the first item from the array and shuffles the remaining content.

// a) Create a test with an expect statement using the variable provided.




describe("arrayShuffle", () => {
    var colors1 = ["purple", "blue", "green", "yellow", "pink"]
    // Expected output example (can be a different order): ["yellow", "blue", "pink", "green"]
var colors2 = ["chartreuse", "indigo", "periwinkle", "ochre", "aquamarine", "saffron"]
// Expected output example (can be a different order): ["saffron", "aquamarine", "periwinkle", "indigo", "ochre"]

    it("takes in an array, removes the first item from the array and shuffles the remaining content", () => {
      expect(arrayShuffle(colors1)).not.toEqual(["purple", "blue", "green", "yellow", "pink"]) //asks test to check if the output is not equal to the original array meaning it was mutated and shuffled.
      expect(arrayShuffle(colors2)).not.toEqual(["chartreuse", "indigo", "periwinkle", "ochre", "aquamarine", "saffron"])
    })
  })

// b) Create the function that makes the test pass.
//create a function that takes an array
const arrayShuffle = (array) => {
    array.shift() //remove the first element from the array
        var currentIndex = array.length,  randomIndex;  //assign a current index equal to a random index
        
        while (0 !== currentIndex) { // While there remain elements to shuffle
      
          randomIndex = Math.floor(Math.random() * currentIndex);  // Pick a remaining element to be used to swap using math.random 
          currentIndex--;

          [array[currentIndex], array[randomIndex]] = [ // And swap it with the current element, array at current index swaps with array at random index
            array[randomIndex], array[currentIndex]];
        }
      
        return array; //return the shuffled array
      }
// console.log(arrayShuffle(colors1));

// --------------------2) Create a function that takes an array of numbers and returns an array of the minimum and maximum numbers in that order.

// a) Create a test with expect statements for each of the variables provided.





describe("arrayMinMax", () => {
    var nums1 = [3, 56, 90, -8, 0, 23, 6]
    // Expected output: [-8, 90]
    var nums2 = [109, 5, 9, 67, 8, 24]
    // Expected output: [5, 109]
    it("takes an array of numbers and returns an array of the minimum and maximum numbers in that order", () => {
      expect(arrayMinMax(nums1)).toEqual([-8, 90]) 
      expect(arrayMinMax(nums2)).toEqual([5, 109])
    })
  })

// b) Create the function that makes the test pass.


//create an array that takes an arr of nums
const arrayMinMax = (arr) => {
    var min_of_array = Math.min.apply(Math, arr); //find the minimum value in the array using math method and store the value to a variable
    var max_of_array = Math.max.apply(Math, arr); //find the maximum value in the array using math method and store the value to a variable

 let minMaxArray = [min_of_array, max_of_array] //assign a new array with just the minimum value, and maximum value in that order. Smaller number first, biggest numb second.
 return minMaxArray //return array of just the minimum and maximum number in that order

}

// console.log(arrayMinMax(nums1));
// console.log(arrayMinMax(nums2));

// --------------------3) Create a function that takes in two arrays as arguments and returns one array with no duplicate values. STRETCH: Use the spread operator to pass in a dynamic number of arguments.

// a) Create a test with an expect statement using the variables provided.




describe("filteredNums", () => {
    var testArray1 = [3, 7, 10, 5, 4, 3, 3]
    var testArray2 = [7, 8, 2, 3, 1, 5, 4]
    // Expected output: [3, 7, 10, 5, 4, 8, 2, 1]
    it("takes in two arrays as arguments and returns one array with no duplicate values", () => {
      expect(filteredNums(testArray1,testArray2)).toEqual([3, 7, 10, 5, 4, 8, 2, 1]) 
    })
  })


// b) Create the function that makes the test pass.

//make a function that takes 2 arrs
const filteredNums = (arr1,arr2) => {
    uniqueArr = [] //assign an empty array to fill with unique values
arr1.concat(arr2).forEach(element =>{ //look through arrays to check for each individual element 
   if (uniqueArr.indexOf(element) == -1) //check with conditional if the elements in the arrays are not already present
     uniqueArr.push(element); //push into the new array of unique elements
});
return uniqueArr; //return the unique array with no duplicates
}

// console.log(newArray(testArray1,testArray2));`