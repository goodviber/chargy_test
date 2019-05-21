require 'api_caller'

class LanguageCalculator

  def initialize(response)
    @response = response
  end

  def favourite_language
    lang_hash = Hash.new(0) #must set default value
    repos = @response.parsed_response #HTTParty method
    repos.map do |repo|
      unless repo["language"].nil?
        lang_hash[repo["language"]] += repo["size"]
      end
    end

    lang_hash.max_by { |language, size| size }.first unless lang_hash.empty?
  end

end
