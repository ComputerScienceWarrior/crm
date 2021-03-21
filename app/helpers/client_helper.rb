module ClientHelper
    def admin_client_functions
        if current_user.is_admin?
            content_tag(:a, "Delete Client Account", href: client_path(@client), method: "delete", data: {confirm: "Are you sure you want to remove #{@client.name} client account??"})
        else
            content_tag(:p, "Normal User Account")
        end
    end
end
