require 'spec_helper'

describe 'yum rabbitmq repo' do
  describe yumrepo('rabbitmq') do
    it { should exist }
    it { should be_enabled }
  end

  describe file('/etc/yum.repos.d/rabbitmq.repo') do
    it { should contain 'https://dl.bintray.com/rabbitmq/rabbitmq-server-rpm' }
  end
end
