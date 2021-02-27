class ApplicationController < ActionController::Base
    include SetPageTitle
    include CurrentUser
end
