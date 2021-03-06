
  def game_hash
   game_hash = {
    :home =>
      {team_name: "Brooklyn Nets",
       colors:["Black", "White"],
       :players => {
         "Alan Anderson" => {
            number: 0,
            shoe: 16,
            points: 22,
            rebounds: 12,
            assists: 12,
            steals: 3,
            blocks: 1,
            slam_dunks: 1
            },
         "Reggie Evans" => {
            number: 30,
            shoe: 14,
            points: 12,
            rebounds: 12,
            assists: 12,
            steals: 12,
            blocks: 12,
            slam_dunks: 7
            },
        "Brook Lopez" => {
            number: 11,
            shoe: 17,
            points: 17,
            rebounds: 19,
            assists: 10,
            steals: 3,
            blocks: 1,
            slam_dunks: 15
            },
      "Mason Plumlee" => {
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 12,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
          },
      "Jason Terry" => {
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
          }
    } # end of players hash
  }, #end of home hash
   :away =>
     {team_name: "Charlotte Hornets",
      colors:["Turquoise", "Purple"],
      :players => {
        "Jeff Adrien" => {
           number: 4,
           shoe: 18,
           points: 10,
           rebounds: 1,
           assists: 1,
           steals: 2,
           blocks: 7,
           slam_dunks: 2
           },
        "Bismak Biyombo" => {
           number: 0,
           shoe: 16,
           points: 12,
           rebounds: 4,
           assists: 7,
           steals: 7,
           blocks: 15,
           slam_dunks: 10
           },
       "DeSagna Diop" => {
           number: 2,
           shoe: 14,
           points: 24,
           rebounds: 12,
           assists: 12,
           steals: 4,
           blocks: 5,
           slam_dunks: 5
           },
     "Ben Gordon" => {
         number: 8,
         shoe: 15,
         points: 33,
         rebounds: 3,
         assists: 2,
         steals: 1,
         blocks: 1,
         slam_dunks: 0
         },
     "Brendan Haywood" => {
         number: 33,
         shoe: 15,
         points: 6,
         rebounds: 12,
         assists: 12,
         steals: 22,
         blocks: 5,
         slam_dunks: 12
         }
    } # end of players hash
   }#end of away hash
  }#end of game hash
  end

def num_points_scored(name)
  game_hash.each do |key, value|
    if game_hash[key][:players].include?(name)
      return game_hash[key][:players][name][:points]
    end
  end
end

def shoe_size(name)
  game_hash.each do |key, value|
    if game_hash[key][:players].include?(name)
      return game_hash[key][:players][name][:shoe]
    end
  end
end

def team_colors(name)
  game_hash.each do |key, value|
    if game_hash[key][:team_name].include?(name)
      return game_hash[key][:colors]
    end
  end
end


def team_names
  collect = []
  game_hash.select do |key, value|
    collect << game_hash[key][:team_name]
  end
  collect
end


def player_numbers(team)
  if game_hash[:home][:team_name].include?(team)
    game_hash[:home][:players].collect do |key, value|
      value[:number]
    end
    else
      game_hash[:away][:players].collect do |key, value|
        value[:number]
    end
  end
end


def player_stats(name)
  if game_hash[:home][:players].include?(name)
    game_hash[:home][:players][name]
    else
      game_hash[:away][:players].include?(name)
      game_hash[:away][:players][name]
  end
end

def big_shoe_rebounds
  largest_shoe = []
  game_hash.collect do |team, team_value|
    team_value[:players].collect do |stat, stat_value|
      largest_shoe << stat_value[:shoe]
    end
  end
  largest_shoe_sort = largest_shoe.sort.reverse
  game_hash.each do |team, team_value|
    game_hash[team][:players].each do |player, player_value|
      if game_hash[team][:players][player][:shoe] == largest_shoe_sort[0]
        return game_hash[team][:players][player][:rebounds]
      end
    end
  end
end
