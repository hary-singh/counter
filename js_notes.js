// comment
// datatypes
// integer
// float
// boolean
// string 
// null 
// array 
// hashes
// undefined
// date 
// + - / * () %
// > < >= <= && || == === != !==
// += ++ -- 
// variable
//   case sensitive 
//   camelCase
//   stay var 
// var firstName = "bob"
// let firstName = "bob"
// firstName = "tom"
// const - constant 
// const lastName = "smith"
// const maxCart = 4
// string concatenation
// console.log("hello" + " world")
// function countColors(colors) {
// }
// countColors = (colors) => {
// }
// countColors(['red', 'green'])
//  function countColors() {
//   }
//   countColors = () => {
//   }
// rest params
// function showTrendingTags(...hashTags) {
//   for(let i in hashTags) {
//     displayTopic(hashTags[i]);
//   }
// }
// function showTrendingTags('pets', 'lite') {
//   for(let i in hashTags) {
//     displayTopic(hashTags[i]);
//   }
// }
// function logColors(set, ...colors) {
//   for(let i in colors) {
//     console.log(set + ": " + colors[i]);
//   }
// }
// logColors('blank');
// logColors('two colors', 'red', 'white');
// logColors('three colors', 'red', 'green', 'blue');
// spread operator
// function getMovies("/movies", function(data) {
//   let movies = data.movies;
//   displayMovies(...movies);
// });
// let colors1 = ["Red", "Blue", "Green"];
// let colors2 = ["Black", "Purple", "White"];
// console.log("Spread Ops");
// console.log( ...colors1);
// console.log(...colors2);
// function officerInfo(first, last, rank, email) {
//   let fullName = first + " " + last;
//   return({first: first, last: last, fullName: fullName, rank: rank, email: email})
// }
// let officer = officerInfo("Clive", "Savacool", "Chief", "clive@fakeemail.com");
// console.log(officer.first);
// console.log(officer.last);
// console.log(officer.email);
// console.log(officer.rank);
// console.log(officer.fullName);
// function officerInfo(first, last, rank, email) {
//     let fullName = first + " " + last;
//     return { first, last, fullName, rank, email };
//    }
//    let officer = officerInfo("Clive", "Savacool", "Chief", "clive@fakeemail.com");
//    // object destructuring
//    let { first, last, fullName, email, rank } = officer
//    console.log(first)
//    state = { post: [], first: '', last: '' }
//    const { post, first, last } = this.state
//    const post = this.state.post
//    const first = this.state.first
//    const last = this.state.last
//   //  this.state.post 
//   post
//   // const as module
//   const perPage = 10
//   const addThree = () => {
//   }
//   export const perPage = 10
//   export const addThree = () => {
//   }
//   const homePage = ({ props }) => (
//   )
//   export { perPage, addThree }
//   export default homePage;