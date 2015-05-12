module Docket
  module ViewHelpers
    # Helper for rendering an iterable collection or basic object as an HTML table.
    #
    # @param object [Object] an object or iterable collection of objects to render as an HTML table.
    # @param [Hash] opts optional params for ignoring object attributes, calling object methods and customing the rendered table.
    # @option opts [Array] :ignore ([]) list of object attributes which will not be rendered within the table.
    # @option opts [Array] :calls ([]) list of methods to call against the object.
    # @option opts [String] :table_class ('') The class attribute to use for the table.
    # @option opts [String] :table_style ('') The style attribute to use for the table.
    # @option opts [String] :table_id ('') The id attribute to use for the table.
    # @return [String] the rendered HTML table for the collection or object.
    def docket(object, opts = {})
      partial_locals = {
        ignore: opts[:ignore] || [],
        calls: opts[:calls] || [],
        table_class: opts[:table_class] || '',
        table_style: opts[:table_style] || '',
        table_id: opts[:table_id] || ''
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
