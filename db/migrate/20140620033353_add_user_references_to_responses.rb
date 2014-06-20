class AddUserReferencesToResponses < ActiveRecord::Migration
  def change
    add_reference :responses, :user, index: true
  end
end
