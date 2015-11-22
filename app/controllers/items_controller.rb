class ItemsController < ApplicationController

def show
  # パラメータに該当するデータをDBから検索する
  # （Itemモデルに付属する関数？）
  @item = Item.find(params[:id])
end

end
