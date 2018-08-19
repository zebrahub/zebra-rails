# == Schema Information
#
# Table name: queries
#
#  id           :bigint(8)        not null, primary key
#  description  :text
#  query_string :text
#  title        :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  user_id      :bigint(8)
#
# Indexes
#
#  index_queries_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#

require 'rails_helper'

RSpec.describe Query, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
