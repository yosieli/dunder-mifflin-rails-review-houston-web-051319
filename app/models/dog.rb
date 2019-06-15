class Dog < ApplicationRecord
    has_many :employees
    def employees
      employes=Employee.all
      employe_array=employes.select do |employee| 
        employee.dog_id == self.id
      end
       map_array=employe_array.map{|employee| employee.first_name}
    map_array.to_s

    end
   
end
