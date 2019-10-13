class User {
	constructor(user) {
		this.name = user.name;
	}
}

function getUsers(usersCallback) {
	$.ajax({
		url: '/users',
		method: 'get',
		dataType: 'json'
	}).done(function(response){
		console.log('response: ', response);
		
		const users = response.map(element => {
			return new User(element)
		
		});
		console.log("Users:" users);
		usersCallback(users);
	});
}