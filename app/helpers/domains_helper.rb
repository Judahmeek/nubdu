module DomainsHelper
    def domain_params
      params.require(:title, :desc, :parent_id)
    end
end
