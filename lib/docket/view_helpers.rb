module Docket
  module ViewHelpers
    def docket(object, opts = {})
      partial_locals = {
        ignore: opts[:ignore] || [],
        calls: opts[:calls] || [],
        table_class: opts[:table_class] || '',
        table_style: opts[:table_class] || '',
        table_id: opts[:table_class] || ''
      }

      if object.respond_to?(:each)
        partial_locals[:size] = object.count
        return render partial: 'partials/collection_as_table', collection: object, as: :item, locals: partial_locals
      else
        partial_locals[:object] = object
        return render partial: 'partials/object_as_table', locals: partial_locals
      end
    end
  end
end
