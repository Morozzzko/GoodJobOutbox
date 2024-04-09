class GoodQuotesController < ApplicationController
  before_action :set_good_quote, only: %i[ show edit update destroy ]

  # GET /good_quotes or /good_quotes.json
  def index
    @good_quotes = GoodQuote.all
  end

  # GET /good_quotes/1 or /good_quotes/1.json
  def show
  end

  # GET /good_quotes/new
  def new
    @good_quote = GoodQuote.new
  end

  # GET /good_quotes/1/edit
  def edit
  end

  # POST /good_quotes or /good_quotes.json
  def create
    @good_quote = GoodQuote.new(good_quote_params)

    respond_to do |format|
      if @good_quote.save
        format.html { redirect_to good_quote_url(@good_quote), notice: "Good quote was successfully created." }
        format.json { render :show, status: :created, location: @good_quote }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @good_quote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /good_quotes/1 or /good_quotes/1.json
  def update
    respond_to do |format|
      if @good_quote.update(good_quote_params)
        format.html { redirect_to good_quote_url(@good_quote), notice: "Good quote was successfully updated." }
        format.json { render :show, status: :ok, location: @good_quote }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @good_quote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /good_quotes/1 or /good_quotes/1.json
  def destroy
    @good_quote.destroy!

    respond_to do |format|
      format.html { redirect_to good_quotes_url, notice: "Good quote was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_good_quote
      @good_quote = GoodQuote.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def good_quote_params
      params.require(:good_quote).permit(:text)
    end
end
