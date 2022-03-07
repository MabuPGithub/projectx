class ApplicationController < ActionController::Base
    def after_sign_in_path_for(resource)
        if resource.role == 'admin'
            admins_path
        elsif resource.role == 'member'
            member_path
        elsif resource.role == 'super_admin'
            super_admin_path
        end
    end
end
