require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe Quebert::Job do
  
  before(:all) do
    Adder.backend = @q = Quebert::Backend::InProcess.new
  end

  it "should raise not implemented on base job" do
    lambda {
      Job.new.perform
    }.should raise_exception(Quebert::Job::NotImplemented)
  end
  
  it "should convert job to and from JSON" do
    args = [1,2,3]
    serialized = Adder.new(args).to_json
    unserialized = Adder.from_json(serialized)
    unserialized.should be_instance_of(Adder)
    unserialized.args.should eql(args)
  end
  
  context "actions" do
    it "should raise release" do
      lambda{
        ReleaseJob.new.perform
      }.should raise_exception(Job::Release)
    end
    
    it "should raise delete" do
      lambda{
        DeleteJob.new.perform
      }.should raise_exception(Job::Delete)
    end
    
    it "should raise bury" do
      lambda{
        BuryJob.new.perform
      }.should raise_exception(Job::Bury)
    end
  end
  
  
  context "job queue" do
    it "should enqueue" do
      lambda{
        Adder.enqueue(1,2,3)
      }.should change(@q, :size).by(1)
    end
  end
  
end