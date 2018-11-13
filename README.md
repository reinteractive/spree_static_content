# Spree Static Content

[![Build Status](https://travis-ci.org/reinteractive/spree_static_content.svg?branch=master)](https://travis-ci.org/reinteractive/spree_static_content)

Good, clean content management of pages for Spree. You can use this to:

- Add and manage static pages such as an 'About' page.
- Show a static page instead of existing dynamic pages such as the home page,
  products pages, and taxon pages.

---

## HowTo

Using the 'Pages' option in the admin tab, you can add static pages to your Spree install. The page content can
be pulled directly from the database, be a separate layout file or rendered as a partial.

In the admin tab, use the 'New page' option to create a new static page.

The title, slug, body, and meta fields will replace their respective page elements on load. The title, slug and
body element are all required fields.

Body text provided without a layout / partial being specified will be loaded in the spree_application layout after
it is pulled from the database.

**Layout and Partial Rendering**

To render an entire page without the spree_application layout, specify a relative path to the layout file (eg.
`spree/layouts/layout_file_name`). This file will not be prefixed with an underscore as it is a layout, not a partial.

To render a partial, specify the path in the layout file name and check the 'Render layout as partial' option. The
path specified in the layout area will not have an underscore, but it will be required in the filename.

Also note the availability of the render_snippet helper which finds a page by its slug and renders the raw page
body anywhere in your view.

**Options**

Use the 'Show in' checkboxes to specify whether to display the page links in the header, footer or sidebar. The
position setting alters the order in which they appear.

Finally, toggle the visibility using the 'Visible' checkbox. If it is unchecked, the page will not be available.

---

## Installation
#### We have removed content globalisation due to compatibility issues with the table structure used with the StoreConnect gem.

1. Add the extension to your Gemfile with this line:

  #### Spree >= 3.1

  ```ruby
  gem 'spree_static_content', github: 'reinteractive/spree_static_content'
  ```


2. Install the gem using Bundler:
  ```ruby
  bundle install
  ```

3. Copy & run migrations
  ```ruby
  bundle exec rails g spree_static_content:install
  ```

4. Restart your server

  If your server was running, restart it so that it can find the assets properly.

---
