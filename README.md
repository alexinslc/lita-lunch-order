# lita-lunch-order

[![Build Status](https://travis-ci.org/alexinslc/lita-lunch-order.png?branch=master)](https://travis-ci.org/alexinslc/lita-lunch-order)

TODO:

 * Add creator of order to order.
 * Add `lunch-order take / take lunch orders` command and pass name of place and link to menu.
 * Add functionality to send email with all orders included to a specified email address.
 * Add functionality to automatically send Jimmy Johns order.
 * Add `lunch-order arrived` to tell everyone the food has arrived. 

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
