require 'test_helper'

class EmployeeTest < ActiveSupport::TestCase
  def init
    @employee = Employee.create(id: 1, name: "John Smith", phone_number: 5555555555)
  end

  test "Check Employee Validity" do
    assert @employee.valid?
  end

  test "Check Phone String Invalid" do
    @employee.update(phone_number: "555\-555\-5555")
    assert_not @employee.valid?
  end

  test "Check 9 Digit Invalid" do
    @employee.update(phone_number: 555555555)
    assert_not @employee.valid?
  end

  test "Check 11 Digit Invalid" do
    @employee.update(phone_number: 55555555555)
    assert_not @employee.valid?
  end


end
