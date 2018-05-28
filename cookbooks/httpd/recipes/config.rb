#cookbook_file "/var/www/html/index.html" do
#  source "index.html"
#  mode "0644"
#  notifies :restart, 'service[httpd]'
#end
#
admins = data_bag('admins')
admin = data_bag_item('admins', 'hussain')
template '/var/www/html/index.html' do
  source 'index.html.erb'
  variables(
  :admins => admins,
  :admin  => admin
  ) 
end
