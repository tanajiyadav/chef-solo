directory "/root/.ssh" do 
  owner "root"
  group "root"
  mode 0700
  action :create
end

template '/root/.ssh/authorized_keys' do
	source "sshkeys.erb"
	mode 0600
	owner "root"
	group "root"
end
