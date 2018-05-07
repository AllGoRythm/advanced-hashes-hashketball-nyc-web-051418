
  def game_hash
   {
    :home =>
      {team_name: "Brooklyn",
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


def num_points_scored(player_name)
  game_hash.select do |team_location, team_data|

    team_data.select do |attribute, data|

      if attribute == :players
        data.each do |name, info|

          if name == player_name
            info.select do |tag, number|

              if tag == :points
              puts  number
              end

            end

          end

        end

      end

     end

  end
end


# game_hash.each do |team_location, team_data|
#
#   team_data.each do |attribute, data|
#
#     if attribute == :players
#       data.each do |name, info|
#
#         if name == "Jeff Adrien"
#           info.each do |tag, number|
#
#             if tag == :points
#             p  number
#             end
#
#           end
#
#         end
#
#       end
#
#     end
#
#    end
#
# end

# game_hash.each do |team_location, team_data|
#   team_data.each do |attribute, detail|
#     if detail.is_a?(Hash)
#       detail.each do |one, two|
#         if one == "Ben Gordon"
#           p two
#         end
#       end
#     end
#   end
# end
#
# game_hash.each do |team_location, team_data|
#   team_data.each do |attribute, data|
#      if data.is_a?(Hash)
#        data.each do |name, info|
#          if name == "Ben Gordon"
#            info.each do |title, digits|
#              if title == :points
#                p digits
#              end
#            end
#          end
#        end
#      end
#   end
# end
