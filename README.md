# Basic Ruby Projects

This repository contains solutions to three classic Ruby programming challenges: **Caesar Cipher**, **Substrings**, and **Stock Picker**. These projects are great for building a solid understanding of Ruby methods, string manipulation, and algorithmic problem-solving.

## Table of Contents

- [Caesar Cipher](#caesar-cipher)
- [Substrings](#substrings)
- [Stock Picker](#stock-picker)
- [Getting Started](#getting-started)
- [How to Run](#how-to-run)

---

## Caesar Cipher

### Project Description

In cryptography, a **Caesar Cipher** is one of the simplest and most widely known encryption techniques. It is a type of substitution cipher where each letter in the plaintext is replaced by a letter some fixed number of positions down the alphabet.

For example, with a left shift of `3`, the letter `D` becomes `A`, `E` becomes `B`, and so on. This method is named after Julius Caesar, who used it for his private correspondence.

### Example

```ruby
caesar_cipher("Hello, World!", 3) 
# => "Khoor, Zruog!"
```

### How It Works
The method takes two arguments:

A string that you want to encrypt.
The shift factor, which represents how many positions each letter should be shifted.
The function preserves the case of letters and ignores non-alphabet characters.

---

## Substrings

### Project Description
The **Substrings** project involves implementing a method `#substrings` that takes a word and an array of valid substrings (a dictionary). It returns a hash with each substring that was found in the word, along with the number of times it was found (case-insensitive).

### Example

```ruby
dictionary = ["below", "low", "el", "be", "lo"]
substrings("below", dictionary)
# => { "below" => 1, "low" => 1, "el" => 1, "be" => 1 }
```
### How It Works
The method iterates over the dictionary of valid substrings, checks if each substring is part of the word, and returns the count of how many times each substring appears.

---

## Stock Picker

### Project Description
In the **Stock Picker** project, you implement a method `#stock_picker` that takes an array of stock prices, where each element represents the price of a stock on a given day. The method should return an array containing the best day to buy and the best day to sell to maximize profit.

### Example

```ruby
stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
# => [1, 4]  # Buy on day 1 (price = 3) and sell on day 4 (price = 15)
```

### How It Works
The method looks for the pair of days where buying stock on the first day and selling it on the second day would yield the highest profit.

---

## Getting Started
1. Clone this repository to your local machine:
```bash
git clone https://github.com/your-username/basic-ruby-projects.git
cd basic-ruby-projects
```

2. Make sure you have Ruby installed on your machine. You can check this by running:
```bash
ruby -v
```
3. If you don't have Ruby installed, follow the instructions here to install it.

---

## How to Run
1. To run each project, navigate to the file where it's implemented. For example, for the Caesar Cipher project, run:
```bash
ruby caesar_cipher.rb
```