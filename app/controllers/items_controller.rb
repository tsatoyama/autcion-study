class ItemsController < ApplicationController

def show
  # パラメータに該当するデータをDBから検索する
  # コーディング上、モデル名は大文字始まりでインスタンス変数は小文字始まり
  @item = Item.find(params[:id])
end

end
