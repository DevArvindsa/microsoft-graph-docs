# Working with users in Microsoft Graph

You can use Microsoft Graph to build compelling app experiences based on users, their relationships with other users and groups, mail, calendar, and files.

You can address users through Microsoft Graph in two ways:

- `/users/<id>` addresses a user by their id
- `/me` is an alias for the signed-in user, synonymous with `/users/<signed-in user's id>`

## Authorization
One of the following [permissions](permission_scopes.md) is required to access user operations. The first three permissions can be granted to an app by a user, whereas the remaining set can only be granted to an app by the administrator.

- User.ReadBasic.All
- User.Read
- User.ReadWrite
- User.Read.All
- User.ReadWrite.All
- Directory.Read.All
- Directory.ReadWrite.All
- Directory.AccessAsUser.All

## Common Properties

| Property | Description |
|----------|-------------|
| displayName | The name displayed in the address book for the user.|
|givenName| The first name of the user. |
|surname| The last name of the user. |
|mail| The user's email address. |
|photo| The user's profile photo. |
For details on more properties, see the [user](user.md) object.

## Common Operations
Some of these operations require additional permissions.

| Path    | Description |
|---------|-------------|
|[`/users`](../api/user_list.md) | Lists users in the organization. |
|[`/users/<id>`](../api/user_get.md) | Gets a specific user by id. |
|[`/users/<id>/photo/$value`](../api/profilephoto_get.md)| Gets the user's profile photo. |
|[`/users/<id>/manager`](../api/user_list_manager.md) | Gets the user's manager. |
|[`/users/<id>/messages`](../api/user_list_messages.md)| Lists the user's email messages in their primary inbox. |
|[`/users/<id>/events`](../api/user_list_events.md) | Lists the user's upcoming events in their calendar. |
|[`/users/<id>/drive`](../api/drive_get.md)| Gets the user's OneDrive file store. |
|[`/users/<id>/memberOf`](../api/user_list_memberof.md)| Lists the groups that the user is a member of. |