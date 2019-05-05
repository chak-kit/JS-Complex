module.exports.findUsersByName = function (users, name) {
   let result = users.filter(function (user) {
        return user.name.toLowerCase().indexOf(name.toLowerCase()) > -1;
    });
    return result;
};