module Ratechanger
  class Core

    attr_accessor :winner, :looser, :koef
    
    def initialize(winner:, looser:, koef:)
      @winner = winner
      @looser = looser
      @koef = koef
    end

    def calculate_rating_for_winner
       @winner + @koef * (1 - mat_load_for_winner)
    end

    def calculate_rating_for_looser
      @looser + @koef * (0 - mat_load_for_looser)
    end

    private

    def mat_load(first, second)
      1.0 / (1 + 10**((first - second)/ 400.0))
    end

    def mat_load_for_winner
      mat_load(@looser, @winner)
    end

    def mat_load_for_looser
      mat_load(@winner, @looser)
    end
  end
end
