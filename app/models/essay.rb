class Essay < ActiveRecord::Base
  state_machine initial: :drafted do
    transition drafted: :published, on: :publish
  end
end
