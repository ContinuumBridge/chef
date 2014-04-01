

# Also requires python and python-software-properties
execute 'Install g++ and make' do
  command "sudo apt-get install -y g++ make"
  action :run
end

execute 'Add Chris Lea\'s ppa' do
  command "sudo add-apt-repository -y  ppa:chris-lea/node.js"
  action :run
end

execute 'Do an update' do
  command "sudo apt-get update -y"
  action :run
end

execute 'Install nodejs' do
  command "sudo apt-get install -y nodejs"
  action :run
end



