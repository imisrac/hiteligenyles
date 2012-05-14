require 'spec_helper'

describe "Mortgage pages" do

  subject { page }

  describe "mortgages-form page" do
    before { visit mortgageform_path }

    it { should have_selector('title', text: full_title('Jelzalog')) }
  end
end