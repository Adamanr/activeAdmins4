# class CreateActiveAdminComments < ActiveRecord::Migration[6.1]
class CreateUserComments < ActiveRecord::Migration[6.1]
  def self.up
    create_table :user_comments do |t|
      t.string :namespace
      t.text   :body
      t.references :resource, polymorphic: true
      t.references :author, polymorphic: true
      t.timestamps
    end
    add_index :user_comments, [:namespace]
  end

  def self.down
    drop_table :user_comments
  end
end
