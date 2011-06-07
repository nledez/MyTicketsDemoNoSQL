# Load the rails application
require File.expand_path('../application', __FILE__)

module I18n
  module Backend
    class KeyValue
      module Implementation
        def store_translations(locale, data, options = {})
          escape = options.fetch(:escape, true)
          flatten_translations(locale, data, escape, @subtrees).each do |key, value|
            key = "#{locale}.#{key}"

            case value
            when Hash
              if @subtrees && (old_value = @store[key])
                old_value = ActiveSupport::JSON.decode(old_value)
                value = old_value.deep_symbolize_keys.deep_merge!(value) if old_value.is_a?(Hash)
              end
            when Proc
              raise "Key-value stores cannot handle procs"
            end

            #@store[key] = ActiveSupport::JSON.encode(value) unless value.is_a?(Symbol)
            @store[key] = ActiveSupport::JSON.encode([value]) unless value.is_a?(Symbol)
          end
        end

      protected

        def lookup(locale, key, scope = [], options = {})
          key   = normalize_flat_keys(locale, key, scope, options[:separator])
          value = @store["#{locale}.#{key}"]
          #value = ActiveSupport::JSON.decode(value) if value
          value = ActiveSupport::JSON.decode(value)[0] if value
          value.is_a?(Hash) ? value.deep_symbolize_keys : value
        end
      end
    end
  end
end

# Initialize the rails application
Tickets::Application.initialize!
