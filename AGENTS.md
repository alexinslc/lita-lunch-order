# AGENTS.md

## What Is This?
Lita Lunch Order - Ruby gem for Lita chatbot. Takes and manages lunch orders in chat.

## Quick Facts
- **Tech:** Ruby + Lita framework
- **Purpose:** Lunch order management in chat
- **Type:** Lita handler plugin

## Key Files
- `lib/lita-lunch-order.rb` - Entry point
- `lib/lita/handlers/` - Handler logic
- `spec/` - Tests

## Commands
```bash
bundle install     # Install deps
bundle exec rake   # Run tests
```

## Chat Commands
- `lunch-order add <order>` - Add order
- `lunch-order remove <order>` - Remove order
- `lunch-order list` - List orders
- `lunch-order reset` - Clear all

## How to Help
- Follow Lita handler conventions
- Add RSpec tests for new features
- Keep responses user-friendly
