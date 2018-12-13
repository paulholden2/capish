# # encoding: utf-8

# Inspec test for resource capish_repo: deploy by commit hash

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe directory('/var/www/commit') do
  it { should exist }
  it { should be_directory }
end

describe directory('/var/www/commit/releases') do
  it { should exist }
  it { should be_directory }
end

describe file('/var/www/commit/current') do
  it { should exist }
  it { should be_symlink }
  its(:mode) { should cmp '0755' }
end