require "test_helper"

class FacultyTest < ActiveSupport::TestCase 
  should have_many(:assignments)
  should have_many(:courses).through(:assignments)
  should belong_to(:department)

  should validate_presence_of(:first_name)
  should validate_presence_of(:last_name) 


  # Context
  context "Given context" do
    setup do 
      # build the testing context here...
      create_departments
      create_faculties
    end

    # test the scope 'active'
    should "shows that there are two active professors" do
      assert_equal 2, Faculty.active.size  
      assert_equal ["Jeria", "Franchesca"], Faculty.active.map{|a| a.first_name}
    end 
    
      # test the scope 'alphabetical'
    should "shows that professors are listed in alphabetical order" do
      assert_equal ["Alex","Franchesca", "Jeria"], Faculty.alphabetical.map{|o| o.first_name}
    end

  end
end
