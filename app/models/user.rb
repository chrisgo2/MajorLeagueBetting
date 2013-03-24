# == Schema Information
#
# Table name: users
#
#  id                  :integer         not null, primary key
#  name                :string(255)
#  username            :string(255)
#  email               :string(255)
#  encrypted_password  :string(255)
#  salt                :string(255)
#  money               :integer
#  created_at          :datetime
#  updated_at          :datetime
#  avatar_file_name    :string(255)
#  avatar_content_type :string(255)
#  avatar_file_size    :integer
#  avatar_updated_at   :datetime
#

class User < ActiveRecord::Base
  attr_accessor    :password
  attr_accessible :name, :email, :username, :avatar
  attr_readonly    :password, :password_confirmation
    
  has_attached_file       :avatar, :styles => { :medium => "200x200>", :thumb => "100x100>", :header => "37x37" }
  has_and_belongs_to_many :user_achievements  	 
  has_many                :bets

  after_initialize :init
  before_save :encrypt_password

  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :name, :presence => true,
                   :length => { :maximum => 50}
  validates :username, :presence => true,
                       :length => { :maximum => 20},
                       :uniqueness => { :case_sensitive => false }
  validates :email,    :presence => true,
                       :format => { :with => email_regex },
                       :uniqueness => { :case_sensitive => false }
  validates :password, :presence        => true,
                                     :confirmation  => true,
                                    :length             => { :within => 6..50 },
                                    :if                     => :password
  validates :money,    :presence => true, :numericality => { :greater_than => 0 }                       

  def init
    self.money ||= 1000
  end

  def has_password?(submitted_password)
    encrypted_password == encrypt(submitted_password)
  end

  def self.authenticate(username, submitted_password)
    user = find_by_username(username)
    return (user && user.has_password?(submitted_password)) ? user : nil;
  end

  def self.authenticate_with_salt(id, cookie_salt)
    user = find_by_id(id)
    (user && user.salt == cookie_salt) ? user : nil
  end

  private

    def encrypt_password
      self.salt = make_salt unless has_password?(password)
      self.encrypted_password = encrypt(password)
    end

    def encrypt(string)
      secure_hash("#{salt}--#{string}")
    end

    def make_salt
      secure_hash("#{Time.now.utc}--#{password}")
    end

    def secure_hash(string)
      Digest::SHA2.hexdigest(string)
    end
end

 
