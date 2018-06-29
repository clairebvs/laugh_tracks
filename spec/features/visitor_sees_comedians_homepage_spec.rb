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

      within('#comedians') do
        expect(page).to have_content('Comedians')
      end
    end
  end
end
