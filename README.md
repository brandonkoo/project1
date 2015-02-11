# project1
project1 a simple buy stuff app

This is a simulation of a shopping app.….

User story: As a user, I want to create a user account on the web site for security and making purchase.

As a user, I want to be able to see a list of product that is available to buy.

As a user, I want to be able to click on the product to choose the quantity to buy.

As a user, I want to be able to see the shopping cart of the product I choose and edit the cart if needed.

As a user, I want to paid for the purchase with my credit card.

Database model:

Database table: customers, order_items, order_statuses, order, products, users

Database relationship: customers, products, order_statuses has many orders. orders has many order_items.

Web site Functionality:

Implement Device for user logon registration.

Implement shopping cart to display products, add products to cart and calculate total price.

Shopping cart can be edited to increase and decrease quantity of product. sub-total will adjust accordingly.

when click on “checkout” link, a non functioning payment page will display to input credit card information.

A confirmation order page will display after payment page is submitted.

Heroku app demo page:

sleepy-citadel-2389.herokuapp.com/
