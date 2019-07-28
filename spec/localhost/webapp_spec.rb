require 'spec_helper'

#Package check
%w{nginx}.each do |pkg|
  describe package(pkg) do
    it { should be_installed }
  end
end

#nginx service check
describe service('nginx') do
  it { should be_enabled }
  it { should be_running }
end


#Listen port
%w{22 80}.each do |ports|
  describe port(ports) do
    it { should be_listening }
  end
end