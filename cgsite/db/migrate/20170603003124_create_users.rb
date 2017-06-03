class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :address
      t.string :phone
      t.string :cpf
      t.date :birthday
      t.string :student_grade
      t.string :student_shift

      t.timestamps
    end
  end
end
