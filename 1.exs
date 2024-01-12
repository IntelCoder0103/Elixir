defmodule Times do
  def double(n), do: n * 2
end

defmodule Chop do
  def guess(n, a..b, current) when a <= current and b >= current  do
    IO.puts "Is it #{current}"
    if n == current do
      IO.puts current
    end
    if n < current do
      guess(n, a..current)
    end
    if n > current do
      guess(n, current..b)
    end
  end

  def guess(n, a..b) do
    c = div(a+b, 2);
    guess(n, a..b, c);
  end
end
