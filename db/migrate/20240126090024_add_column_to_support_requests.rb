class AddColumnToSupportRequests < ActiveRecord::Migration[7.1]
  def change
    add_column :support_requests, :email, :string, comment: "Email of the submitter"
    add_column :support_requests, :subject, :string, comment: "Subject of their support email"
    add_column :support_requests, :body, :text, comment: "Body of their support email"
    add_reference :support_requests, :order, foreign_key: true, comment: "Their most recent order, if applicable"
  end
end
