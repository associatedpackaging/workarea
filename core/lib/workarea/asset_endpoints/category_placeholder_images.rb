module Workarea
  module AssetEndpoints
    class CategoryPlaceholderImages < Base
      def result
        Catalog::ProductPlaceholderImage.cached.process(params[:job])
      end
    end
  end
end
