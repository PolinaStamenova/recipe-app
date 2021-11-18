require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'associations' do
    it { should have_many(:foods) }
    it { should have_many(:recipes) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
  end
end
