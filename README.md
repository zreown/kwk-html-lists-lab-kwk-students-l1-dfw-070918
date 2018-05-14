# HTML Lists

## Objectives

  - Learn the basics of HTML list elements

## Introduction

Many HTML elements behave in unique ways. Some have automatic styling, like `p`
tags that create margins around text.  Some, like the header tags, increase the
font size.  In this lab, we're going to practice using some specific tags that
help us keep the content inside of them organized, the `ul`, `ol` and `li` tags.

**Remember to use `httpserver` to live test your webpage**

### `<ul>`, `<li>`

In HTML, we list things using the `<ul>` tag, which stands for _unordered list_, along with
the `<li>` tag, _list item_, for wrapping each item we want to list.

<p align="center">
  <img src="https://i.imgflip.com/28mpcx.jpg"/>
</p>

Let's say we were making a personal website and wanted to list out our favorite
foods.  It can be hard to pin point a specific order of favorites, so we just
want to list them and not worry if _grilled cheese_ is really our 3rd or 4th
favorite food.  It may look something like thing:

* Cheeseburgers
* Grilled Cheese
* Sushi
* Nacho Cheese French Fries
* Cheese soup
* Cheese and crackers

To make a list, we write out the opening and closing `<ul>` tags, and inside
them, we add `<li>` tags, each listing a single item:

```HTML
<ul>
  <li>Cheeseburgers</li>
  <li>Grilled Cheese</li>
  <li>Sushi</li>
  <li>Nacho Cheese French Fries</li>
  <li>Cheese soup</li>
  <li>Cheese and crackers</li>
  <li>Macaroni and cheese</li>
  <li>Cheese danishes</li>
  <li>Cheese</li>
</ul>
```

Lists are very flexible and we can even nest lists inside of lists. If we
wanted to add specific types of sushi, for instance, we could put a list inside of our
`sushi` list item:

```HTML
<ul>
  <li>Cheeseburgers</li>
  <li>Grilled Cheese</li>
  <li>Sushi
    <ul>
      <li>Spicy Salmon Roll</li>
      <li>Alaskan Roll</li>
      <li>Shrimp Tempura Roll</li>
    </ul>
  </li>
  <li>Nacho Cheese French Fries</li>
</ul>
```

#### Task

* Open the `index.html` in your text editor
* Write a `ul` list with at least three `li` elements. The text content is up to you.
* Inside one `li`, add a nested, unordered list with at least one list item
inside it

Start up `httpserver` to see the results. In the browser, we'll see that `ul`
produces a bulleted list on the page, and will display nested lists indented
further from the left.

### `<ol>`

The other type of list is the _ordered list_, which is written as `<ol>`
instead of `<ul>`. Both use `<li>` tags inside, but this time, `<ol>`
will display a _numbered_ list instead of bullets. Ordered lists are great for listing out ranked items, like top 10 lists, or for things like steps on a recipe:

```HTML
<h3>Ultimate Grilled Cheese</h3>
<ol>
  <li>Heat frying pan at medium heat and add butter</li>
  <li>Butter two slices of bread on *both sides*</li>
  <li>Place bread slices in frying pan and fry for 1 minute</li>
  <li>Turn bread slices over and add slices of American or cheddar cheese to one</li>
  <li>Top cheese with shredded parmesan or pepper jack cheese</li>
  <li>Cover cheese with second slice of bread and fry for 1 minute</li>
  <li>Flip grilled cheese over and fry for 2 minutes</li>
</ol>
```

#### Task

* In `index.html`, write a `ol` list tag
* Inside the `ol`, add at least three `li` elements. The text content is up to you.

In the browser, we'll see that `ol` produces a numbered list on the page!

To continue, run `learn` to make sure you've passed all the test.

## Wrapping Up

Lists are important because they are the only way in HTML tags to designate that
a bunch of content is related. Often, things like navigation links are
_actually_ created as `un`ordered lists, then styled to remove the bullets and
to display horizontally! Now, you can create your own Top 10 lists like
Buzzfeed!
