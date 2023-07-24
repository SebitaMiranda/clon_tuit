class ClonTuit < ApplicationRecord
    include PgSearch::Model

    pg_search_scope :whose_name_starts_with,
    against: :name,
        using: {
            tsearch: { prefix: true }


    }

end
