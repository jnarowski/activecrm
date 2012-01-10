require "spec_helper"

describe ActiveCRM::ClientFactory do
  before(:all) do
    module ActiveCRM
      SomeClient = "Test constant"
      class TestClient < BaseClient
      end
    end
  end
  
  describe "Creating API clients" do
    it "should create client without options" do
      clnt = ActiveCRM::ClientFactory.create_client("TestClient")
      clnt.should_not be_nil
      clnt.should be_kind_of(ActiveCRM::TestClient)
    end

    it "should set username, password and api_key" do
      opts = {:username => "user", :password => "secret", :api_key => "ad46fdec901"}
      clnt = ActiveCRM::ClientFactory.create_client("TestClient", opts)
      clnt.username.should == opts[:username]
      clnt.password.should == opts[:password]
      clnt.api_key.should == opts[:api_key]
    end

    it "should create client through proxy method" do
      clnt = ActiveCRM.create_client("TestClient")
      clnt.should_not be_nil
      clnt.should be_kind_of(ActiveCRM::TestClient)
    end

    it "should return nil for unknown client class" do
      ActiveCRM.create_client("UnkonwClient").should be_nil
    end

    it "should handle class like constants" do
      ActiveCRM.create_client("SomeClient").should be_nil
    end
  end
end

