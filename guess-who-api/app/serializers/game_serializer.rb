class GameSerializer
  include FastJsonapi::ObjectSerializer
  attributes :player1_id, :player2_id
end
