car_names = [ 'クラウンロイヤル' , 'ヴィオス' ,'プリウス（紫）' ,'ランクル200（白）' ,'マークX' ,'RX450h' ,'86racing（紺）' ,'ランクル200（銀）' ,
 'IS250' ,'ハイランダー' ,'ハイエースコミュータ' , 'プリウス（水）', 'カローラアルティス', 'マトリックス', 'イノーバ', '-', 'ハイラックスREVO', 'トヨエース　ジャストロー', 
 'ハイラックス（白）', 'ハイラックスビーゴ', 'クラウンＲＳ', '86（白）', 'アクア', 'ヴォクシー', 'カムリ（北米 銀）', 'ランクル100', 'アバンザ', 'WRX S4', 'C-HR（緑）', 'シエナ',
 'ノア HV', 'ハリアー', 'オーリス（黄）', 'LS500h', '-', 'ランクル70（赤）', 'ランクル100シグナス', 'ハイエース4WD（銀）', 'カムリ（北米 ｶﾞﾝﾒﾀ）', 'ランクル70 ﾋﾟｯｸｱｯﾌﾟ（銀）', 'ハイエース 2WD（白）',
 'コムス', 'ミラージュ', 'スープラ（白）', 'ランクル70 ﾋﾟｯｸｱｯﾌ（ｶﾞﾝﾒﾀ）', 'LX570', 'ハイラックス サーフ','アルファード（銀）', 'クラウンHV', 'ベルタ', 'カムリ', '-', 'コースター', 'スープラ（銀）', 'ハイラックス（スノトラ）',
 'オーリス（青）', 'カムリ（北米）（青）', 'オーリスRS', 'ランクルプラド（白）', 'オーリス（赤）', 'ランクルプラド（赤）', 'RX350', 'ノート', 'ランクル70ﾋﾟｯｸｱｯﾌﾟ（白）', 'IS300h',
 'ランクルプラド（赤）', 'ジムニー', 'ハイエース（紺）', 'ハイエース（緑）', 'CX-3(27-40)', 'ランクル200（黒）', '-', 'ヴェゼル（茶）', 'エクストレイル（赤）', 'プリウス（白 61-41）',
 'ラッシュ', 'シビック（北米）（白）', '-', 'RDX', 'C-HR（青）', 'ステップワゴン', 'アコード（北米）（黒）', 'セレナ', 'ジューク', 'ランクル70（白）','-', 'タント', 'フィットHB（緑）',
 'フィット（白）', 'エクストレイル（緑）', 'ブリオ', 'ストリーム', 'フィットHB（青）', 'NX300', 'アルティマ', '新型リーフ', 'ムーブ（白）', 'ボルボ トラクタ', 'ファイター', 'ハイエース（スノー車両）',
 'シルフィー（銀）', 'アルマダ', 'スカイライン 370GT', 'エクストレイル（銀 10M）', 'FX45', 'タイタン（スノトラ）', 'GTR（白）', 'セレナ（水色）', 'アウトランダー（グレー）', '-',
 'GTR（黒）', 'スカイラインクロスオーバー', 'グレイス', 'フェアレディZ', 'エクストレイル（銀 14M）', 'ムラーノ', '初期型リーフ', 'バネット NV200', 'フーガHV', 'トライトン', 'ハイエースS-GL(18M)',
 'E200', 'アウトランダー（赤）', 'スイフトスポーツ（黄）', 'GTR nismo', 'RAV4', 'パジェロ（銀 06M）', 'パジェロ（銀 93M）', 'ランサーエボリューションⅨ', 'ランサーエボリューションⅩ',
 'ヴェゼル（黒）', 'レガシー', 'インプレッサ（青）', 'レヴォーグ', 'WRX STI 40', '328i', 'ランクル200（茶）', 'CR-V(19M)', '-', 'WRX STI（オレンジ）', 'BRZ', 'ハイゼット', 'ナバラ',
 'エブリー', 'スイフトスポーツ（白）', 'ワゴンR', 'フォレスター', '-', 'T5', 'エルガ', 'CX-9', 'ジープチェロキー', 'ゴルフⅥ', 'ゴルフ7.5（紺）', 'ゴルフⅦ（紺）', 'ゴルフⅦ（赤）（58-70）',
 'ティグアン', 'D-MAX', '-', 'C180（銀）', 'C180（黒）', 'up', '-', 'シビック（北米）（黒）', '-', 'ポロ', 'CX-5', '-', 'ゴルフⅦ（赤）（58-71）', 'ゴルフⅦ（白）',
 '-', 'CX-3（61-00）', 'ギガ（04M）', 'レンジャー', 'フォワード（ウイング）', 'タイタン', 'C200（白）', 'ドラクション2号車', 'トラクション3号車', 'キャンター', 'プロフィア（ウイング）',
 'フォワード（パワーゲート）', 'キャンター（ウイング）', 'プロフィア（平）', 'ギガ(12M)', 'パサート ヴァリアント', 'A3', '-'
 ]
ActiveRecord::Base.transaction do
  Key.all.destroy_all
  car_names.each.with_index(1) do |car_name, i|
    STDERR.puts "id: #{i}, car_name: #{car_name}, key_number: #{i}"
    Key.create!(id: i, car_name: car_name, key_number: i, status: 10)
  end
end