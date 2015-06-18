module Essays
  class Create < Interactor::Base
    def call(essay_params)
      essay = Essay.create!(essay_params)

      context.created_successfully(essay)
    end
  end
end
