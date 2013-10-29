module Ckeditor
  module Helpers
    module FormHelper
      extend ActiveSupport::Concern

      include ActionView::Helpers::TagHelper
      include ActionView::Helpers::JavaScriptHelper

      def cktext_area(object_name, method, options = {})
        TextArea.new(self, options).render_instance_tag(object_name, method)
      end
    end
  end
end
