# # encoding: utf-8

# Inspec test for recipe git_cookbook::default

# The Inspec reference, with examples and extensive documentation, can be
# found at https://docs.chef.io/inspec_reference.html

unless os.windows?
  describe user('root') do
    it { should exist }
    skip 'This is an example test, replace with your own test.'
  end
end

 describe user('vikram') do
    it { should exist }
    skip 'This is an example test, replace with your own test.'
  end

describe port(80) do
  it { should_not be_listening }
  skip 'This is an example test, replace with your own test.'
end
 describe file('/tmp/afroz') do
    its('content') { should match /afroz Hussain/ }
  end

describe command('git --version') do
  its('stdout') { should match /1\.8\.3/ }
end
