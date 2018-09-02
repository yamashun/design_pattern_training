require 'singleton'

class NightState < State
  include Singleton

  def do_clock(context, hour)
    if 9 <= hour || hour < 17
      context.change_state(DayState.instance)
    end
  end

  def do_use(context)
    context.record_log('非常：夜間の金庫使用！')
  end

  def do_alarm(context)
    context.call_security_center('非常ベル(夜間)')
  end

  def do_phone(context)
    context.call_security_center('夜間の通話記録')
  end
  
end