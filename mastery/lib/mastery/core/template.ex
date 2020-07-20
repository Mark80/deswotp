defmodule Mastery.Core.Template do
  @docmodule """
  Use the sigil ~w to create a list of words
  The modifier a means the statement will create a list of atoms instead of strings
  """
  defstruct ~w[name category instructions raw compiled generators checker]a
end
