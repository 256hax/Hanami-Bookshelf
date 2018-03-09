require 'hanami/interactor'

module Books
  class IndexBooks
    include Hanami::Interactor

    expose :list

    def initialize(repository: BookRepository.new)
      @repository = repository
    end

    def call
      @list = @repository.all
		end
  end
end
