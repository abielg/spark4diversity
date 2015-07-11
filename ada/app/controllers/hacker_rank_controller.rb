class HackerRankController < ApplicationController
  def index
  end

  def submit_code(source, test_cases)
    client = HackerRankClient.new
    response = client.submit_code(source, test_cases)

    respond_to do |format|
      format.json { response }
    end
  end
end
