class DashboardsController < ApplicationController

def profile
  @meubles = current_user.meubles
  @locations = current_user.locations
  @booked_meubles = current_user.booked_meubles
end

end
