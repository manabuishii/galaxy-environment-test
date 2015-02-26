require 'spec_helper'
#set :path, '/usr/bin:/sbin:/usr/local/sbin:$PATH'

describe "galaxy web" do
  it "is listening on port 8080 (original process)" do
    expect(port(8080)).to be_listening
  end

  getcommand = "curl http://localhost:8080"
  if ['debian', 'ubuntu'].include?(os[:family])
    getcommand = "wget http://localhost:8080 -O -"
  end
  describe command(getcommand) do
    its(:stdout) { should match /Galaxy/ }
    its(:exit_status) { should eq 0 }
  end
end
