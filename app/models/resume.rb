class Resume < ApplicationRecord
    belongs_to :user
    has_one :job_type
end
