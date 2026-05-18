# API 초안 (v0)

## 인증
### POST /api/auth/signup
- Request: `{ "email": "string", "password": "string", "name": "string" }`
- Response: `201 Created`

### POST /api/auth/login
- Request: `{ "email": "string", "password": "string" }`
- Response: `{ "accessToken": "jwt", "user": { "id": "uuid", "email": "string" } }`

## 앨범
### GET /api/albums
- 인증 필요
- Response: `Album[]`

### POST /api/albums
- 인증 필요
- Request: `{ "title": "string", "description": "string", "isPublic": false }`
- Response: `201 Created`

### PATCH /api/albums/:albumId
- 인증 필요(소유자)
- Request: `{ "title"?: "string", "description"?: "string", "isPublic"?: boolean }`

### DELETE /api/albums/:albumId
- 인증 필요(소유자)
- Response: `204 No Content`

## 사진
### POST /api/albums/:albumId/photos
- 인증 필요(소유자)
- Multipart: `file`, `caption`, `tags[]`
- Response: `201 Created`

### GET /api/albums/:albumId/photos
- 인증 필요(공개 앨범은 비로그인 조회 허용 가능)
- Response: `Photo[]`

### DELETE /api/photos/:photoId
- 인증 필요(소유자)
- Response: `204 No Content`

## 공통 에러 포맷
```json
{
  "error": {
    "code": "UNAUTHORIZED",
    "message": "Authentication required"
  }
}
```
