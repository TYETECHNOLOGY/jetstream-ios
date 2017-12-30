// Synchronizing a scope
scope = new Scope("ShapesCanvas")
if let client = Client(options: WebsocketConnectionOptions(url: "ws://localhost")) {
    client.connect()
    client.onSession.listenOnce(self) { (session) in
        self.session = session
        session.fetch(scope) { (error) in
            if error == nil {
                // Registered to receive updates to the scope from the Jetstream server
            }
        }
    }
}
