
host_www = node['docker-server']['php']['host_www']
image_name = node['docker-server']['php']['image_name']

directory host_www do
  action :create
end

file host_www + '/index.php' do
  content "<?php phpinfo();"
end

docker_image image_name do
  action :pull
  notifies :redeploy, 'docker_container[php]', :immediately
end

docker_container 'php' do
  image image_name
  port '80:80'
  volume '/srv/www:/var/www'
  detach true
  action :run
end
