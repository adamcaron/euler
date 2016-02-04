# One Thread:

# thr = Thread.new { puts "Here's some text."}
# thr.join



# Multiple Threads:

threads = []
threads << Thread.new { puts "Some text." }
threads << Thread.new { puts "And a little more." }
threads.each { |thr| thr.join }