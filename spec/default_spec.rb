require 'spec_helper'

describe 'yum-rabbitmq::default' do
  context 'yum-rabbitmq::default uses default attributes' do
    let(:chef_run) { ChefSpec::SoloRunner.new.converge(described_recipe) }

    it 'creates yum_repository[rabbitmq]' do
      expect(chef_run).to create_yum_repository('rabbitmq')
    end

    it 'creates yum_repository[rabbitmq-erlang]' do
      expect(chef_run).to create_yum_repository('rabbitmq-erlang')
    end
  end
end
