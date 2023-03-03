export default function Home() {
    return(
        <>
        
        <body>
            <h1>Register</h1>
                    <form action="/send-data-here" method="post">
                    <label for="first">First name:</label>
                    <input type="text" id="first" name="first" />
                    <br />
                    <label for="last">Last name:</label>
                    <input type="text" id="last" name="last" />
                    <br />
                    <label for="email">Email</label>
                    <input type="email" id="email" name="email" />
                    <br />
                    <label for="password">Password</label>
                    <input type="password" id="password" name="password" />
                    <br />
                    <label for="datebirth">Birthdate</label>
                    <input type="date" id="birthdate" name="birthdate" />
                    <br />
                    <a href="http://www.youtube.com/watch?v=PxiQDo0CmDE">Facebook</a>
                    <br />
                    <a href="https://blog.hubspot.com/website/application-programming-interface-api">Google</a>
                    
                    
                    <br />
                
                    <br />
                    <button  type="submit">Register</button>
                    <span>Redirect</span>
                    <link to='/Tenemos_el_poder' ></link>
                    <link to='/Representantes' ></link>
                    </form>
        </body>
       </>
     
    )
}