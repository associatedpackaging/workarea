module Workarea
  Core::Engine.routes.draw do
    get 'product_images/:slug(/:option)/:image_id/:job.jpg' => Dragonfly.app(:workarea).endpoint { |*args|
      AssetEndpoints::ProductImages.new(*args).result
    }, as: :dynamic_product_image

    get 'product_images/placeholder/:job.jpg' => Dragonfly.app(:workarea).endpoint { |*args|
      AssetEndpoints::ProductPlaceholderImages.new(*args).result
    }, as: :product_image_placeholder

    get 'category_images/:slug(/:option)/:image_id/:job.jpg' => Dragonfly.app(:workarea).endpoint { |*args|
      AssetEndpoints::CategoryImages.new(*args).result
    }, as: :dynamic_category_image

    get 'category_images/placeholder/:job.jpg' => Dragonfly.app(:workarea).endpoint { |*args|
      AssetEndpoints::CategoryPlaceholderImages.new(*args).result
    }, as: :category_image_placeholder

    mount Easymon::Engine => "/up"
  end
end
