class ThemeSerializer
  include FastJsonapi::ObjectSerializer
  attributes :game_id, :theme_name
end
