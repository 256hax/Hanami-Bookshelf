module Web::Controllers::Books
  class Index
    include Web::Action

    expose :books

    def call(params)
      #@books = BookRepository.new.all
			@books = Books::IndexBooks.new.call # call interactor
    end
  end
end
