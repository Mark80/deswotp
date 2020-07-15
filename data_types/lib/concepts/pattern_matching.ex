defmodule Animal do
  defstruct [:type, :legs, :size]

  def speak(%Animal{type: "dog", size: _}), do: "Woof"
  def speak(%Animal{type: "cat", size: "small"}), do: "Meow"
  def speak(%Animal{type: "cat", size: "large"}), do: "Roar!!"
end

defmodule Concepts.PatternMatching do
   
end
