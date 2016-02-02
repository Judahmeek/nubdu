module DomainsHelper
    def domain_params
      params.require(:title).permit(:desc)
    end
end
