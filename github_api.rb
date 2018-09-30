require 'octokit'
require 'yaml'

@search_word = []
@result_hash = {}

config = YAML.load_file('config.yml')
access_token = config.dig('config', 'access_token')

ARGV.each_with_index do |arg, i|
  @search_word[i] = arg.to_s
  client = Octokit::Client.new(
    access_token: access_token
  )

  page = 1
  result_size = 0
  loop do
    resource = client.search_code(
      @search_word[i],
      page: page,
      per_page: 100
    )
    result_size += resource.items.size
    break unless client.last_response.rels[:next]
    page += 1
  end

  @result_hash[@search_word[i]] = result_size
end

puts @result_hash
