class Player < ActiveRecord::Base
  belongs_to :team
  def handle_cards(yellow,red)
    red = red.to_i
    yellow = yellow.to_i

    if(self.yellow == 2)
      if(yellow==1)
        self.yellow = 0
        self.punishment += 1
        self.total_yellow += 1
        self.team.yellow += 1
        if(red==1)
          self.punishment += 1
          self.red += 1
          self.team.red += 1
        end
      end
    else
        if(yellow==2)
          self.team.red += 1
          self.red+=1
          yellow -= 2
        end
        self.yellow += yellow
        self.total_yellow += yellow
        self.team.yellow += yellow
        self.red+= red
        self.team.red += red
    end
  end

end