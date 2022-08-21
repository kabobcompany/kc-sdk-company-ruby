RSpec.describe KcSdkCompany::Api::Orders do
  describe '#surplus' do
    let(:url) { 'https://cloud.kabob.io/api/company/v1/orders/surplus' }
    let(:req) { { headers: { Authorization: 'Bearer 1234', params: params }, method: :get, url: url } }
    let(:resp) { OpenStruct.new(body: '{}') }

    context 'when params is ok' do
      let(:params) { { company_id: 1, plan: 'go', scope: 'point' } }
      after do
        KcSdkCompany::Api.new.orders.surplus(params)
      end

      it { expect(RestClient::Request).to receive(:execute).once.with(hash_including(req)).and_return(resp) }
    end

    context 'when leak of required params' do
      let(:params) { { company_id: 1, plan: 'go' } }
      let(:message) { 'required keywords: company_id, plan, scope' }
      it { expect { KcSdkCompany::Api.new.orders.surplus(params) }.to raise_error(ArgumentError, message) }
    end
  end

  describe '#consuming' do
    let(:url) { 'https://cloud.kabob.io/api/company/v1/orders/consuming' }
    let(:req) { { headers: { Authorization: 'Bearer 1234' }, payload: params, method: :post, url: url } }
    let(:resp) { OpenStruct.new(body: '{}') }

    context 'when params is ok' do
      let(:params) { { company_id: 1, plan: 'go', scope: 'point', quantity: 1, taken_at: '2020-12-27', uid: '1234' } }
      after do
        KcSdkCompany::Api.new.orders.consuming(params)
      end

      it { expect(RestClient::Request).to receive(:execute).once.with(hash_including(req)).and_return(resp) }
    end

    context 'when leak of required params' do
      let(:params) { { company_id: 1, plan: 'go', scope: 'point', quantity: 1, taken_at: '2020-12-27' } }
      let(:message) { 'required keywords: company_id, plan, scope, quantity, taken_at, uid' }
      it { expect { KcSdkCompany::Api.new.orders.consuming(params) }.to raise_error(ArgumentError, message) }
    end
  end
end
