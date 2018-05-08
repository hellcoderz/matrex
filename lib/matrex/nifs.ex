defmodule Matrex.NIFs do
  @moduledoc false

  @on_load :load_nifs

  @doc false
  @spec load_nifs :: :ok
  def load_nifs do
    priv_dir =
      case :code.priv_dir(__MODULE__) do
        {:error, _} ->
          ebin_dir = :code.which(__MODULE__) |> :filename.dirname()
          app_path = :filename.dirname(ebin_dir)
          :filename.join(app_path, "priv")

        path ->
          path
      end

    :ok = :erlang.load_nif(:filename.join(priv_dir, "matrix_nifs"), 0)
  end

  @spec add(binary, binary) :: binary
  def add(first, second)
      when is_binary(first) and is_binary(second),
      do: :erlang.nif_error(:nif_library_not_loaded)

  @spec apply_math(binary, atom) :: binary
  def apply_math(matrix, c_function) when is_binary(matrix) and is_atom(c_function),
    do: :erlang.nif_error(:nif_library_not_loaded)

  @spec apply_math(binary, atom) :: binary
  def apply_parallel_math(matrix, c_function) when is_binary(matrix) and is_atom(c_function),
    do: :erlang.nif_error(:nif_library_not_loaded)

  @spec argmax(binary) :: non_neg_integer
  def argmax(_matrix), do: :erlang.nif_error(:nif_library_not_loaded)

  @spec divide(binary, binary) :: binary
  def divide(first, second)
      when is_binary(first) and is_binary(second),
      do: :erlang.nif_error(:nif_library_not_loaded)

  @spec dot(binary, binary) :: binary
  def dot(first, second)
      when is_binary(first) and is_binary(second),
      do: :erlang.nif_error(:nif_library_not_loaded)

  @spec dot_and_add(binary, binary, binary) :: binary
  def dot_and_add(first, second, third)
      when is_binary(first) and is_binary(second) and is_binary(third),
      do: :erlang.nif_error(:nif_library_not_loaded)

  @spec dot_nt(binary, binary) :: binary
  def dot_nt(first, second)
      when is_binary(first) and is_binary(second),
      do: :erlang.nif_error(:nif_library_not_loaded)

  @spec dot_tn(binary, binary) :: binary
  def dot_tn(first, second)
      when is_binary(first) and is_binary(second),
      do: :erlang.nif_error(:nif_library_not_loaded)

  @spec eye(non_neg_integer) :: binary
  def eye(size)
      when is_integer(size),
      do: :erlang.nif_error(:nif_library_not_loaded)

  @spec fill(non_neg_integer, non_neg_integer, non_neg_integer) :: binary
  def fill(rows, cols, value)
      when is_integer(rows) and is_integer(cols) and is_integer(value),
      do: :erlang.nif_error(:nif_library_not_loaded)

  @spec max(binary) :: float
  def max(_matrix), do: :erlang.nif_error(:nif_library_not_loaded)

  @spec multiply(binary, binary) :: binary
  def multiply(first, second)
      when is_binary(first) and is_binary(second),
      do: :erlang.nif_error(:nif_library_not_loaded)

  @spec multiply_with_scalar(binary, number) :: binary
  def multiply_with_scalar(matrix, scalar)
      when is_binary(matrix) and is_number(scalar),
      do: :erlang.nif_error(:nif_library_not_loaded)

  @spec random(non_neg_integer, non_neg_integer) :: binary
  def random(rows, cols)
      when is_integer(rows) and is_integer(cols),
      do: :erlang.nif_error(:nif_library_not_loaded)

  @spec row_to_list(binary, non_neg_integer) :: list(float)
  def row_to_list(matrix, row) when is_binary(matrix) and is_integer(row),
    do: :erlang.nif_error(:nif_library_not_loaded)

  @spec substract(binary, binary) :: binary
  def substract(first, second)
      when is_binary(first) and is_binary(second),
      do: :erlang.nif_error(:nif_library_not_loaded)

  @spec sum(binary) :: float
  def sum(_matrix), do: :erlang.nif_error(:nif_library_not_loaded)

  @spec to_list(binary) :: list(float)
  def to_list(matrix) when is_binary(matrix), do: :erlang.nif_error(:nif_library_not_loaded)

  @spec to_list_of_lists(binary) :: list(list(float))
  def to_list_of_lists(matrix) when is_binary(matrix),
    do: :erlang.nif_error(:nif_library_not_loaded)

  @spec transpose(binary) :: binary
  def transpose(matrix) when is_binary(matrix), do: :erlang.nif_error(:nif_library_not_loaded)

  @spec zeros(integer, integer) :: binary
  def zeros(rows, cols) when is_integer(rows) and is_integer(cols) do
    :erlang.nif_error(:nif_library_not_loaded)
  end
end