Deface::Override.new(
  virtual_path: 'spree/shared/_header',
  name: 'pages_in_promotion',
  insert_before: 'header',
  partial: 'spree/static_content/static_content_promotion'
)
