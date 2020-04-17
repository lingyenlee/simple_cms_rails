class AdminUser < ApplicationRecord

    # change table_name here to admin user
    # self.table_name = "admin_users"
    has_and_belongs_to_many :pages

end
