package main

import (
	"testing"
  "github.com/stretchr/testify/assert"
)

func TestVal(t *testing.T) {
  val := true
	if !val {
		assert.Equal(t, true, false, "Expecting no error")
	}
}

func TestSave(t *testing.T) {
  page := Page{Title:"Hello", Body: []byte("World")}
  err := page.save()
	if err !=nil {
		assert.Equal(t, true, false, "Expecting no error")
	}
}
