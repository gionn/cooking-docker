
git "#{Chef::Config[:file_cache_path]}/node-app" do
  repository 'https://gist.github.com/3b8ae2fd16f46acadea9.git'
  revision 'master'
  action :sync
  notifies :run, "docker_image[node-app]"
end

docker_image "node-app" do
  tag "latest"
  source "#{Chef::Config[:file_cache_path]}/node-app/Dockerfile"
  action :build
end

docker_container "node-app" do
  detach true
  port '8080:8080'
  volume '/mnt/docker:/docker-storage'
end
