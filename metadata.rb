name 'yum-rabbitmq'
maintainer 'Chase Bolt'
maintainer_email 'chase.bolt@gmail.com'
license 'Apache 2.0'
description 'Installs and configures the RabbitMQ yum repository'
version '0.1.0'

source_url 'https://github.com/chasebolt/chef-yum-rabbitmq'
issues_url 'https://github.com/chasebolt/chef-yum-rabbitmq/issues'

depends 'yum', '~> 3.2'

supports 'amazon'
supports 'centos'
supports 'fedora'
supports 'oracle'
supports 'redhat'
supports 'scientific'
