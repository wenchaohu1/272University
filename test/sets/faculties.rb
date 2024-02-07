module Contexts
  module Faculties

    def create_faculties
      @jeria = FactoryBot.create(:faculty, department: @is)
      @franchesca = FactoryBot.create(:faculty, first_name: 'Franchesca', last_name: 'X', department: @cs)
      @alex = FactoryBot.create(:faculty, first_name: 'Alex', last_name: 'Bon', department: @english, active:false)
         
    end
    
    def destroy_faculties

    end
  end
end