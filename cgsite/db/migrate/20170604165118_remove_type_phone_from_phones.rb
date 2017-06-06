class RemoveTypePhoneFromPhones < ActiveRecord::Migration[5.1]
  def change
    remove_column :phones, :type_phone, :string
  end
end
