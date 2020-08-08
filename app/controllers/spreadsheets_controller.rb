class SpreadsheetsController < ApplicationController
  def index
    @spreadsheets = Spreadsheet.all
  end
end
