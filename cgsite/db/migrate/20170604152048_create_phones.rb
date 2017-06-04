class CreatePhones < ActiveRecord::Migration[5.1]
  def change
    create_table :phones do |t|
      t.string :num_phone
      t.string :type_phone
      t.references :users, foreign_key: true

      t.timestamps
    end
  end
end
