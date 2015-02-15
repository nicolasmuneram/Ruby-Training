require 'minitest/autorun'
require 'minitest/spec'

$:.unshift File.expand_path(File.dirname(__FILE__) + '/..')


require 'lib/bank_account'

describe BankAccount do 
	subject { BankAccount.new("Nicolas") }

	it "should be a bank_account instance" do
		subject.must_be_instance_of BankAccount
	end

	it "should have a name" do
		subject.must_respond_to 'name'
	end

	it "should have a name initialized" do
		bank_account = BankAccount.new("Nicolas")
		bank_account.name.must_equal 'Nicolas'
	end

	it "should have transactions" do
		subject.must_respond_to 'transactions'
	end

	it "should have an array of transactions" do
		subject.transactions.must_be_instance_of Array
		subject.transactions.must_equal []
	end
end

describe "#deposit" do
	before do
		@bank_account = BankAccount.new("Nicolas")
	end

	it "responds to the deposit method" do
		@bank_account.must_respond_to 'deposit'
	end

	it "returns te amount of the deposit" do
		@bank_account.deposit(100).must_equal 100
	end

	it "adds the amount to the transactions" do
		@bank_account.deposit(100)
		@bank_account.transactions.must_include 100
	end
end

