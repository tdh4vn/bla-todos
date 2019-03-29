FROM golang:latest 
RUN mkdir /app 
ADD . /app/ 
WORKDIR /app 
RUN go get -u github.com/albrow/todo-backend
RUN go get -u github.com/albrow/forms
RUN go get -u github.com/albrow/negroni-json-recovery
RUN go get -u github.com/codegangsta/negroni
RUN go get -u github.com/gorilla/mux
RUN go get -u github.com/martini-contrib/cors
RUN go get -u github.com/unrolled/render
RUN go build -o main . 
CMD ["/app/main"]
EXPOSE 2244