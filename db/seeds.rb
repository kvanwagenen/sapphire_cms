role_names = ['admin', 'editor']
role_names.each do |name|
  SapphireCms::Role.create(name: name)
end