# https://github.com/edwardoriordan/sass-utilities
module Sass::Script::Functions

  # Exists
  def variable_exists(variable_name)
    if(environment.var(variable_name.value))
      Sass::Script::Bool.new(true)
    else
      Sass::Script::Bool.new(false)
    end
  end

  # Interpolate
  def interpolate_variable(variable_name)
    environment.var(variable_name.value) || Sass::Script::Bool.new(false)
  end

end
