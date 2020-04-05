class V1::BaseController < V1::ApiController
    def index 
        respond_to do |format|
            format.pdf do
                @html  = get_html
                @pdf = WhickedPdf.new.pdf_from_string(@html)
                send_data(@pdf, :filename => 'Test',type: 'application/pdf')
            end
        end
    end

    def get_html
        ActionController::Base.new.render_to_string(template: 'vi/profile/reportes.pdf.erb',
                                                    orientation: 'Landscape',
                                                    page_saze: 'Letter'
                                                    background: true
                                                   )
    end
end