//Se importa to que nos permite utilizar   NextAut
import NextAuth from 'next-auth';
import GitHubProvider from 'next-auth/providers/github';
//se exporta la funcion de este modulo
export default NextAuth({
  //Se selecciona un proveedor con el cual vamos a iniciar sesion mediante un arreglo
  providers:[
  GitHubProvider ({
    clientId: 'cd0216f887ef22a679f0',
    clientSecret:'cfbc3585b2a280ba382afab72ab32be863347779'
  })
  ]
})


