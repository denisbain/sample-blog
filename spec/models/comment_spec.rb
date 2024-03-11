require 'spec_helper'
require "rails_helper"

describe Comment, type: :model do

  describe "validations" do
    it { should validate_length_of(:body).is_at_most(4000) }
  end

  describe "associations" do
    it { should belong_to :article }
  end

end