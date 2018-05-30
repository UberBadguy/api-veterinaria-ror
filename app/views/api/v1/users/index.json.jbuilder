json.users @users do |user|
    json.id user.id
    json.f_name user.f_name
    json.l_name user.l_name
    json.username user.username
    json.password user.password
    json.type user.type.name
end