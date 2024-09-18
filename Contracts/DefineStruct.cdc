//Define Contract named PaymentTransaction
access(all) contract PaymentTransaction {

    //Define dictionary named payment with key of type String and value of type PaymentInfo(which is a struct)
    access(all) var payment: {String: PaymentInfo}
    
    //Define Struct named paymentInfo
    access(all) struct PaymentInfo {
        access(all) let product: String
        access(all) let quantity: Int
        access(all) let amount: Int
        access(all) let person: String

        // Initializing the paymentinfo struct
        init(_product: String, _quantity: Int, _amount: Int, _person: String) {
            self.product = _product
            self.quantity = _quantity
            self.amount = _amount
            self.person = _person
        }
    }

    //Function to add new key value pair to dictionary. Takes 4 arguments or parameters
    access(all) fun addPayment(product: String, quantity: Int, amount: Int, person: String) {
        //Create a new struct with values that are equal to the arguments passed into the function call
        let newPayment = PaymentInfo(_product: product, _quantity: quantity, _amount: amount, _person: person)
        //Add new key value pair to dictionary
        self.payment[person] = newPayment
    }

    init() {
        //Initialize empty dictionary
        self.payment = {}
    }

}
