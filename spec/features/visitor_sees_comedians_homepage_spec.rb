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

    it 'should see a list of all comedians specials and their informations' do
      comedian_1 = Comedian.create(name: "Elie", age: 32)
      special_1 = comedian_1.specials.create(name: 'Acadia')

      visit '/comedians'
      expect(page).to have_content(special_1.name)
      end

end
