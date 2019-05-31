class Player
  def initialize
    index = ["数字を入力してください。", "0:グー", "1:チョキ", "2:パー"]
    index.each do |content|
      puts content
    end
  end

  def hand
    @ph = gets.to_i
  end
end

class Enemy
  def hand
  @eh = rand(3)
  end
end

class Janken
  def pon(player_hand, enemy_hand)

    @ph = player_hand
    @eh = enemy_hand
    puts @ph
    puts @eh
    
    @judge = ( @ph - @eh + 3 )%3
    puts @judge
    if @judge == 1
      puts "playerの負け、enemyの勝ち"
    elsif @judge == 2
      puts "playerの勝ち、enemyの負け"
    else
      puts "あいこです。数字を入力してください。"
      player = Player.new
      enemy = Enemy.new
      janken = Janken.new
      janken.pon(player.hand, enemy.hand)

    end

  end
end

player = Player.new
enemy = Enemy.new
janken = Janken.new

janken.pon(player.hand, enemy.hand)

