# As a visitor,
# When I visit `/comedians`
# Then I see a list of comedians with the following
# information for each comedian:
#   * Name
#   * Age

RSpec.describe 'a user visit comedian index page' do
  context 'visitor' do
    it 'should see a list of comedians including name and age' do
      comedian_1 = Comedian.create(name: "Elie", age: 32)
      comedian_2 = Comedian.create(name: "Maya", age: 21)

      visit '/comedians'

      expect(page).to have_content("Name: #{comedian_1.name}")
      expect(page).to have_content("Age: #{comedian_1.age}")
      expect(page).to have_content("Name: #{comedian_2.name}")
      expect(page).to have_content("Age: #{comedian_2.age}")
      end
    end
#     As a visitor,
# When I visit `/comedians`
# Then I also see a list of each comedian's specials.

    # it 'should see a list of comedians specials' do
    #   visit '/comedians'
    #
    #   within('.comedians') do
    #     expect(page).to have_content('Specials')
    #   end
    # end

end
