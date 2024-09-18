//Script to read dictionary in account or addPayment 0x06

//Import contract from account 0x06
import PaymentTransaction from 0x06

//Function to return the dictionary
access(all) fun main(person: String): &PaymentTransaction.PaymentInfo? {
    return PaymentTransaction.payment[person]
}