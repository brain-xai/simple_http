package main

import (
	"github.com/gin-gonic/gin"
)

func setupRouter() *gin.Engine {
	r := gin.Default()
	r.GET("/", func(c *gin.Context) {
		c.JSON(200, gin.H{
			"message": "Hello World",
		})
	})
	r.GET("/html", func(c *gin.Context) {
		c.Header("Content-Type", "text/html")
		c.String(200, "<h1>Hello World !</h1>")
	})
	return r
}

func main() {
	r := setupRouter()
	r.Run(":8080")
}
