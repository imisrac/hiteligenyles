require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the h1 'Bankinfo projekt'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Bankinfo projekt')
    end

    it "should have the base title" do
      visit '/static_pages/home'
      page.should have_selector('title',
                                :text => "Bankinfo projekt")
    end

    it "should not have a custom page title" do
      visit '/static_pages/home'
      page.should_not have_selector('title', :text => '| Kezdo oldal')
    end
  end

  describe "Help page" do

    it "should have the h1 'Segitseg'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Segitseg')
    end

    it "should have the title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title',
                                :text => "Bankinfo projekt | Segitseg")
    end
  end

  describe "About page" do

    it "should have the h1 'Rolunk'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'Rolunk')
    end

    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('title',
                                :text => "Bankinfo projekt | Rolunk")
    end
  end
end
