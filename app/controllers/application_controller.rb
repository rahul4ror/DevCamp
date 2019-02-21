class ApplicationController < ActionController::Base

  include DeviseWhitelist
  include UserConcern

end
