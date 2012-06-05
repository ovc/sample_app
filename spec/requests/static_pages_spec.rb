require 'spec_helper'

describe "Static pages" do

  # Home page *********************************************************
  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      page.should have_content('Sample App')
    end
    it "should have the right 'title'" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => "My Sample App | Home")
    end
    it "should have tag 'h2' with 'Home page'" do
      visit '/static_pages/home'
      page.should have_selector('h2', :text => "Home page")
    end
  end

  # Help page *********************************************************
  describe "Help page" do

    it "should have the link to 'Home page'" do
      visit '/static_pages/help'
      page.should have_link("Home")
    end
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_content("Help")
    end
    it "should have tag 'h2' with 'Help page'" do
      visit '/static_pages/help'
      page.should have_selector('h2', :text => "Help page")
    end
    it "should have the right 'title'" do
      visit '/static_pages/help'
      page.should have_selector('title', :text => " | Help")
    end
  end

  # About page ********************************************************
  describe "About page" do

    it "should have the content 'About page'" do
      visit '/static_pages/about'
      page.should have_content("About page")
    end
    it "should have tag 'h2' with 'About page'" do
      visit '/static_pages/about'
      page.should have_selector('h2', :text => "About page")
    end
    it "should have the right 'title'" do
      visit '/static_pages/about'
      page.should have_selector('title', :text => " | About")
    end
  end

  # Contact page *******************************************************
  describe "Contact page" do
    it "should have the content 'Contact page'" do
      visit '/static_pages/contact'
      page.should have_content("Contact page")
    end
    it "should have tag 'h2' with 'Contact page'" do
      visit '/static_pages/contact'
      page.should have_selector('h2', :text => "Contact page")
    end
    it "should have the right 'title'" do
      visit '/static_pages/contact'
      page.should have_selector('title', :text => " | Contact")
    end
  end

end