require 'uri'
require 'net/http'
require 'openssl'
require 'json'





url = URI("https://themealdb.p.rapidapi.com/random.php")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Get.new(url)
request["x-rapidapi-key"] = '45494a8584msh09a2add02607941p147811jsn4d38ae4d023b'
request["x-rapidapi-host"] = 'themealdb.p.rapidapi.com'

response = http.request(request)
# puts response.read_body


    response = http.request(request)
    data = JSON.parse(response.read_body)
    return data['strMeal']
    # puts data['strMeal'] 




# @data = meal()
# puts @data