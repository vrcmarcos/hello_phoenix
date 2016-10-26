require Logger

defmodule WorkerHelloWorld do
    use GenServer

    def start_link do
        GenServer.start_link(__MODULE__, %{})
    end

    def init(state) do
        schedule_work()
        {:ok, state}
    end

    def handle_info(:work, state) do
        do_something()
        schedule_work()
        {:noreply, state}
    end

    def do_something() do
      Logger.info "Test"

      if true do
        1
      else
        2
      end
    end

    def schedule_work() do
        Process.send_after(self(), :work, 5 * 1000)
    end

end