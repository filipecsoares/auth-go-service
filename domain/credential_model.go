package domain

type Credential struct {
	ID           CredentialID `json:"id"`
	Name         string       `json:"name"`
	PasswordHash string       `json:"-"`
	AuthToken    AuthToken    `json:"-"`
}
