RSpec.describe Comedian do
  describe 'Validations' do
    describe 'Required Field(s)' do
      it 'should be invalid if missing a name' do
        comic = Comedian.create(age: 48)
        expect(comic).to_not be_valid
      end

      it 'should be invalid if missing an age' do
        comic = Comedian.create(name: 'Mitch Hedberg')
        expect(comic).to_not be_valid
      end
    end
  end
  describe 'Class Methods' do
    it 'knows about average age of comedians' do
      comedian_1 = Comedian.create(name: "Elie", age: 32)
      comedian_2 = Comedian.create(name: "Maya", age: 22)
      expected_result = 27

      expect(Comedian.average_age).to eq(expected_result)
    end
  end
end
