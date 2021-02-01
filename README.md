###
Example Query for this project:
```
query{
  users {
    firstName
    lastName
    email
    postsCount
  }
}

query{
  user(id: 2) {
    firstName
    lastName
    email
    postsCount

    posts {
      title
    }
  }
}

mutation{
  createUser(input: {
    firstName: "bla"
    lastName: "BlaBla"
    email: "blabla@blabla.de"
  }) {
    user{
      id,
      firstName,
      lastName,
      email
    }
    errors
  }
}
```


Columnnames with underscores are always written in Camelcase
