class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.float :amount
      t.integer :responseCode
      t.string :responseMessage
      t.string :xref
      t.float :amountReceived
      t.string :transactionID
      t.string :cardNumber
      t.string :cardCVV
      t.string :cardExpiryMonth
      t.string :cardExpiryYear

      t.timestamps null: false
    end
  end
end
