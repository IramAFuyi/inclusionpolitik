//Se importa to que nos permite utilizar   NextAuth
import NextAuth from 'next-auth/next';
import GoogleProvider from 'next-auth/providers/google';
import FacebookProvider from 'next-auth/providers/facebook';
export default NextAuth({
  //Se selecciona un proveedor con el cual vamos a iniciar sesion mediante un arreglo
  providers:[
    GoogleProvider({
      clientId: process.env.GOOGLE_CLIENT_ID,
    clientSecret: process.env.GOOGLE_CLIENT_SECRET,
    }),
    FacebookProvider({
      clientId: process.env.FACEBOOK_CLIENT_ID,
      clientSecret: process.env.FACEBOOK_CLIENT_SECRET
    })
  ]
  
})

