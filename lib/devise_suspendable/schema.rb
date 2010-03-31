Devise::Schema.class_eval do

    # Creates suspended_at and suspension_reason
    def suspendable
      apply_schema :suspended_at,      Time,   :null => true
      apply_schema :suspension_reason, String, :null => true
    end

end