class CataloguesController < ApplicationController
  # GET /catalogues
  # GET /catalogues.json
  def search
    @title = params[:search]
    @book = Book.get_book(params[:search])
  end

  def book_it
    # @book = Book.find(params[:id])
    # book.save
  end

  def read_it
    # @book = Book.find(params[:id])
    # book.save
  end

  def own_it
    # @book = Book.find(params[:id])
    # book.save
  end





















  def index
    @catalogues = Catalogue.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @catalogues }
    end
  end

  # GET /catalogues/1
  # GET /catalogues/1.json
  def show
    @catalogue = Catalogue.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @catalogue }
    end
  end

  # GET /catalogues/new
  # GET /catalogues/new.json
  def new
    @catalogue = Catalogue.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @catalogue }
    end
  end

  # GET /catalogues/1/edit
  def edit
    @catalogue = Catalogue.find(params[:id])
  end

  # POST /catalogues
  # POST /catalogues.json
  def create
    @catalogue = Catalogue.new(params[:catalogue])

    respond_to do |format|
      if @catalogue.save
        format.html { redirect_to @catalogue, notice: 'Catalogue was successfully created.' }
        format.json { render json: @catalogue, status: :created, location: @catalogue }
      else
        format.html { render action: "new" }
        format.json { render json: @catalogue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /catalogues/1
  # PUT /catalogues/1.json
  def update
    @catalogue = Catalogue.find(params[:id])

    respond_to do |format|
      if @catalogue.update_attributes(params[:catalogue])
        format.html { redirect_to @catalogue, notice: 'Catalogue was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @catalogue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /catalogues/1
  # DELETE /catalogues/1.json
  def destroy
    @catalogue = Catalogue.find(params[:id])
    @catalogue.destroy

    respond_to do |format|
      format.html { redirect_to catalogues_url }
      format.json { head :no_content }
    end
  end
end
