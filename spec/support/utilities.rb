def full_title(page_title)
  base_title = "Stage Time"
  if page_title.empty?
    base_title
  else
    "#{base_title} | #{page_title}"
  end
end