defmodule DataTypes.Lists do
  @moduledoc """
  Lists are singly linked
  [1,2,3] -> [1 | [2 | [3 | []]]]
  """
  
  @doc """
  Adding an element to the head is O(1)
  """
  def updating_lists do
    list = [1,2,3,4,5]
    IO.inspect(list)
    replaced = List.replace_at(list, 2, 0)
    IO.inspect(replaced)
    deleted = List.delete_at(list, 2)
    IO.inspect(deleted)
    first = List.first(list)
    IO.inspect(first)
    last = List.last(list)
    IO.inspect(last)
  end
end
