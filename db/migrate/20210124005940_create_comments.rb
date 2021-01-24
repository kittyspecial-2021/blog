class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.references :post, null: false, index:true, foreign_key: {on_delete: :cascade}
      t.text :body

      t.timestamps
    end
  end
end
