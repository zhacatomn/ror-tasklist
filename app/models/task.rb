class Task < ApplicationRecord
    validates :title, presence: true
    validates :desc, presence: true

    def done?
        is_done
    end
end
