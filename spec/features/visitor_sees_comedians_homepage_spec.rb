# As a visitor,
# When I visit `/comedians`
# Then I see a list of comedians with the following
# information for each comedian:
#   * Name
#   * Age

RSpec.describe 'a visitor' do
  context 'visiting /comedians' do
    it 'should see a list of comedians including name and age' do

      visit '/comedians'

      within('.comedians') do
        expect(page).to have_content('Comedians')
        # expect(page).to have_content('Name')
        # expect(page).to have_content('Age')
      end
    end
#     As a visitor,
# When I visit `/comedians`
# Then I also see a list of each comedian's specials.

    it 'should see a list of comedians specials' do
      visit '/comedians'

      within('.comedians') do
        expect(page).to have_content('Specials')
      end
    end

  end
end
