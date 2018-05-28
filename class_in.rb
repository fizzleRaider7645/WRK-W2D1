require "byebug"
class Employee
  attr_reader :name, :title, :boss, :salary, :direct_reports

  def initialize(name, title, salary, boss)
    @name = name
    @title = title
    @boss = boss
    @boss.direct_reports << self unless @boss.nil?
    @salary = salary
  end

  def bonus(multiplier)
    salary * multiplier
  end



end

class Manager < Employee

  attr_accessor :direct_reports

  def initialize(name, title, salary, boss = nil)
    super(name, title, salary, boss)
    @direct_reports = []
  end

  def bonus(multiplier)
    subtotal_salaries * multiplier
  end

  def subtotal_salaries
    sum = 0
    # byebug
    direct_reports.each do |employee|
      if employee.is_a?(Manager)
        sum += employee.salary
        sum += employee.subtotal_salaries
      else
      sum += employee.salary
      end
    end
    sum
  end

end
