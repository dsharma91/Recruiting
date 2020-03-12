# == Schema Information
#
# Table name: contacts
#
#  id                 :integer          not null, primary key
#  category           :string
#  comments           :string
#  company            :string
#  contact_input_date :date
#  contact_name       :string
#  email_address      :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  user_id            :integer
#

class Contact < ApplicationRecord
belongs_to :user
# validates :category, :inclusion => { :in => [ 'venture capital', 'private equity', 'start up', 'corporate', 'other' ] }
end
