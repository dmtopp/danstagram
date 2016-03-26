# Sequel.migration do
#   change do
#
#     create_table(:users) do
#       primary_key :id
#       String :username
#       String :email
#       String :password
#     end
#
#     create_table(:photos) do
#       primary_key :id
#       owner_id # foreign key
#       tag_id # foreign key
#       String :caption
#       # the actual photo
#     end
#
#     create_table(:hashtags) do
#       primary_key :id
#       String :hashtag_name
#     end
#
#     create_table(:photos_hashtags_junction) do
#       primary_key #???
#
#     end
#
#
#   end
# end
