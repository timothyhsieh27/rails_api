# <h1>Users#index</h1>
#
# <% @users.each do |user| %>
# <li>Username: <%= user.username%></li>
# <li>Score: <%= user.score%></li>
# <% end %>

json.(@users, :username, :score)

# json.users @user do |user|
#   json.username    user.username
#   json.score       user.score
# end
