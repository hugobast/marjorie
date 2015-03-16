class Essay
  class Update < Interactor::Base
    def call(essay, essay_params)
      if essay.update_attributes(essay_params)
        context.updated_successfully
      else
        context.update_failed
      end
    end
  end
end