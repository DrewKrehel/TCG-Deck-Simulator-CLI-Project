# TGC Deck Simulator CLI Functional Specification
The CLI app provides users with a simple, command-line interface to catalogue their card collection into a deck.

## User Stories

### Basic Operations
- As a user, I want to add cards to a deck, so that I can build a deck.
- As a user, I want to remove cards from a deck, so that I can curate a deck. 
- As a user, I want to attribute monetary value to each card, so that I can calculate the deck's total monetary sum.
- As a user, I want to push the first card in a deck into an existing array, so that I can simulate drawing a card into a hand.
- As a user, I want to reset the deck and hand arrays, so that I can simulate returning cards to the deck.
- As a user, I want to randomize the deck order, so that I can simulate shuffling a deck.
- As a user, I want to evaluate the ratio of a card for matches in a deck, so that I can calculate the odds of drawing a card.

### Continuous Operations
- As a user, I want to perform multiple operations without restarting the application, so that I can manipulate the same deck list repeatedly.

### Functional Requirements
- The simulator must prompt the user for a command (Add card, Remove card, deck value, draw a hand, evalutate card odds).
- The simulator must prompt the user for a card object with two attributes (Name and Value) to store in the deck.
- The simulator must create a new instance of the deck and add cards into a hand array. 
- The simulator must display the sum total of the card values in the deck. 
- The simulator must handle invalid input gracefully (e.g., non-numeric input).
- The simulator must calculate the odds of a card appearing in the deck.