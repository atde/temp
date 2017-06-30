
res = Net::HTTP.get_response(URI('http://www.example.com/index.html'))
print res.body