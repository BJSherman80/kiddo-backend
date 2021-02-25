class User < ApplicationRecord
  has_many :missions
  validates :email, presence: true, uniqueness: true
  validates :name, presence: true

  def invite
    SendNewUserInvitationJob.perform_later(id)
  end
end
