class CreateUsers < ActiveRecord::Migration[6.0]
  # def change
  #   create_table :users do |t|

  #     t.timestamps
  #   end
  # end

  def up
    create_table :users do |t|

      # Add columns
      t.column "first_name", :string, limit: 25
      # Another way, since we are anyway going to add column no need to specify that
      t.string "last_name", limit: 50
      t.string "email", default: '', null: false
      t.string "password", limit: 40


      t.timestamps
      # t.datetime "created_at"
      # t.datetime "updated_at"
    end
  end

  def down
    drop_table :users
  end

end
