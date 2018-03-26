module HttpdCookbook
#  module Helpers
    def platform_package_httpd
      case node['platform']
      when 'centos' then 'httpd'
      when 'ubuntu' then 'apache2'
      end
    end

    def platform_service_httpd
      case node['platform']
      when 'centos' then 'httpd'
      when 'ubuntu' then 'apache2'
      end
    end
#  end
end
Chef::Recipe.send(:include, HttpdCookbook)
Chef::Resource.send(:include, HttpdCookbook)
Chef::Provider.send(:include, HttpdCookbook)
