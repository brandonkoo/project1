require 'rails_helper'

RSpec.feature 'List the product' do
  scenario 'List all products' do
    Product.create!(prod_name: 'old car', description: "some stuff")
    Product.create!(prod_name: 'some junk', description: "more stuff")
    Product.create!(prod_name: 'crazy glue', description: "even more stuff")

    visit '/products'

    expect(page).to have_content 'prod_name', count: 3

  end

end

RSpec.feature  'Create a product' do
  scenario 'create a new product' do

    visit '/products/new'

    fill_in 'prod_name', with: 'very bad apple'
    fill_in 'description', with: "rotten to the core"
    click_on 'Create products'

    expect(page).to have_content 'prod_name', count: 1
  end
end
