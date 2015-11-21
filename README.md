# lita-lunch-order

[![Build Status](https://travis-ci.org/alexinslc/lita-lunch-order.png?branch=master)](https://travis-ci.org/alexinslc/lita-lunch-order)

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
