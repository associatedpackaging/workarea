module Workarea
  module AssetEndpoints
    class CategoryImages < Base
      def result
        Catalog::Category
          .find_by(slug: params[:slug])
          .images
          .find(params[:image_id])
          .process(params[:job])

      rescue Mongoid::Errors::DocumentNotFound
        Catalog::CategoryPlaceholderImage.cached.process(params[:job])
      end
    end
  end
end
