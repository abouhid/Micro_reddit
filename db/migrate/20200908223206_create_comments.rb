class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :comment_title
      t.text :comment_body
      t.references :post, null: false, foreign_key: true

      t.timestamps
    end
    # remove_column :comments, :author_id
     remove_foreign_key :comments, column: :author_id

  end
end
