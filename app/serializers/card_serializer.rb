class CardSerializer
  include FastJsonapi::ObjectSerializer
  attributes :theme_id, :img_url, :name
end
