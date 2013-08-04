require 'spec_helper'

describe "Static pages" do
  
  subject { page } 

  shared_examples_for "all static pages" do
    it { should have_selector('h1', text: "Parent Funded") }
    it { should have_title(full_title(page_title)) }
  end

  describe "Home page" do
    before { visit root_path }
    let(:heading) { 'Thank the Teacher' }
    let(:page_title) { '' }

    it_should_behave_like "all static pages"
    it { should_not have_title('| Home') }
  end

  describe "Help page" do
    before { visit help_path }

    it { should have_content('Help') }
    it { should have_title(full_title('Help')) }
  end

  describe "About page" do
    before { visit about_path }

    it { should have_content('About') }
    it { should have_title(full_title('About us')) }
  end

  describe "Tour Page" do
    before { visit tour_path }

    it { should have_selector('h1', text: 'Tour') }
    it { should have_title(full_title('Tour')) }
  end

  it "should have the right links on the layout" do
    visit root_path
    click_link "Help"
    expect(page).to have_title(full_title('Help'))
    click_link "Tour"
    expect(page).to have_title(full_title('Tour'))
    click_link "About"
    expect(page).to have_title(full_title('About us'))
  end
end
