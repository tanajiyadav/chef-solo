# manage all yum repos

%w{ /etc/pki/rpm-gpg/RPM-GPG-KEY-percona /etc/pki/rpm-gpg/RPM-GPG-KEY-remi  /etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-6 /etc/pki/rpm-gpg/RPM-GPG-KEY-puppetlabs }.each do | repo |  
  cookbook_file repo do
    a = repo.split('/')
    source a[4]
    mode "0644"
  end
end

%w{ /etc/yum.repos.d/Percona.repo /etc/yum.repos.d/remi.repo /etc/yum.repos.d/epel.repo /etc/yum.repos.d/puppetlabs.repo }.each do | repo |
  cookbook_file repo do
    a = repo.split('/')
    source a[3] 
    mode "0644"
  end
end
