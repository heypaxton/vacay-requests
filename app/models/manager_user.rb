class ManagerUser < User 
  after_initialize do 
    if self.new_record?
      self.user_type = "manager"
    end
  end
end
