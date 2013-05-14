### 
# ------------------------------------------------------------
# downplayed - downplay parser 
# ------------------------------------------------------------
# inspired by marked
# written in coffeescript
# ------------------------------------------------------------
### 
->
	grammar =
		header: /h{1,4}|h[1-4]\s.+/
		paragraph: /(p?|p\s?)/
		# anchor:
		#	ul:
		# ol:
		# image:
		# table:
		# emphasis:
		# strong:

	sample = "h header\n p test"
	
	output = sample.replace header.grammer, "<h1>$1</h1>"
	console.log output