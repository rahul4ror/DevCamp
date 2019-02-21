module UserConcern
  extend ActiveSupport::Concern

  included do
    before_action :current_user
  end

  def current_user
    super || guest_user
  end

  def guest_user
    OpenStruct.new(email: "Rahul", name: "Rahul Srivastava", first_name: "Rahul", last_name: "Srivastava")
  end
end