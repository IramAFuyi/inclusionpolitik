import React from 'react'
import{UserSession, signIn,SignOut} from 'next-auth/react'
const login = () =>{
    const {data: session} = UserSession()
    console.log(session);

    if (session){
        return(
            <div><p>Welcome back, </p>{session.user.email}
            <img src={session.user.email} alt="" style{{borderRadius:'50px'}} />
                <button onClick={() => SignOut()}>Sign Out</button>
            </div>
        )
    } else
        return(
            <div><p>You aren't sign in</p>
                <button onClick={() => signIn}>Sign in.</button>
            </div>
        )
}

export default login 