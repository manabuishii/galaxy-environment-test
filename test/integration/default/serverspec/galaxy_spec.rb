require 'spec_helper'
#set :path, '/usr/bin:/sbin:/usr/local/sbin:$PATH'

describe "galaxy web" do
  getcommand = "curl http://localhost"
  if ['debian', 'ubuntu'].include?(os[:family])
    getcommand = "wget http://localhost -O -"
  end
  describe command(getcommand) do
    its(:stdout) { should match /Galaxy/ }
    its(:exit_status) { should eq 0 }
  end
end
