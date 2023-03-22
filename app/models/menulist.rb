class Menulist < ActiveHash::Base
  self.data = [
    { id: 0, name: '中華丼' }, { id: 1, name: 'カレー' }, { id: 2, name: 'シチュー' },
    { id: 3, name: 'ハンバーグ' }, { id: 4, name: 'エビフライ' }, { id: 5, name: 'ステーキ' },
    { id: 6, name: '肉じゃが' }, { id: 7, name: 'ちらし寿司' }, { id: 8, name: 'たまごサンド' },
    { id: 9, name: 'からあげ' }, { id: 10, name: 'しょうが焼き' }, { id: 11, name: 'ラーメン' },
    { id: 12, name: 'ぎょうざ' }, { id: 13, name: '焼きそば' }, { id: 14, name: '焼きうどん' },
    { id: 15, name: '鮭の塩焼き' }, { id: 16, name: '麻婆豆腐' }, { id: 17, name: '刺身定食' },
    { id: 18, name: 'グリーンカレー' }, { id: 19, name: 'おにぎり' }, { id: 20, name: '温野菜' },
    { id: 21, name: 'すき焼き' }, { id: 22, name: 'うなぎの蒲焼' }, { id: 23, name: '牛丼' },
    { id: 24, name: 'カツ丼' }, { id: 25, name: '親子丼' }, { id: 26, name: '豚の角煮' },
    { id: 27, name: 'チャーハン' }, { id: 28, name: '豚キムチ' }, { id: 29, name: 'サバの味噌煮' },
    { id: 30, name: 'おでん' }
  ]

  include ActiveHash::Associations
  has_many :calenders
end