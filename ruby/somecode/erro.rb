begin
  # わざと例外を起こす
  5 + nil
# 例外オブジェクトを変数 error に代入
rescue => error
  # 変数 error を配列で表示する
  p error.message
  p error.backtrace
end

begin
  # わざと例外を起こす
  5 + "konnitha"
# 例外オブジェクトを変数 error に代入
rescue => error
  # 変数 error を配列で表示
  p error.message
  p error.backtrace
end
