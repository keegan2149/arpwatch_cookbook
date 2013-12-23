#
# Cookbook Name:: arpwatch
# Recipe:: default
#
# Copyright 2011, AWeber Communications
#
# All rights reserved - Do Not Redistribute
#

package "arpwatch"



template "/etc/arpwatch.conf" do
  source "arpwatch.conf.erb"
  mode 0440
  owner "root"
  group "root"
  variables ({
    :interfaces => node['arpwatch']['interfaces'].to_hash,
    :data_dir => node['arpwatch']['data_dir'].to_s
  })
end



service 'arpwatch' do
  case node['arpwatch']['enabled']
  when 'true'
    action :enable
    action :start
  when 'false'
    action :disable
    action :stop
  end
  supports :status => false, :restart => true, :reload => false
  provider Chef::Provider::Service::Init::Debian
end