//Se importa to que nos permite utilizar   NextAut

//se exporta la funcion de este modulo

  //Se selecciona un proveedor con el cual vamos a iniciar sesion mediante un arreglo
  
import nextAuth from "next-auth"
import NextAuth from "next-auth/next"
import GoogleProvider from 'next-auth/providers/google';
export default NextAuth({
  providers:[
    GoogleProvider({
      clientId: process.env.GOOGLE_CLIENT_ID,
    clientSecret: process.env.GOOGLE_CLIENT_SECRET,
    }),

  ]
})



