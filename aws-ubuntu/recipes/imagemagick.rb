# AWS OpsWorks Recipe for Ubuntu VMs to be executed during the Setup lifecycle phase
# - Adds Software

Chef::Log.debug("Installing ImageMagick")

script "install_imagemagick" do
  interpreter "bash"
  user "root"
  cwd "/"
  code <<-EOH
  apt-get update -y
  apt-get install -y imagemagick libmagickcore-dev libmagickwand-dev libmagic-dev
  EOH
end
