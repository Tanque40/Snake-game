require_relative "model/state"
require_relative "view/ruby2d"


class App
    def start
        view = View::Ruby2dView.new

        initial_state = Model::initial_state

        view.render(initial_state)
    end

    def init_timer
        loop do
            sleep 0.5
            ## trigger movement
        end

end
