module StaticHelper
    def title_header
        if user_signed_in?
            # content_tag(:a, "Home", href: company_path(current_user.company), class: "nav-item")
            content_tag(:h1, current_company.name, id: "h1-header")
        else
            content_tag(:h1, "Swift Solutions CRM", id: "h1-header")
        end
    end
end
