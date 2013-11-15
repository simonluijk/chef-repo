#
# Cookbook Name:: dev_db
# Recipe:: default
#
# Copyright 2013, Apricot Web Solutions
#
# All rights reserved - Do Not Redistribute


connection_info = {:host => node['postgresql']['config']['listen_addresses'],
                   :username => 'postgres',
                   :password => node['postgresql']['password']['postgres']}

postgresql_database 'dev_db' do
    connection connection_info
    action :create
end

postgresql_database_user 'dev_usr' do
    connection connection_info
    password 'dev_pass'
    action :create
end

execute "sudo su postgres -c 'psql -c \"ALTER USER dev_usr CREATEDB;\"'"
