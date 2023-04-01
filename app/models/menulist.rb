class Menulist < ActiveHash::Base
  self.data = [
    { id: 0, name: '中華丼', start_time: Date.current }, { id: 1, name: 'カレー', start_time: Date.current.tomorrow }, { id: 2, name: 'シチュー', start_time: Date.current.since(2.days) },
    { id: 3, name: 'ハンバーグ', start_time: Date.current.since(3.days) }, { id: 4, name: 'エビフライ', start_time: Date.current.since(4.days) }, { id: 5, name: 'ステーキ', start_time: Date.current.since(5.days) },
    { id: 6, name: '肉じゃが', start_time: Date.current.since(6.days) }, { id: 7, name: 'ちらし寿司', start_time: Date.current.since(7.days) }, { id: 8, name: 'たまごサンド', start_time: Date.current.since(8.days) },
    { id: 9, name: 'からあげ', start_time: Date.current.since(9.days) }, { id: 10, name: 'しょうが焼き', start_time: Date.current.since(10.days) }, { id: 11, name: 'ラーメン', start_time: Date.current.since(11.days) },
    { id: 12, name: 'ぎょうざ', start_time: Date.current.since(12.days) }, { id: 13, name: '焼きそば', start_time: Date.current.since(13.days) }, { id: 14, name: '焼きうどん', start_time: Date.current.since(14.days) },
    { id: 15, name: '鮭の塩焼き', start_time: Date.current.since(15.days) }, { id: 16, name: '麻婆豆腐', start_time: Date.current.since(16.days) }, { id: 17, name: '刺身定食', start_time: Date.current.since(17.days) },
    { id: 18, name: 'グリーンカレー', start_time: Date.current.since(18.days) }, { id: 19, name: 'おにぎり', start_time: Date.current.since(19.days) }, { id: 20, name: '温野菜', start_time: Date.current.since(20.days) },
    { id: 21, name: 'すき焼き', start_time: Date.current.since(21.days) }, { id: 22, name: 'うなぎの蒲焼', start_time: Date.current.since(22.days) }, { id: 23, name: '牛丼', start_time: Date.current.since(23.days) },
    { id: 24, name: 'カツ丼', start_time: Date.current.since(24.days) }, { id: 25, name: '親子丼', start_time: Date.current.since(25.days) }, { id: 26, name: '豚の角煮', start_time: Date.current.since(26.days) },
    { id: 27, name: 'チャーハン', start_time: Date.current.since(27.days) }, { id: 28, name: '豚キムチ', start_time: Date.current.since(28.days) }, { id: 29, name: 'サバの味噌煮', start_time: Date.current.since(29.days) },
    { id: 30, name: 'おでん', start_time: Date.current.since(30.days) }
  ]
end