admins = data_bag('admins')
admins.each do |login|
  home = "/home/#{login}"
  admin = data_bag_item('admins', login)
   user login do
     uid admin['uid']
     shell admin['shell']
     comment admin['comment']
     home     home
     manage_home true
   end
end
