module UserHelper
    def admin?
        if current_user.is_admin?
            content_tag(:p, "ADMIN ACCOUNT")
        else
            content_tag(:p, "Normal User Account")
        end
    end
end
