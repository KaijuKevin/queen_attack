class Array
  define_method(:queen_attack?) do |target|
    queen = self
    queen_x = queen[0].to_f
    queen_y = queen[1].to_f
    target_x = target[0].to_f
    target_y = target[1].to_f
    if queen_x.==(target_x)
      true
    elsif queen_y.==(target_y)
      true
    elsif (((queen_y - target_y)./((queen_x - target_x))).abs).==(1) # must a slope of 1 to be diagonal on a chessbaord
      true
    else
      false
    end
  end
end
