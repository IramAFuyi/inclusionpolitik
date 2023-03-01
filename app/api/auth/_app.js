import {SessionProvider} from 'next-auth/react'
import '../styles/global.css'
import NextAuth from 'next-auth/next'
function MyApp({ Component, pageProps, session},
    {
    
    return (
        <SessionProvider session={session}>
            <Component {...pageProps}/>
        </SessionProvider>
    )
}

export default MyApp