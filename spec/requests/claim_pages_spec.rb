require 'spec_helper'

describe "Claim pages" do

  subject { page }

  describe "hitel igenylo" do
    before { visit commonform_path }

    it { should have_selector('title', text: full_title('Adatok rogzitese')) }
  end

  describe "signup" do

    before { visit commonform_path }

    let(:submit) { "OK" }

    describe "with invalid information" do
      it "should not create a claim" do
        expect { click_button submit }.not_to change(Claim, :count)
      end
    end

    describe "with valid information" do
      before do
        fill_in "Name", with: "Example User"
        fill_in "Mothersname", with: "Mother Of Example"
        fill_in "Birth", with: 20
        fill_in "Salary", with: 200000
        fill_in "Claimmoney", with: 10000000
        fill_in "Duration", with: 120
      end

      it "should create a claim" do
        expect { click_button submit }.to change(Claim, :count).by(1)
      end
    end
  end
end