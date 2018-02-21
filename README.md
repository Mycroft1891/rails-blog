# Rails Blog Template
Creating a blog in Rails has a lot of parts that are repetitive like posts, users, authentication, links, admin dashboard, file upload, etc. I made this to use it as starting point to create a blog.

## Gems used
- bootstrap (design)
- devise (authentication)
- active_admin (admin panel)
- active_admin_flat_skin (admin panel design)
- activeadmin_medium_editor
- carrierwave (file upload)


## Details
Currently this project uses `bootstrap` for the design of the blog itself and `active_admin_flat_skin` for the design of the admin interface. The admin interface is made using `active_admin` and `activeadmin_medium_editor` to edit the posts. It uses `devise` for the authentication of admins/users. File upload is handled with `carrierwave`.

The project has 5 models:
- User/Admin
- Post
- Photo
- Tag

File upload is handled by creating a new Photo record to reduce the redundancy of photos. The editor supports HTML input plus simple text styling thanks to `activeadmin_medium_editor` which adds quick controls for inserting titles, subtitles, links, etc.

## Admin Panel: Posts
![Admin Panel: Posts](https://i.imgur.com/MEfW6jn.png)

## Admin Panel: Posts Editor
![Admin Panel: Posts Editor](https://i.imgur.com/rnXv2mn.png)

## Admin Panel: Photos
![Admin Panel Photos](https://i.imgur.com/SD2Bbtp.jpg)
