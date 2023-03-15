require 'rails_helper'

RSpec.describe Recipe, type: :model do
  before do
    @recipe = FactoryBot.build(:recipe)
  end

  describe 'レシピ投稿' do
    context 'レシピ投稿ができるとき' do
      it '全ての項目が存在すれば投稿できる' do
        expect(@recipe).to be_valid
      end
      it 'メモが空でも投稿できる' do
        @recipe.memo = ''
        expect(@recipe).to be_valid
      end
    end
    context 'レシピ投稿ができないとき' do
      it 'タイトルが空の場合は投稿できない' do
        @recipe.title = ''
        @recipe.valid?
        expect(@recipe.errors.full_messages).to include('タイトルを入力してください')
      end
      it 'カテゴリーが選択されていない場合は投稿できない' do
        @recipe.category_id = 0
        @recipe.valid?
        expect(@recipe.errors.full_messages).to include('カテゴリーを選択してください')
      end
      it '写真が空の場合は投稿できない' do
        @recipe.image = nil
        @recipe.valid?
        expect(@recipe.errors.full_messages).to include('写真を入力してください')
      end
      it 'メインコピーが空の場合は投稿できない' do
        @recipe.headline = ''
        @recipe.valid?
        expect(@recipe.errors.full_messages).to include('メインコピーを入力してください')
      end
      it '材料が空の場合は投稿できない' do
        @recipe.ingredient = ''
        @recipe.valid?
        expect(@recipe.errors.full_messages).to include('材料を入力してください')
      end
      it '作り方が空の場合は投稿できない' do
        @recipe.direction = ''
        @recipe.valid?
        expect(@recipe.errors.full_messages).to include('作り方を入力してください')
      end
    end
  end
end
