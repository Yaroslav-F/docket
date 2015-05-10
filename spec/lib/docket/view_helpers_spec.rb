require 'rails_helper'

describe 'ViewHelpers' do
  subject { Class.new { extend Docket::ViewHelpers } }

  describe '#docket' do
    context 'called with a collection' do
      let(:basic_array) { [:foo, :bar, :baz] }
      let(:render_opts) do
        { partial: 'partials/collection_as_table',
          collection: basic_array,
          as: :item,
          locals: {
            ignore: [],
            calls: [],
            table_class: '',
            table_style: '',
            table_id: '',
            size: basic_array.size }
        }
      end

      it 'renders the collection_as_table partial when passed an iterable array' do
        expect(subject).to receive(:render).with(render_opts)
        subject.docket(basic_array)
      end

      it 'can be called with the :ignore option' do
        render_opts[:locals][:ignore] = [:this, :that]
        expect(subject).to receive(:render).with(render_opts)
        subject.docket(basic_array, ignore: [:this, :that])
      end

      it 'can be called with the :calls option' do
        render_opts[:locals][:calls] = [:this, :that]
        expect(subject).to receive(:render).with(render_opts)
        subject.docket(basic_array, calls: [:this, :that])
      end

      it 'can be called with the :table_class option' do
        render_opts[:locals][:table_class] = :foobar
        expect(subject).to receive(:render).with(render_opts)
        subject.docket(basic_array, table_class: :foobar)
      end

      it 'can be called with the :table_style option' do
        render_opts[:locals][:table_style] = :foobar
        expect(subject).to receive(:render).with(render_opts)
        subject.docket(basic_array, table_style: :foobar)
      end

      it 'can be called with the :table_id option' do
        render_opts[:locals][:table_id] = :foobar
        expect(subject).to receive(:render).with(render_opts)
        subject.docket(basic_array, table_id: :foobar)
      end
    end

    context 'called with an object' do
      let(:basic_object) { Object.new }
      let(:render_opts) do
        { partial: 'partials/object_as_table',
          locals: {
            object: basic_object,
            ignore: [],
            calls: [],
            table_class: '',
            table_style: '',
            table_id: ''
          }
        }
      end

      it 'renders the object_as_table partial when called with an object' do
        expect(subject).to receive(:render).with(render_opts)
        subject.docket(basic_object)
      end

      it 'can be called with the :ignore option' do
        render_opts[:locals][:ignore] = [:this, :that]
        expect(subject).to receive(:render).with(render_opts)
        subject.docket(basic_object, ignore: [:this, :that])
      end

      it 'can be called with the :calls option' do
        render_opts[:locals][:calls] = [:this, :that]
        expect(subject).to receive(:render).with(render_opts)
        subject.docket(basic_object, calls: [:this, :that])
      end

      it 'can be called with the :table_class option' do
        render_opts[:locals][:table_class] = :foobar
        expect(subject).to receive(:render).with(render_opts)
        subject.docket(basic_object, table_class: :foobar)
      end

      it 'can be called with the :table_style option' do
        render_opts[:locals][:table_style] = :foobar
        expect(subject).to receive(:render).with(render_opts)
        subject.docket(basic_object, table_style: :foobar)
      end

      it 'can be called with the :table_id option' do
        render_opts[:locals][:table_id] = :foobar
        expect(subject).to receive(:render).with(render_opts)
        subject.docket(basic_object, table_id: :foobar)
      end
    end
  end
end
