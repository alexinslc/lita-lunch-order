# lita-lunch-order


[ ![Codeship Status for alexinslc/lita-lunch-order](https://codeship.com/projects/1180ce70-7136-0133-4bee-4254a0d12432/status?branch=master)](https://codeship.com/projects/116819)


[![Travis](https://img.shields.io/travis/alexinslc/lita-lunch-order.svg?style=flat-square)](https://travis-ci.org/alexinslc/lita-lunch-order)


[![Gem](https://img.shields.io/gem/dtv/lita-lunch-order.svg?style=flat-square)](https://rubygems.org/gems/lita-lunch-order)

### TODO:

 * Add `lunch-order help` command to display useful commands.
 * Add functionality so you don't have to @bot_name the commands.
 * Add creator of order to the order.
 * Add `lunch-order take / take lunch orders` command and pass name of place and link to menu.
 * Add functionality to automatically send Jimmy Johns orders. Similar to: [sudo make me a sandwich](https://www.npmjs.com/package/makemeasandwich)
 * Add `take lunch orders for Costa Vida` (this will post a notification with a link to the food menu). Ex: `Now taking orders for Costa Vida, check out their menu here: http://www.costavida.net/menu/`
 * Add `lunch-order arrived` to tell everyone the food has arrived.
 * Add functionality to send email with all orders included to a specified email address.

A lita handler to help you take lunch orders.

Populate Lita with a list of your coworker's lunch orders so when you're ready to email / call you have them all ready for you.

## Installation

Add lita-lunch-order to your Lita instance's Gemfile:

``` ruby
gem "lita-lunch-order"
```

## Configuration

There is no additional configuration.

## Usage

First someone *might* say something like: `Let (me|us) know what (you|you all) (want|would like) for lunch`

This should reply with: *Now taking orders! To submit an order, please use `lunch-order add ORDER`. Thank You.*

Adding an Order:
```
You: lunch-order add Chicken Salad w/ black beans and tomatillo dressing
Lita: Chicken Salad w/ black beans and tomatillo dressing has been added.
```
Removing an Order:
```
You: lunch-order remove Chicken Salad w/ black beans and tomatillo dressing
Lita: Chicken Salad w/ black beans and tomatillo dressing has been removed.
```

Listing all Orders:
```
You: lunch-order list
Lita:
Chicken Salad w/ black beans and tomatillo dressing
Beef Burrito w/ cheese
Cake
```

Resetting or Removing all Orders:
```
You: lunch-order reset
OR
You: lunch-order expire
Lita: All orders have been removed.
```
