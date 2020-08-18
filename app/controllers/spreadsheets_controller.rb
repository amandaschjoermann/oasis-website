class SpreadsheetsController < ApplicationController
  def index
    @homemade_sheets, @external_sheets = Spreadsheet.all.group_by(&:channel).values
  end
end
