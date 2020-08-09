# frozen_string_literal: true

module Blacklight
  module Response
    class PaginationComponent < ::ViewComponent::Base
      def initialize(response:, html: {}, **pagination_args)
        @response = response
        @html_attr = { aria: { label: t('views.pagination.aria.container_label') } }.merge(html)
        @pagination_args = { outer_window: 2, theme: 'blacklight' }.merge(pagination_args)
      end

      def pagination
        @view_context.paginate @response, **@pagination_args
      end
    end
  end
end
