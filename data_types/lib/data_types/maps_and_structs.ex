defmodule DataTypes.MapsAndStructs do
  @moduledoc """
  Maps and Structs are the same because the implementation
  is the same. Structs provide validation on the fields
  when you need it
  """
  defmodule User do
    @enforce_keys [:name]
    defstruct [:name, :email]
  end

  def run do
    map = %User{name: "Charlie"}
    IO.inspect(map)
  end
end
