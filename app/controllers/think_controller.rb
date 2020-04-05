class ThingsController < ApplicationController
    def show
        respond_to do |format|
          format.html
          format.pdf do
            render pdf:                            'file_name',
                   disposition:                    'attachment',                 # default 'inline'
                   template:                       'things/show',
                   file:                           "#{Rails.root}/files/foo.erb",
                   inline:                         '<!doctype html><html><head></head><body>INLINE HTML</body></html>',
                   layout:                         'pdf',                        # for a pdf.pdf.erb file
                   wkhtmltopdf:                    '/usr/local/bin/wkhtmltopdf', # path to binary
                   show_as_html:                   params.key?('debug'),         # allow debugging based on url param
                   orientation:                    'Landscape',                  # default Portrait
                   page_size:                      'A4, Letter, ...',            # default A4
                   page_height:                    NUMBER,
                   page_width:                     NUMBER,
                   save_to_file:                   Rails.root.join('pdfs', "#{filename}.pdf"),
                   save_only:                      false,                        # depends on :save_to_file being set first
                   default_protocol:               'http',
                   proxy:                          'TEXT',
                   basic_auth:                     false                         # when true username & password are automatically sent from session
                   username:                       'TEXT',
                   password:                       'TEXT',
                   title:                          'Alternate Title',            # otherwise first page title is used
                   cover:                          'URL, Pathname, or raw HTML string',
                   dpi:                            'dpi',
                   encoding:                       'TEXT',
                   user_style_sheet:               'URL',
                   cookie:                         ['_session_id SESSION_ID'], # could be an array or a single string in a 'name value' format
                   post:                           ['query QUERY_PARAM'],      # could be an array or a single string in a 'name value' format
                   redirect_delay:                 NUMBER,
                   javascript_delay:               NUMBER,
                   window_status:                  'TEXT',                     # wait to render until some JS sets window.status to the given string
                   image_quality:                  NUMBER,
                   no_pdf_compression:             true,
                   zoom:                           FLOAT,
                   page_offset:                    NUMBER,
                   book:                           true,
                   default_header:                 true,
                   disable_javascript:             false,
                   grayscale:                      true,
                   lowquality:                     true,
                   enable_plugins:                 true,
                   disable_internal_links:         true,
                   disable_external_links:         true,
                   print_media_type:               true,
                   disable_smart_shrinking:        true,
                   use_xserver:                    true,
                   background:                     false,                     # background needs to be true to enable background colors to render
                   no_background:                  true,
                   viewport_size:                  'TEXT',                    # available only with use_xserver or patched QT
                   extra:                          '',                        # directly inserted into the command to wkhtmltopdf
                   raise_on_all_errors:            nil,                       # raise error for any stderr output.  Such as missing media, image assets
                   log_level:                      'info',                    # Available values: none, error, warn, or info - only available with wkhtmltopdf 0.12.5+
                   quiet:                          false,                     # `false` is same as `log_level: 'info'`, `true` is same as `log_level: 'none'`
                   outline: {   outline:           true,
                                outline_depth:     LEVEL },
                   margin:  {   top:               SIZE,                     # default 10 (mm)
                                bottom:            SIZE,
                                left:              SIZE,
                                right:             SIZE },
                   header:  {   html: {            template: 'users/header',          # use :template OR :url
                                                   layout:   'pdf_plain',             # optional, use 'pdf_plain' for a pdf_plain.html.pdf.erb file, defaults to main layout
                                                   url:      'www.example.com',
                                                   locals:   { foo: @bar }},
                                center:            'TEXT',
                                font_name:         'NAME',
                                font_size:         SIZE,
                                left:              'TEXT',
                                right:             'TEXT',
                                spacing:           REAL,
                                line:              true,
                                content:           'HTML CONTENT ALREADY RENDERED'}, # optionally you can pass plain html already rendered (useful if using pdf_from_string)
                   footer:  {   html: {   template:'shared/footer',         # use :template OR :url
                                          layout:  'pdf_plain.html',        # optional, use 'pdf_plain' for a pdf_plain.html.pdf.erb file, defaults to main layout
                                          url:     'www.example.com',
                                          locals:  { foo: @bar }},
                                center:            'TEXT',
                                font_name:         'NAME',
                                font_size:         SIZE,
                                left:              'TEXT',
                                right:             'TEXT',
                                spacing:           REAL,
                                line:              true,
                                content:           'HTML CONTENT ALREADY RENDERED'}, # optionally you can pass plain html already rendered (useful if using pdf_from_string)
                   toc:     {   font_name:         "NAME",
                                depth:             LEVEL,
                                header_text:       "TEXT",
                                header_fs:         SIZE,
                                text_size_shrink:  0.8,
                                l1_font_size:      SIZE,
                                l2_font_size:      SIZE,
                                l3_font_size:      SIZE,
                                l4_font_size:      SIZE,
                                l5_font_size:      SIZE,
                                l6_font_size:      SIZE,
                                l7_font_size:      SIZE,
                                level_indentation: NUM,
                                l1_indentation:    NUM,
                                l2_indentation:    NUM,
                                l3_indentation:    NUM,
                                l4_indentation:    NUM,
                                l5_indentation:    NUM,
                                l6_indentation:    NUM,
                                l7_indentation:    NUM,
                                no_dots:           true,
                                disable_dotted_lines:  true,
                                disable_links:     true,
                                disable_toc_links: true,
                                disable_back_links:true,
                                xsl_style_sheet:   'file.xsl'}, # optional XSLT stylesheet to use for styling table of contents
                   progress: proc { |output| puts output } # proc called when console output changes
          end
        end
      end
    end