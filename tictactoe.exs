
score = fn (board) ->
  matches = [
    [0,1,2],
    [3,4,5],
    [6,7,8],
    [0,3,6],
    [1,4,7],
    [2,5,8],
    [0,4,8],
    [2,4,6]
  ]

  flat_board = Enum.flat_map(board, fn row -> row end)

  Enum.find_value(matches, fn [a, b, c] ->
    va = Enum.at(flat_board, a)
    if va != "" and va == Enum.at(flat_board, b) and va == Enum.at(flat_board, c) do
      va
    end
  end)
end


board = [
  ['x','o','o'],
  ['x','o',''],
  ['o','',''],
  ]
IO.puts(score.(board))
