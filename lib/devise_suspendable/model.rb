module Devise
  module Models
    # Suspendable Module, responsible for manual deactivation of a user account.
    #
    # Examples:
    #
    #    User.find(1).suspend!('Left the company')
    #
    module Suspendable

      def suspended?
        self.suspended_at?
      end

      def suspend!(reason = nil)
        return if
      end

      def unsuspend!

      end
    end
  end
end
