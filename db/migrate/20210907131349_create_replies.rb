class CreateReplies < ActiveRecord::Migration[6.1]
  def change
    create_table :replies do |t|
      t.text :text
      t.references :user, null: false, foreign_key: true
      t.references :blog, null: false, foreign_key: true

      t.timestamps
    end
  end
end
