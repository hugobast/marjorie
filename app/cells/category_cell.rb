class CategoryCell < Cell::ViewModel
  def index
    @categories = Category.all

    render
  end
end