require 'spec_helper'

describe "Claim pages" do

  subject { page }

  describe "hitel igenylo" do
    before { visit commonform_path }

    it { should have_selector('title', text: full_title('Adatok rogzitese')) }
  end
end