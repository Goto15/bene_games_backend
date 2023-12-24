class Game < ApplicationRecord
    def structure_response
        {
            title: self.title,
            blind: self.blind,
            criticScore: self.criticScore,
            comlete: self.completed,
            esrbrating: self.esrbRating,
            genres: self.genres,
            hasVotes: self.hasVotes,
            length: self.length,
            usrScore: self.userScore,
            votesNeededToPass: self.votesNeededToPass,
            description: self.description,
            releaseDate: self.releaseDate,
            genres: self.genres
        }
    end
end
