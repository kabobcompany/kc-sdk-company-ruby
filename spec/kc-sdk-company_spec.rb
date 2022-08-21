RSpec.describe KcSdkCompany do
  describe '#configuration' do
    subject { KcSdkCompany.configuration }
    it { expect(subject).not_to eq(nil) }
  end

  describe '#api' do
    subject { KcSdkCompany.api }
    it { expect(subject).not_to eq(nil) }
  end
end
