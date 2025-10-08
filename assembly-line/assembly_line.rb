class AssemblyLine

  CARS_PER_HOUR=221
  MINUTES_PER_HOUR = 60

  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    CARS_PER_HOUR * @speed * efficiency
  end

  def efficiency
    case @speed
    when 1..4 then 1
    when 5..8 then 0.9
    when 9 then 0.8
    else 0.77
    end
  end

  def working_items_per_minute
    (production_rate_per_hour / MINUTES_PER_HOUR).floor
  end
end
