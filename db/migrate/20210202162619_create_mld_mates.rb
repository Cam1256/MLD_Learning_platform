class CreateMldMates < ActiveRecord::Migration[6.1]
  def change
    create_table :mld_mates do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :whatsapp
      t.string :github

      t.timestamps
    end
  end
end
