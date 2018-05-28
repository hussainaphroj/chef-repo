# httpd

TODO: Enter the cookbook description here.
create Databags as below
  knife data bag create admins hussain
  export EDITOR=vim
  knife data bag create admins hussain
  knife data bag show admins hussain
  knife data bag show admins
 knife data bag show admins hussain
  knife search admins "id:hussain"


knife data bag show admins hussain
WARNING: Unencrypted data bag detected, ignoring any provided secret options.
comment: Test user hussain
id:      hussain
shell:   /bin/bash
uid:     1001
=====================================================================================
Please follow the following steps to creat and assign the roles to nod1.example.com
1. set the EDITOR variable first
  vim ~/.bashrc
  export EDITOR=vim
2. source ~/.bashrc

3. knife role create webservers
  {
  "name": "webservers",
  "description": " Web servers",
  "json_class": "Chef::Role",
  "default_attributes": {

  },
  "override_attributes": {

  },
  "chef_type": "role",
  "run_list": [
    "recipe[httpd]"
  ],
  "env_run_lists": {

  }
}
4. knife node run_list set node1.example.com 'role[webservers]'

5. knife node show node1.example.com (befor running the chef-client on the node1)
Node Name:   node1.example.com
Environment: _default
FQDN:        node1.example.com
IP:          10.0.2.15
Run List:    role[webservers]
Roles:
Recipes:     httpd, httpd::default, httpd::install, httpd::config, httpd::service, httpd::users
Platform:    centos 7.4.1708
Tags:
6. knife node show node1.example.com (After running the chef-client on the node1)
Node Name:   node1.example.com
Environment: _default
FQDN:        node1.example.com
IP:          10.0.2.15
Run List:    role[webservers]
Roles:       webservers
Recipes:     httpd, httpd::default, httpd::install, httpd::config, httpd::service, httpd::users
Platform:    centos 7.4.1708
Tags:
