require 'colorize'

class Dragon
  attr_reader :name, :age, :colour

  def initialize(name)
    @name = name
    @age = 0
    @colour = colour

    @hunger_level = 0 #0-10, 10 being hungry, 0 being full
    @tiredness_level = 5 #0-10, 10 being tired, 0 being energetic
    @happiness_level = 10 #0-10, 10 being happy, 0 being sad
  end

# If hunger level is < 2
# happiness_level puts "I'm a sad dragon :(!"
# If hunger > 8
# puts thanks for making me happy!
# run gift code
# Do for Take on a Walk, Play, Feed, Sleep

  def what_colour
    # Got to generate color private method
    generate_color
    puts "==YOUR BABY DRAGON IS BORN AND IS " + generate_color.upcase + "!!!!!!=="
    egg = "
       .--.
     .'     '.
    /         \
   :           ;
   |           |
   :           :
    \         /
     `.     .'
       `~~~`
                "
  new_color = @colour.to_sym.downcase
  print egg.colorize(new_color)
  #end of Dragon class
  end



  def take_on_walk
    puts "\n#{name} is on a walk"
    increase_tiredness
    increase_hunger
    increase_happiness
    passage_of_time
  end

  def play
    puts "\n#{name} is playing!"
    increase_hunger
    increase_happiness
    passage_of_time
  end

  def feed
    puts "\n#{name} is eating!"
    decrease_hunger
    increase_happiness
    passage_of_time
  end

  def tuck_in_to_bed
    puts "\n#{name} is all snuggled up and sleeping."
    increase_hunger(6)
    decrease_tiredness
    decrease_happiness
    passage_of_time
  end

  private

  def passage_of_time

    if tired?
      falls_asleep
    end

    if hungry?
      gets_hangry
    end

    if needs_to_to_to_the_bathrom?
      has_an_accident
    end

    if happy?
      give_gift
    end
  end

  def tired?
    return @tiredness_level == 10
  end

  def hungry?
    return @hunger_level == 10
  end

  def happy?
    return @happiness_level == 10
  end

  def needs_to_to_to_the_bathrom?
    return @hunger_level == 0
  end

  def increase_tiredness(level=2)
    if @tiredness_level > (10 - level)
      @tiredness_level = 10
    else
      @tiredness_level += level
    end
  end

  def decrease_tiredness
    if @tiredness_level < 5
      @tiredness_level = 0
    else
      @tiredness_level -= 5
    end
  end

  def increase_hunger(level=5)
    if @hunger_level > (10 - level)
      @hunger_level = 10
    else
      @hunger_level += level
    end
  end

  def decrease_hunger
    if @hunger_level < 3
      @hunger_level = 0
    else
      @hunger_level -= 7
    end
  end
######
  def increase_happiness
    if @happiness_level > 10
      @happiness_level = 10
    else
      @happiness_level += 2
    end
  end
######
  def decrease_happiness
    if @happiness_level < 0
      @happiness_level = 0
      start_crying
    else
      @happiness_level -= 2
      start_crying
    end
  end
######
  def give_gift
    case @colour
    when "Yellow"
      puts "\n*****Thank you for making me happy!*****\n****Puff gave you a treasure chest!****\n\n"
      barney_1 = "




                            _.--.
                        _.-'_:-'||
                    _.-'_.-::::'||
               _.-:'_.-::::::'  ||
             .'`-.-:::::::'     ||
            /.'`;|:::::::'      ||_
           ||   ||::::::'     _.;._'-._
           ||   ||:::::'  _.-!oo @.!-._'-.
           \'.  ||:::::.-!()oo @!()@.-'_.|
            '.'-;|:.-'.&$@.& ()$%-'o.'\U||
              `>'-.!@%()@'@_%-'_.-o _.|'||
               ||-._'-.@.-'_.-' _.-o  |'||
               ||=[ '-._.-\U/.-'    o |'||
               || '-.]=|| |'|      o  |'||
               ||      || |'|        _| ';
               ||      || |'|    _.-'_.-'
               |'-._   || |'|_.-'_.-'
                '-._'-.|| |' `_.-'
                    '-.||_/.-'
                    "

    treasure = @colour.to_sym.downcase
    print barney_1.colorize(treasure)

    when "Black"
      puts "\n*****Thank you for making me happy!*****\n****Puff gives you an ice cream cone!****\n\n"
      barney_2 = "

   _
       ,' `,.
       >-.(__)
      (_,-' |
        `.  |
          `.| hjw
            `

"



    fire = @colour.to_sym.downcase
    print barney_2.colorize(fire)

    when "Magenta"
      puts "\n*****Thank you for making me happy!*****\n****Puff gives you lots of hugs!****\n\n"
      barney = "
            __        _
          _/  \    _(\(o
         /     \  /  _  ^^^o
        /   !   \/  ! '!!!v'
        !  !  \ _' ( \____
        ! . \ _!\   \===^\)
          \ \_!  / __!
           \!   /    \
     (\_      _/   _\ )
      \ ^^--^^ __-^ /(__
       ^^----^^     ^--v'
           "
       hugs = @colour.to_sym.downcase
       print barney.colorize(hugs)
    when "Blue"
      puts "\n*****Thank you for making me happy!*****\n****Puff gives you a mountain of cakes for you two to share!****\n\n"
      barney_4 = "             ,   ,   ,   ,
           , |_,_|_,_|_,_| ,
       _,-=|;  |,  |,  |,  |;=-_
     .-_| , | , | , | , | , |  _-.
     |:  -|:._|___|___|__.|:=-  :|
     ||*:  :    .     .    :  |*||
     || |  | *  |  *  |  * |  | ||
 _.-=|:*|  |    |     |    |  |*:|=-._
-    `._:  | *  |  *  |  * |  :_.'    -
 =_      -=:.___:_____|___.: =-     _=
    - . _ __ ___  ___  ___ __ _ . -



"
     blue = @colour.to_sym.downcase
     print barney_4.colorize(blue)
    end
  end
######
  def falls_asleep
    puts "\n#{name} fell asleep! ZZZZ!"
    @tiredness_level -= 5
  end

  def gets_hangry
    puts "\n#{name} is hangry and eats you!"
    @hunger_level = 2
  end

  def has_an_accident
    puts "\nOops! #{name} had an accident"
    increase_hunger
  end

######
  def start_crying
    puts "\nPuff is crying!!!! :("
   barney_4 = "
                                                          ___
                                                        .~))>>
                                                       .~)>>
                                                     .~))))>>>
                                                   .~))>>             ___
                                                 .~))>>)))>>      .-~))>>
                                               .~)))))>>       .-~))>>)>
                                             .~)))>>))))>>  .-~)>>)>
                         )                 .~))>>))))>>  .-~)))))>>)>
                      ( )@@*)             //)>))))))  .-~))))>>)>
                    ).@(@@               //))>>))) .-~))>>)))))>>)>
                  (( @.@).              //))))) .-~)>>)))))>>)>
                ))  )@@*.@@ )          //)>))) //))))))>>))))>>)>
             ((  ((@@@.@@             |/))))) //)))))>>)))>>)>
            )) @@*. )@@ )   (\_(\-\b  |))>)) //)))>>)))))))>>)>
          (( @@@(.@(@ .    _/`-`  ~|b |>))) //)>>)))))))>>)>
           )* @@@ )@*     (@) (@)  /\b|))) //))))))>>))))>>
         (( @. )@( @ .   _/       /  \b)) //))>>)))))>>>_._
          )@@ (@@*)@@.  (6,   6) / ^  \b)//))))))>>)))>>   ~~-.
       ( @jgs@@. @@@.*@_ ~^~^~, /\  ^  \b/)>>))))>>      _.     `,
        ((@@ @@@*.(@@ .   \^^^/' (  ^   \b)))>>        .'         `,
         ((@@).*@@ )@ )    `-'   ((   ^  ~)_          /             `,
           (@@. (@@ ).           (((   ^    `\        |               `.
             (*.@*              / ((((        \        \      .         `.
                               /   (((((  \    \    _.-~\     Y,         ;
                              /   / (((((( \    \.-~   _.`'' _.-~`,       ;
                             /   /   `(((((()    )    (((((~      `,     ;
                           _/  _/      `''''/   /'                  ;     ;
                       _.-~_.-~           /  /'                _.-~   _.'
                     ((((~~              / /'              _.-~ __.--~
                                        ((((          __.-~ _.-~
                                                    .'   .~~
                                                    :    ,'
                                                    ~~~~~ "
     blue = @colour.to_sym.downcase
     print barney_4.colorize(blue)
  end
#######
  def generate_color
    all_colours = ["Yellow", "Black", "Magenta","Blue"]
    return @colour = all_colours.sample
  end
end
######





###############################
######## TEST CLASS ###########
##### Create Instances ########
### Run instance methods ######
###############################

#Create a new Dragon
puff = Dragon.new("Puff")  #  @hunger_level = 0, @tiredness_level = 5
# puts puff.name
puff.what_colour
# Day 1
puff.take_on_walk
puff.feed
puff.play
puff.tuck_in_to_bed
# puff.take_on_walk
# puff.tuck_in_to_bed
# puff.play
# puff.feed
# puff.take_on_walk
# # Day 2
# puff.play
# puff.feed
# puff.take_on_walk
# puff.take_on_walk
# puff.tuck_in_to_bed
# puff.take_on_walk
# puff.tuck_in_to_bed
