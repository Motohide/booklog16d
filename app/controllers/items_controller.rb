class ItemsController < ApplicationController

  def show
  end

  def search
    require 'net/http'
    require 'uri'
    require 'json'

    if params[:keyword].present?
      uri = URI.parse('https://www.googleapis.com/books/v1/volumes?q=' + "#{params[:keyword]}")
      json = Net::HTTP.get(uri)
      result = JSON.parse(json)

      result = result.to_a
      isbn_tmp_list = []
      isbn_list = []

      result[2][1].each_with_index do |item, i|
        if result[2][1][i]["volumeInfo"]["industryIdentifiers"][0]["type"] == "ISBN_13" ||
        (result[2][1][i]["volumeInfo"]["industryIdentifiers"].length == 2 && result[2][1][i]["volumeInfo"]["industryIdentifiers"][1]["type"] == "ISBN_13")

          isbn_tmp_list << result[2][1][i]["volumeInfo"]["industryIdentifiers"]
        end
      end


      isbn_tmp_list.each do |row|
        row.each do |item|
          if item["identifier"].length == 13
            isbn_list << item["identifier"]
          end
        end
      end


      @isbn_list = isbn_list
    end
  end

end
