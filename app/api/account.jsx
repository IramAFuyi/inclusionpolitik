import React from 'react'
import {userSession, signOut, getSession } from 'next-auth/react'

const account = () => {
const {data: session, status } = useSession();

    if(status === "authenticated") {
        return (
            <p>Welcome{session.user.name}</p>
            <button onClick={() => signOut()}>Sign Out </button>
        )
    } else{
        return (
            <div>
                <p>You are not signed in.</p>
            </div>
        );
    }
return <a href="http://localhost3000/api/auth/signin">Sign in</a>
};


export default account;

export const getServerSideProps = async (context) =>{
    const session = await getSession (context);
    if (!session){
        return{
            redirect:{
                destination:'/login'
            },
        };
    }
    return {
       props: {session} 
    };

};