class Hello
	def initialize(name)
		@name = name
	end
end

module SayHello
	def sayHello
		puts "Hello #{@name}."
	end
end

hello = Hello.new("Nigga")
hello.extend SayHello
hello.sayHello