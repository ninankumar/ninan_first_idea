require 'rails_helper'

RSpec.describe Actor, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:roles_id) }

    end

    describe "InDirect Associations" do

    it { should have_many(:movieds) }

    end

    describe "Validations" do
      
    end
end
