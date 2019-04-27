class Payment < ActiveRecord::Base

  belongs_to :user

  def process_payment
    customer = Stripe::Customer.create email: email, card: token
    Stripe::Charge.create customer: customer.id,
                          amount: 1000,
                          description: 'Premium',
                          currency: 'usd'
  end

end