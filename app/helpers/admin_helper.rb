module AdminHelper
  def flash_class_for_name(level)
    case level.to_sym
    when :success then
      'alert alert-success'
    when :error then
      'alert alert-danger'
    when :alert then
      'alert alert-warning'
    else
      'alert alert-info'
    end
  end
end