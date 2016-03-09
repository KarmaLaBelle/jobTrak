require 'test_helper'

class JobTest < ActiveSupport::TestCase
  def setup
    @employee = Employee.create(name: "John Smith", phone_number: "555-555-5555")
    @job_one = Job.create(name: "Jane Doe", address: "1 Main Street, Springfield OH")
  end

  test "Check Job Validity" do
    assert @job_one.valid?
  end

  test "Check Job Count" do
    assert_equal 0, Employee.first.jobs.count
  end
end
