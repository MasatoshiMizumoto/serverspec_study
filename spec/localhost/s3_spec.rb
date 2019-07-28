require 'spec_helper'

#Mount point check
describe command('df -h') do
  its(:stdout) { should match /s3fs/ }
end

#Write test
describe command('touch /mnt/s3/s3test.txt') do
  let(:disable_sudo) { true }
  its(:exit_status) { should eq 0 }
end

#File exist check
describe command('ls /mnt/s3') do
  its(:stdout) { should match /s3test.txt/ }
end

#File delete test
describe command('rm /mnt/s3/s3test.txt') do
  let(:disable_sudo) { true }
  its(:exit_status) { should eq 0 }
end

#File delete success
describe command('ls /mnt/s3') do
    its(:stdout) { should_not match /s3test.txt/ }
  end