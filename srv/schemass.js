const cds = require('@sap/cds');
module.exports = function (){
  // Register your event handlers in here, e.g....
  this.after ('READ','Book', each => {
      console.log(each);
    if (each.Price > 300) {
      each.Books_Title += ` -- 11% discount!`
    }
  })
}