if node.chef_environment == "dev"
	template '/tmp/testfile' do
      source "testfile.erb"
      mode 0644
      owner "root" 
      group "root"  
    end
end    
