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
        fill_in :name, with: "Example User"
        fill_in :mothersname, with: "Mother Example"
        fill_in :birth, with: Date.today
        fill_in :salary, with: 200000
        fill_in :claimmoney, with: 10000000
        fill_in :duration, with: 120
        fill_in :mortgage, with: false
      end

      it "should create a claim" do
        expect { click_button submit }.to change(Claim, :count).by(1)
      end
    end
  end
end