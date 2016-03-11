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

describe 'yum rabbitmq-erlang repo' do
  describe yumrepo('rabbitmq-erlang') do
    it { should exist }
    it { should be_enabled }
  end

  describe file('/etc/yum.repos.d/rabbitmq-erlang.repo') do
    it { should contain 'https://dl.bintray.com/rabbitmq/erlang' }
  end
end
