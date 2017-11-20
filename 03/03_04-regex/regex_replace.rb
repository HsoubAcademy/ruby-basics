# https://io.hsoub.com/articles?page=1
# scheme://domain_name/path?query

# scheme =>  /https?/
# domain_name => /[\w\-\.]+/
# path => /.*/
# query => /.*/

# (https?):\/\/([\w\-\.]+)\/(.*)\?(.*)

str = "https://io.hsoub.com/articles?page=1"
url_matcher = /(?<scheme>https?):\/\/(?<domain>[\w\-\.]+)\/(?<path>.*)\?(?<query>.*)/
result = str.match(url_matcher)

puts "Original url was: #{result[0]}"
puts "Scheme is: #{result['scheme']}"
puts "Domain name is: #{result['domain']}"
puts "Path is: #{result['path']}"
puts "Query is: #{result['query']}"