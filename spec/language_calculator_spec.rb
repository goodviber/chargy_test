require 'spec_helper'

RSpec.describe LanguageCalculator do
  let(:response) { ApiCaller.new('goodviber').api_call }
  subject { LanguageCalculator.new(response) }

  describe "#favourite_language" do
    it "returns the most popular language" do
      expect(subject.favourite_language).to eq("Ruby")
    end
  end

end
