class Practice
  def initialize
    @tasks = ''
    start()
  end
  
  def start
    practice_task
    total = how_many_minutes
    puts "You are practicing #{@tasks}"
    puts "Starting..."
    started = start_time
    loop do 
      puts "Press 2 to end."
      action = gets.chomp
      case action
      when "2"
        ended = end_time
        total_practice_time(started, ended, total)
        exit(0)
      end
    end
  end
  
  def practice_task
    puts "What task do you want to practice?"
    task = gets.chomp
    @tasks = task
  end
  
  def how_many_minutes
    puts "How many minutes do you want to practice for?"
    gets.chomp.to_i
  end
  
  def start_time
    Time.now
  end
  
  def end_time
    Time.now
  end
  
  def total_practice_time(start, ending_time, total)
    puts "You practiced for: #{((ending_time - start) / 60.0).floor } minutes."
    puts "You wanted to practice for #{total} minutes"
    puts "You completed #{(((ending_time - start) / 60) / total.to_f) * 100 } Percent of your total."
  end
end
practice = Practice.new


