template '/root/.bashrc' do
  source "bashrc.erb"
  mode 0644
  owner "root" 
  group "root"  
end    

template '/etc/motd' do
	source "motd.erb"
	mode 0644
	owner "root"
	group "root"
end	  	