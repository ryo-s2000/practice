def return_status_message(message)
  if message == "200"
    return "OK"
  else
    return "error"
  end
end

status_message =
    unless return_status_message("200") == "OK"
      "何か異常があります"
    else
      "正常な動作をしています"
    end

puts status_message
