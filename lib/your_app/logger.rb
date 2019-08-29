module YourApp
  class Logger < Ougai::Logger
    include ActiveSupport::LoggerThreadSafeLevel
    include ActiveSupport::LoggerSilence

    def create_formatter
      if Rails.env.development? || Rails.env.test?
        Ougai::Formatters::Readable.new
      else
        Ougai::Formatters::Bunyan.new
      end
    end
  end
end
