RSpec.describe KcSdkCompany::Configuration do
  describe '#initialize' do
    subject { KcSdkCompany::Configuration.new(api_url: 'http://host.com') }
    its(:api_url) { should eq 'http://host.com' }
  end
end
