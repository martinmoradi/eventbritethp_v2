class AddStripeCustomerIdToAttendances < ActiveRecord::Migration[5.2]
  def change
    add_column :attendances, :stripe_customer_id, :string
  end
end
