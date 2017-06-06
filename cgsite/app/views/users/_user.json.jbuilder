json.extract! user, :id, :name, :email, :password, :address, :phone, :cpf, :birthday, :student_grade, :student_shift, :user_type, :account_status, :lib_employee_id, :created_at, :updated_at
json.url user_url(user, format: :json)
