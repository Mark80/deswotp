defmodule Mastery.Boundary.QuizValidator do
   alias Mastery.Boundary.Validator

  def errors(fields) when is_map(fields) do
    []
    |> Validator.require(fields, :title, &validate_title/1)
    |> Validator.optional(fields, :mastery, &validate_mastery/1)
  end
  def errors(_fields), do: [{nil, "A map of fields is required"}]

  def validate_title(title) when is_binary(title) do
    Validator.check(
      String.match?(title, ~r{\S}),
      {:error, "can't be blank"}
    )
  end
  def validate_title(_title), do: {:error, "must be a string"}

  def validate_mastery(mastery) when is_integer(mastery) do
    Validator.check(mastery >= 1, {:error, "must be greater than zero"})
  end
  def validate_mastery(_mastery), do: {:error, "must be an integer"}
end
