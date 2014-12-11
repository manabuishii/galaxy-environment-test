require 'spec_helper'


describe "postgresql Daemon" do

  it "is listening on port 5432" do
    expect(port(5432)).to be_listening
  end

  it "has a running service of postgresql" do
    expect(service("postgresql")).to be_running
  end

end
