require 'spec_helper'

describe Claim do

  before { @claim = Claim.new(name: "Example User", mothersname: "Mother of Example", age: 20, salary: 200000, claimmoney: 10000000, duration: 120) }

  subject { @claim }

  it { should respond_to(:name) }
  it { should respond_to(:mothersname) }
  it {should respond_to(:age)}
  it {should respond_to(:salary)}
  it {should respond_to(:claimmoney)}
  it {should respond_to(:duration)}

  it { should be_valid }

  describe "when name is not present" do
    before { @claim.name = " " }
    it { should_not be_valid }
  end

  describe "when mothersname is not present" do
    before { @claim.mothersname = " " }
    it { should_not be_valid }
  end

  describe "when age is not present" do
    before { @claim.age = nil }
    it { should_not be_valid }
  end

  describe "when salary is not present" do
    before { @claim.salary = nil }
    it { should_not be_valid }
  end

  describe "when claimmoney is not present" do
    before { @claim.claimmoney = nil }
    it { should_not be_valid }
  end

  describe "when duration is not present" do
    before { @claim.duration = nil }
    it { should_not be_valid }
  end

  describe "when name is too long" do
    before { @claim.name = "a" * 51 }
    it { should_not be_valid }
  end

  describe "when name format is not valid" do
    before { @claim.name = "ExampleWrongUser"}
    it {should_not be_valid}
  end

  describe "when mothersname is too long" do
    before { @claim.mothersname = "a" * 51 }
    it { should_not be_valid }
  end

  describe "when mothersname format is not valid" do
    before { @claim.mothersname = "ExampleWrongUser"}
    it {should_not be_valid}
  end
end