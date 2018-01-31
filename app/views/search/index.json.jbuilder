json.documents do 
  json.array!(@documents) do |document|
    json.name document.name
    json.folder document.topic.title
    json.url document_path(document)
  end
end
  