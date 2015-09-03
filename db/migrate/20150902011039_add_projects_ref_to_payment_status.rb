class AddProjectsRefToPaymentStatus < ActiveRecord::Migration
  def change
    add_reference :payment_statuses, :project, index: true
  end
end
