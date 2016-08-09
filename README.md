### Hello!

Here you'll find answers to One Network's Developer Test - II. I attempted to go through each question in order, one-by-one but found myself running out of allotted time. For the final question I jumped ahead to a SQL question so that I could show some variety. Admittedley, SQL is my weakest area and I didn't get the answer quite right. Below are instructions to run each answer that I did complete. I used rbenv for ruby version management but that's not a hard requirement. The only requirement is ruby 1.9.3+.

**Set-up**

1. Install ruby (I used v2.2.5)
2. Clone this repo `git clone git@github.com:dwarfmondo/one_network_developer_test.git`
3. `cd` into the directory `one_network_developer_test`
4. Run the following commands

**Question 1**

Execute by running `ruby ./question_1.rb`

**Question 2**

We will run this from ruby's interactive shell (REPL).

1. Execute by running `irb -r ./question_2.rb`
2. `deck = Question2::Deck.new` gets a new deck of cards
3. `deck.shuffle` shuffles the deck
4. `my_card = deck.draw` draws a card
5. `my_card.to_s` to see which card you got
6. `your_card = deck.draw` draw an opponents card
7. `my_card.equals? your_card` tells you if the cards are equal in weight
8. `deck.size` shows you the number of cards in the deck
9. `deck.put_back your_card` puts a card back in the deck

**Question 3**

Execute by running `ruby ./question_3.rb`

**Question 4**

Nothing to execute without a database.

**Dependencies**
* [rbenv](http://rbenv.org/) – ruby version manager
* [ruby](http://ruby-doc.org/core-2.2.5/) – ruby v2.2.5

---

It was a fun and challenging excercise and I enjoyed working on it. Thanks for the opportunity.

Visit my website for contact information http://dwarfmondo.com
