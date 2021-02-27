module SetPageTitle
    extend ActiveSupport::Concern

    before_action :set_page_title

    def set_page_title
        @page_title = "Swift Solutions CRM"
    end
end