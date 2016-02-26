
	API YOUTUBE


## 1. Obtener data de un video
@referencia [](https://developers.google.com/youtube/v3/docs/videos/list)

GET https://www.googleapis.com/youtube/v3/videos?part=snippet%2C+contentDetails&id=R4KkBxv0VpY&key={YOUR_API_KEY}

## 2. Obtener ids de videos de un usuario:
@referencia [](https://developers.google.com/youtube/v3/docs/channels/list?hl=es)
	- favoritos
	- history
	- other

GET https://www.googleapis.com/youtube/v3/channels?part=contentDetails&forUsername=enlaceetube&key={YOUR_API_KEY}

## 3. Obtener data de listas de videos
@referencia [](https://developers.google.com/youtube/v3/docs/playlistItems/list?hl=es#try-it)

GET https://www.googleapis.com/youtube/v3/playlistItems?part=snippet%2CcontentDetails&maxResults=5&playlistId=FLvPN2SvwQ6Vqfd1HMHYcceA&key={YOUR_API_KEY}
