defmodule Clock do
  def start(cb) do
    run(cb, 0)
  end

  def run(cb, count) do
    cb.(count)
    new_count = Counter.Core.inc(count)
    :timer.sleep(1000)
    run(cb, new_count)
  end
end
