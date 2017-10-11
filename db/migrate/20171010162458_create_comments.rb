class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :message

      t.timestamps
    end
    
  add_column :comments, :post_id, :integer
  add_index  :comments, :post_id
  end

end