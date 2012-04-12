Rails.application.middleware.use OmniContacts::Builder do
  importer :yahoo, "dj0yJmk9aXdiNHJHbTFZU1hKJmQ9WVdrOU5reFBkVlJoTkhVbWNHbzlNakEwTmpZeU5URTJNZy0tJnM9Y29uc3VtZXJzZWNyZXQmeD1jNw--", "828411bd3a77eec72715ad53e297aabe8ddf5a1a", {:callback_path => '/alkilers/new'}
  importer :hotmail, "00000000480A726F", "xKS53APtkLLZ-xOdHdQezAcr-tBRHzrJ", {:redirect_path => '/alkilers/new'}
end