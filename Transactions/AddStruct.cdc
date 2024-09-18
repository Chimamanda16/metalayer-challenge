//Transaction for adding new key value pair to dictionary

//Import contract from account or address 0x06 
import PaymentTransaction from 0x06

//Start a transaction. Transaction takes arguments that will be used as values for the struct
transaction(product: String, quantity:Int, amount: Int, person: String) {

  //Prepare phase
  prepare(acct: &Account) {
    log(acct.address)
  }

  //Execute phase
  execute {
    //Call addPayment function from PaymentTransaction and adds a new value to the dictionary
    PaymentTransaction.addPayment(product: product, quantity: quantity, amount: amount, person: person)
  }
}