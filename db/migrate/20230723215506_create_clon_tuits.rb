class CreateClonTuits < ActiveRecord::Migration[7.0]
  def change
    create_table :clon_tuits do |t|
      t.string :user
      t.string :email
      t.string :tuit
      t.date :date

      t.timestamps
    end
  end
end
