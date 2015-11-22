class ItemsController < ApplicationController

  # アイテムデータを全件取得(get '/items'  => 'items#index')
  def index
    @items = Item.all
  end

  # アイテムデータの新規登録フォーム表示(get '/items/new' => 'items#new')
  def new
    @item = Item.new
  end

  # アイテムデータの新規登録実行(post '/items'  => 'items#create')
  def create
    @item = Item.new(item_params)
    @item.save
    redirect_to "/items/#{@item.id}"
  end

  # params.require(key).permit(filter)
  # key
  #   Strong Parameters を適用したい params の key を指定する。
  # filter
  #   Strong Parameters で許可するカラムを指定する。
  def item_params
    params.require(:item).permit(:name, :price, :seller_id, :description, :email, :image_url)
  end

  # パラメータに該当するデータをDBから検索する(get '/items/:id' => 'items#show')
  # コーディング上、モデル名は大文字始まりでインスタンス変数は小文字始まり
  def show
    @item = Item.find(params[:id])
  end

end
