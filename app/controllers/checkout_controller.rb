class CheckoutController < ApplicationController
  # get
  def payment

  end

  # post
  def create_customer

    Stripe.api_key = ENV['STRIPE_API_KEY']

    token = params[:stripeToken]

    customer = Stripe::Customer.create(
      :card => token,
      :description => "Our first user"
    )

    current_user.update_attributes(stripe_token: customer.id)
    redirect_to checkout_review_order_path
  end

  # get
  def review_order

  end

  # post
  def submit_order
    charge = Stripe::Charge.create(
      customer: current_user.stripe_token,
      amount: 5000,
      currency: "usd"
      )
    # if charge successfult redirect to order confirmation, else render review order
  end

  def order_confirmation

  end

end
