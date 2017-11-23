class ItemsController < ApplicationController

  def show
      openBD_uri = URI.parse('https://api.openbd.jp/v1/get?isbn=' + params[:id])
      openBD_json = Net::HTTP.get(openBD_uri)
      openBD_result = JSON.parse(openBD_json).to_a
      data = openBD_result[0]

      @item = Item.new(isbn: data["summary"]["isbn"],
                          name: data["summary"]["title"],
                          image: data["summary"]["cover"],
                          author: data["summary"]["author"],
                          publisher: data["summary"]["publisher"],
                          release_date: data["summary"]["pubdate"])
  end

  def search
    require 'net/http'
    require 'uri'
    require 'json'

# GoogleBooksApiから入力されたkeywordに基づいてisbn番号を取得
    if params[:keyword].present?
      input = URI.encode_www_form({q: params[:keyword]})

      uri = URI.parse('https://www.googleapis.com/books/v1/volumes?' + input)
      json = Net::HTTP.get(uri)
      result = JSON.parse(json).to_a
      isbn_tmp_list = []
      isbn_list = []

# result[2][1]に各アイテムの情報が並んでいるのでそれに対して処理
      result[2][1].each_with_index do |item, i|
        if result[2][1][i]["volumeInfo"]["industryIdentifiers"]
          if result[2][1][i]["volumeInfo"]["industryIdentifiers"].length == 1 || result[2][1][i]["volumeInfo"]["industryIdentifiers"].length == 2

            isbn_tmp_list << result[2][1][i]["volumeInfo"]["industryIdentifiers"]
          end
        end
      end

      isbn_tmp_list.each do |row|
        i = 0
        row.each do |item|
          if item["identifier"].match(/^\d{10}$/) || item["identifier"].match(/^\d{13}$/)
            isbn_list << item["identifier"]
            i = i + 1
           if i = 1 then
              break
            end
          end
        end
      end

      @isbn_list = isbn_list.uniq.map(&:to_i)

# GoogleBooksAPIでとってきたISBNをOpenBDAPIに投げる
      openBD_uri = URI.parse('https://api.openbd.jp/v1/get?isbn=' +"#{ @isbn_list}")
      openBD_json = Net::HTTP.get(openBD_uri)
      openBD_result = JSON.parse(openBD_json).to_a

      @openBD_result = openBD_result
      @search_results = []

      @openBD_result.each_with_index do |data, i|
        if data.present?
          item = Item.new(isbn: data["summary"]["isbn"],
                          name: data["summary"]["title"],
                          image: data["summary"]["cover"],
                          author: data["summary"]["author"],
                          publisher: data["summary"]["publisher"],
                          release_date: data["summary"]["pubdate"])
          @search_results << item
        end
      end
    end

  end

end
