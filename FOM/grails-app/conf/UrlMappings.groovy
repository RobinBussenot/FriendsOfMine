class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

		"/"(view:"/index")
                "/auth/signup"(controller:"auth", action:"signup")
                "/auth/loginError"(controller:"auth", action:"loginError")
		"500"(view:'/error')
	}
}
