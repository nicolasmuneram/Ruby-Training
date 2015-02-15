def header(&block)
	puts "This is our header"
	block.call

#This works like a "catch" in a try-catch clause.
#This will only run when an exception is raised.
rescue

	puts "This is our footer"

#The ensure keyword works as a safe trick, this will make sure that
#whatever is under it will run, even after and error. 
ensure 

	puts "This is going to work after an error."

end

header do
	puts "This is the body of the block."
	#The raise keyword makes an error.
	raise "ALERT ALERT"
end