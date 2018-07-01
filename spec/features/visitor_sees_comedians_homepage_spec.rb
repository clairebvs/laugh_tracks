RSpec.describe 'a user visit comedian index page' do
  context 'visitor' do
    it 'should see a list of comedians including name and age' do
      comedian_1 = Comedian.create(name: "Elie", age: 32)
      comedian_2 = Comedian.create(name: "Maya", age: 22)

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

    it 'should see the average age of all comedian' do
      comedian_1 = Comedian.create(name: "Elie", age: 32)
      comedian_2 = Comedian.create(name: "Maya", age: 22)
      expected_result = 27

      visit '/comedians'
      expect(page).to have_content("Average age: #{expected_result}")
    end

    it 'should show all comedians with a specific age' do
      comedian_1 = Comedian.create(name: "Elie", age: 34)
      comedian_2 = Comedian.create(name: "Maya", age: 22)

      visit '/comedians?age=34'

      expect(page).to have_content(comedian_1.name)
      expect(page).to_not have_content(comedian_2.name)
    end

    it 'should show the count of specials for each comedian' do
      comedian_1 = Comedian.create(name: "Elie", age: 34)
      special_1 = comedian_1.specials.create(name: 'Patpo')
      special_2 = comedian_1.specials.create(name: 'Napa show')

      expected_result = 2

      visit '/comedians'

      expect(page).to have_content("Count of specials: #{expected_result}")
    end

end
