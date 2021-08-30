module Actions

    def self.move_snake(state)
        next_direction = state.next_direction
        next_position = calc_next_position(state)

        #Verificar que la siguiente casilla sea válida
        if position_is_valid?(state, next_position)
            #Si si es válida -> MOVE SNAKE
            move_snake_to(state, next_position)
        else
            #Si no es válida -> GAME OVER
            end_game(state)
        end
    end

    private

    def self.calc_next_position(state)
        curr_position = state.snake.positions.first
        case state.next_direction
        when Model::Direction::UP
            # decrementar fila
            #[(1, 1), (1, 0)] -> [(0, 1), (1, 1)]
            return Model::Coord.new(
                curr_position.row - 1,
                curr_position.col                
            )

        when Model::Direction::RIGHT 
            # incrementar la columna
            return Model::Coord.new(
                curr_position.row,
                curr_position.col + 1
            )

        when Model::Direction::DOWN         
            #incrementar fila
            return Model::Coord.new(
                curr_position.row + 1,
                curr_position.col                
            )

        when Model::Direction::LEFT 
            #decrementar columna
            return Model::Coord.new(
                curr_position.row,
                curr_position.col - 1                
            )

        end
    end

    def self.position_is_valid?(state, position)
        # Verificar que esté en la grilla
        is_invalid = (position.row >= state.grid.rows || position.row < 0) || (position.col >= state.grid.cols || position.col < 0)
        if is_invalid 
            return false
        else

            #Verififcar que no esté superponiendo a la serpiente
            return !(state.snake.positions.include?(position))
        end


    end

    def self.move_snake_to(state, next_position)
        new_positons = [next_position] + state.snake.positions[0...-1]
        state.snake.positions = new_positons

        state
    end

    def self.end_game(state)
        state.game_finished = true

        state
    end

end