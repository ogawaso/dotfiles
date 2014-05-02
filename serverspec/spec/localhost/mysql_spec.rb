require 'spec_helper'

describe package('mysql-server') do
  it { should be_installed }
end

describe service('mysql') do
  it { should be_enabled   }
  it { should be_running   }
end

describe port(3306) do
  it { should be_listening }
end

#describe file('/etc/httpd/conf/httpd.conf') do
#  it { should be_file }
#  its(:content) { should match /ServerName localhost/ }
#end
