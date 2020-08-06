require 'rails_helper'

RSpec.feature 'submit post', type: :feature do
  scenario 'Can submit a post' do
    visit '/'
    click_link 'Sign up'
    fill_in 'person_email', with: 'bob@yahoo.com'
    fill_in 'person_password', with: 'password123'
    fill_in 'person_password_confirmation', with: 'password123'
    click_button 'Sign up'
    click_button 'New post'
    fill_in 'post[message]', with: 'This is a post'
    click_button 'Create Post'
    expect(page).to have_content("Post was successfully created.")
  end
end