class ApplicationController < ActionController::API
  include ActionController::Serialization

  #make root node false, globally
  # def default_serializer_options
  #   {root: false}
  # end

end
