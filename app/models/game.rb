class Game < ApplicationRecord
    def structure_response
        {
            id: self.id,
            completed: self.completed,
            title: self.title,
            genres: self.genres,
            length: self.length,
            critic_score: self.critic_score,
            genres: self.genres
            # TODO: genres need to be pulled into Rails somehow to access multipliers
        }
    end

    def total_multiplier
        # sum of (self.genres.total_multi + self.custom_multi
    end
end
