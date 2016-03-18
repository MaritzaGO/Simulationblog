class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

require 'carrierwave/orm/activerecord'

  has_many :articles
  has_many :comments

	enum role: [ :author, :moderator, :admin ]
  
  #mount_uploader :avatar, AvatarUploader
  
  before_create :define_role

  def define_role
  	self.role = "author" unless self.role.present?
  end




end
