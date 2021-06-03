# README

## What the app does

The only table is `hot_takes` which consists of two strings, handle and content.

Anyone can post their hot takes under whatever name they like.

## How it does it

There are multiple versions of the 'Hot Takes' interface where you can see all
the takes and post one yourself.

- Hot takes vanilla
  - Just a cut down scaffold
  - No turbo, reloads the page on every post
- Turbo for free hot takes
  - Code is as above but with a single extra HTML element (a turbo-frame)
  - The full page is re-rendered by the server but the user a sees a fast, dynamic update
  - Not super efficient but fast UX and zero effort
- Turbo optimised hot takes
    - The controller re-renders only small partial templates and pushes specific updates to the page
    - Minimizes data over the wire and database queries
    - Requires specific controller code but the views almost the same
    - Efficient, fast UX but some effort
