require 'rails_helper'

RSpec.describe Recipe, type: :model do
  describe 'associations' do
    it { should belong_to(:user) }
    it { should have_many(:recipe_foods) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
  end
end
