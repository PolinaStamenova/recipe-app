require 'rails_helper'

RSpec.describe RecipeFood, type: :model do
  describe 'associations' do
    it { should belong_to(:recipe) }
    it { should belong_to(:food)}
  end
end
