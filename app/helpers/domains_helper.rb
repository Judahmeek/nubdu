module DomainsHelper
    def domain_params
      params.require(:title, :desc)
    end
end
