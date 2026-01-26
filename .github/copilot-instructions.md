# Copilot Instructions

## Project Overview
Lita Lunch Order - A Ruby gem/handler for the Lita chatbot framework. Manages lunch orders in chat.

## Tech Stack
- Ruby
- Lita (chatbot framework)
- RSpec (testing)

## Structure
- `lib/` - Main handler code
  - `lita-lunch-order.rb` - Entry point
  - `lita/handlers/` - Handler implementation
- `spec/` - RSpec tests
- `lita-lunch-order.gemspec` - Gem specification
- `Gemfile` - Dependencies

## Commands (in chat)
- `lunch-order add <order>` - Add an order
- `lunch-order remove <order>` - Remove an order
- `lunch-order list` - List all orders
- `lunch-order reset` / `expire` - Clear all orders

## Development
```bash
bundle install    # Install deps
bundle exec rake  # Run tests
```

## Guidelines
- Follow Lita handler patterns
- Add tests for new commands
- Keep responses friendly and helpful
