require 'test_helper'

class EmployeeTest < ActiveSupport::TestCase
  def setup
    @employee = Employee.create(id: 1, name: "John Smith", phone_number: "555-555-5555")
  end

  test "Check Employee Validity" do
    assert @employee.valid?
  end


end
