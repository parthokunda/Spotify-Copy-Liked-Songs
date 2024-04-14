# SPOTIFY COPY LIKED SONGS
Copy liked songs from one profile to another profile's playlist. This is a fun project. Probably better ones exist
I created it to copy a huge number of Liked songs playlist from my sister's account. So, I did not think about generalizing it for different cases.
## STEPS
### App Creation
1. Create an app from [Spotify Dashboard](https://developer.spotify.com/dashboard).
2. Set redirect uri to http://localhost:8888/callback
3. Enable Web API.
4. Add the other profile to the app in User Management.

### Env Generation
add a .env file to **authorizaton_code** folder.
```
client_id='paste client id from app'
client_secret='paste your app client secret'
redirect_uri='http://localhost:8888/callback'
```

### Access Token
1. Go to **authorization_code** folder. Run `npm install && npm run dev`. (Node version used v20.12.2)
2. Visit http://localhost:8888
3. Login to both users id and copy their access token.
4. Create an empty playlist (optional).
5. Copy the playlist id, the one you copy songs to.
![Screenshot from 2024-04-14 14-45-19](https://github.com/parthokunda/Spotify-Copy-Liked-Songs/assets/76593389/b9dfe1ad-6db4-4966-9d2c-d42ce347a7c8)
![image](https://github.com/parthokunda/Spotify-Copy-Liked-Songs/assets/76593389/ca5d85ca-434b-4da6-ae24-c9299e4858b3)
6. Paste access tokens and playlist id in **addSongs.sh** file.
7. Add how many songs are there.

## Possible Improvements
1. Add a check for successful song addition.
2. Retrieve total songs automatically.
3. Retrieve many songs from the playlist, instead of one by one.
4. Better frontend, and full UI integration.
