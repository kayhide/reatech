module GitHub
  class << self
    def site
      @site ||= RestClient::Resource.new('https://api.github.com')
    end

    def handle_response
      ActiveSupport::JSON.decode yield
    end

    def repository(repository_name)
      handle_response do
        site["/repos/#{repository_name}"].get
      end
    end

    def readme(repository_name)
      handle_response do
        site["repos/#{repository_name}/readme"].get
      end
    end
  end
end

