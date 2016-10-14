class Employee
	attr_reader :name, :email
	def initialize(name, email)
		@name = name
		@email = email
	end	
end

class HourlyEmployee < Employee
    def initialize(name, email, hourly_rate, hours_worked)
        @name = name
        @email = email
        @hourly_rate = hourly_rate
        @hours_worked = hours_worked
    end

    def calculate_salary
      weekly_payment = @hours_worked * @hourly_rate
   	end
end

class SalariedEmployee < Employee
	def initialize(name, email, anual_salary)
		@name = name
		@email = email
		@anual_salary = anual_salary
	end
	def calculate_salary
		weekly_payment = @anual_salary/52
	end
end
class MultiPaymentEmployee < Employee
	def initialize(name, email, anual_salary, hourly_rate, hours_worked)
		@name = name
		@email = email
		@anual_salary = anual_salary
		@hourly_rate = hourly_rate
		@hours_worked = hours_worked
	end
	def calculate_salary
		weekly_payment = (@anual_salary/52)+((@hours_worked-40)*275)
	end
end

class Payroll
    def initialize(employees)
        @employees = employees
    end
    
    def pay_employees(employees)
      	employees.each {|employees|puts "#{employees.name} => #{employees.calculate_salary-(employees.calculate_salary*0.18)}"}
    end
    def notify_employee(employees)
        employees.each {|employees|puts "#{employees.name}: se ha ingresado su nomina de: #{employees.calculate_salary}€"}
    end
   

end

josh = HourlyEmployee.new("Josh", "nachoemail@example.com", 35, 50)
nizar = SalariedEmployee.new('Nizar', 'starcraftrulez@gmail.com', 1000000)
ted = MultiPaymentEmployee.new('Ted', 'fortranr0x@gmail.com', 60000, 275, 55)
jose = HourlyEmployee.new("Jose", "jsekade@gmail.com", 15, 40)
hugo = HourlyEmployee.new("Hugo", "hugo@gmail.com", 15, 40)
employees = [josh, nizar, ted, jose, hugo]
payroll = Payroll.new(employees)

payroll.pay_employees(employees)
payroll.notify_employee(employees)
