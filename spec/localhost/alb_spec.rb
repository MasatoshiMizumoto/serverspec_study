require 'spec_helper'

#HTTP Code 200 check
describe command('curl [ALBのURL] -o /dev/null -w "%{http_code}\n" -s') do
  its(:stdout) { should match /^200$/ }
end