class AddUseridToComments < ActiveRecord::Migration[6.1]
  def change
    add_reference :comments, :user, index: true, foreign_key: {on_delete: :cascade}
  end
end
