# CLAUDE.md

## Project Overview
Lita Lunch Order - A Lita chatbot handler gem for managing lunch orders in team chat.

## Tech Stack
- **Language:** Ruby
- **Framework:** Lita (chatbot)
- **Testing:** RSpec
- **CI:** Travis CI

## Project Structure
```
lita-lunch-order/
├── lib/
│   ├── lita-lunch-order.rb     # Entry point
│   └── lita/handlers/          # Handler implementation
├── spec/                       # RSpec tests
├── locales/                    # i18n translations
├── templates/                  # Response templates
├── lita-lunch-order.gemspec    # Gem spec
├── Gemfile
└── Rakefile
```

## Development
```bash
bundle install        # Install dependencies
bundle exec rake      # Run tests
bundle exec rspec     # Run RSpec directly
```

## Chat Commands
| Command | Description |
|---------|-------------|
| `lunch-order add <order>` | Add an order to the list |
| `lunch-order remove <order>` | Remove an order |
| `lunch-order list` | Show all current orders |
| `lunch-order reset` | Clear all orders |
| `lunch-order expire` | Same as reset |

## Publishing
```bash
gem build lita-lunch-order.gemspec
gem push lita-lunch-order-*.gem
```

## Notes
- Requires Lita >= 4.6
- Orders are stored in memory (reset on restart)
- Consider adding persistence (Redis) for production use
