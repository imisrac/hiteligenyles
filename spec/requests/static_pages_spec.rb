require 'spec_helper'

describe "Static pages" do
  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_selector('title',
                              :text => full_title('')) }

    it { should_not have_selector('title', :text => full_title('Kezdo oldal')) }
  end

  describe "Help page" do
    before { visit help_path }

    it { should have_selector('title',
                              :text => full_title('Segitseg')) }
  end

  describe "About page" do
    before { visit about_path }

    it { should have_selector('title',
                              :text => full_title('Rolunk')) }
  end
end
