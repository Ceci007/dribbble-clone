class Shot < ApplicationRecord
  belongs_to :user
  mount_uploader :user_shot, UserShotUploader
end
