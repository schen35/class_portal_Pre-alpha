class SuperadminsController < UsersController
  before_action :authenticate_user!

end
