# phone_number_to_words_combinations

# Convert phone number to words / words combinations in Ruby:

Given a 10 digit phone number, you must return all possible words or combination of words from the provided dictionary, that can be mapped back as a whole to the number.

The phone number mapping to letters is as follows:

2 = a b c

3 = d e f

4 = g h i

5 = j k l

6 = m n o

7 = p q r s

8 = t u v

9 = w x y z
 
The phone numbers will never contain a 0 or 1. 
Words have to be at least 3 characters.

To get give you an initial verification, the following must be true:

6686787825 should return the following list 

[["motor", "usual"], [["motortruck"], ["noun", "struck"], ["onto", "struck"], ["motor", "truck"], ["motor", "usual"], ["nouns", "truck"], ["nouns", "usual"], ["opt", "puck", "mot"], ["opt", "puck", "not"], ["opt", "puck", "oot"], ["opt", "ruck", "mot"], ["opt", "ruck", "not"], ["opt", "ruck", "oot"], ["opt", "suck", "mot"], ["opt", "suck", "not"], ["opt", "suck", "oot"], ["ort", "puck", "mot"], ["ort", "puck", "not"], ["ort", "puck", "oot"], ["ort", "ruck", "mot"], ["ort", "ruck", "not"], ["ort", "ruck", "oot"], ["ort", "suck", "mot"], ["ort", "suck", "not"], ["ort", "suck", "oot"], ["puck", "mot", "opt"], ["puck", "mot", "ort"], ["puck", "not", "opt"], ["puck", "not", "ort"], ["puck", "oot", "opt"], ["puck", "oot", "ort"], ["ruck", "mot", "opt"], ["ruck", "mot", "ort"], ["ruck", "not", "opt"], ["ruck", "not", "ort"], ["ruck", "oot", "opt"], ["ruck", "oot", "ort"], ["suck", "mot", "opt"], ["suck", "mot", "ort"], ["suck", "not", "opt"], ["suck", "not", "ort"], ["suck", "oot", "opt"], ["suck", "oot", "ort"], ["mot", "opt", "puck"], ["mot", "opt", "ruck"], ["mot", "opt", "suck"], ["mot", "ort", "puck"], ["mot", "ort", "ruck"], ["mot", "ort", "suck"], ["not", "opt", "puck"], ["not", "opt", "ruck"], ["not", "opt", "suck"], ["not", "ort", "puck"], ["not", "ort", "ruck"], ["not", "ort", "suck"], ["oot", "opt", "puck"], ["oot", "opt", "ruck"], ["oot", "opt", "suck"], ["oot", "ort", "puck"], ["oot", "ort", "ruck"], ["oot", "ort", "suck"]]

2282668687 should return the following list 

[["act", "amounts"], [["catamounts"], ["act", "amounts"], ["act", "contour"], ["bat", "amounts"], ["bat", "contour"], ["cat", "amounts"], ["cat", "contour"], ["acta", "mounts"], ["boo", "tots", "act"], ["boo", "tots", "bat"], ["boo", "tots", "cat"], ["boo", "tour", "act"], ["boo", "tour", "bat"], ["boo", "tour", "cat"], ["con", "tots", "act"], ["con", "tots", "bat"], ["con", "tots", "cat"], ["con", "tour", "act"], ["con", "tour", "bat"], ["con", "tour", "cat"], ["coo", "tots", "act"], ["coo", "tots", "bat"], ["coo", "tots", "cat"], ["coo", "tour", "act"], ["coo", "tour", "bat"], ["coo", "tour", "cat"], ["tots", "act", "boo"], ["tots", "act", "con"], ["tots", "act", "coo"], ["tots", "bat", "boo"], ["tots", "bat", "con"], ["tots", "bat", "coo"], ["tots", "cat", "boo"], ["tots", "cat", "con"], ["tots", "cat", "coo"], ["tour", "act", "boo"], ["tour", "act", "con"], ["tour", "act", "coo"], ["tour", "bat", "boo"], ["tour", "bat", "con"], ["tour", "bat", "coo"], ["tour", "cat", "boo"], ["tour", "cat", "con"], ["tour", "cat", "coo"], ["act", "boo", "tots"], ["act", "boo", "tour"], ["act", "con", "tots"], ["act", "con", "tour"], ["act", "coo", "tots"], ["act", "coo", "tour"], ["bat", "boo", "tots"], ["bat", "boo", "tour"], ["bat", "con", "tots"], ["bat", "con", "tour"], ["bat", "coo", "tots"], ["bat", "coo", "tour"], ["cat", "boo", "tots"], ["cat", "boo", "tour"], ["cat", "con", "tots"], ["cat", "con", "tour"], ["cat", "coo", "tots"], ["cat", "coo", "tour"]]

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes


### Installation
- Clone the repository
  - Got to repository folder: `cd  phone_number_to_words_combinations`
  
  - Install ruby 2.6.2
    - Using RVM: `rvm install 2.6.2`
    - Using Rbenv: `rbenv install 2.6.2`
  - Install `bundler` gem using `gem install bundler`
  - Get all dependencies: `bundle install`

## Execution
  - Run the program: `ruby lib/phone_number_to_words.rb`
  - Run the tests: `rspec spec --format documentation`
