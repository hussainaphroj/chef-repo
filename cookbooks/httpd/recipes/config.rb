cookbook_file "/var/www/html/index.html" do
  source "index.html"
  mode "0644"
  notifies :restart, 'service[httpd]'
end
