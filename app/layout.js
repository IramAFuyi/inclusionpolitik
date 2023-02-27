//importar link (esto es de react)
import Link from "next/link"

const linksMenu=[

  {
  label:'Tenemos el poder',
  route:'/Tenemos_el_poder'
  },
  {
    label: 'Distritos Electorales',
    route: '/Distritos_Electorales'
  },
  {
    label:'Partidos Politicos',
    route:'/Partidos_Politicos'
  },
  {
    label:'Representantes',
    route:'/Representantes'
  },
  {
    label:'Contact',
    route:'/Contact'
  },
  {
    label:'Account',
    route:'/Account'
  },
  {
    label:'Login',
    route:'/Login'
  },
  {
    label:'Register',
    route:'/Register'
  }

]





export default function RootLayout({ children }) {
  return (
    <html>
      <head>
        <title>Home</title>
      </head>
        
          <ul>
            {linksMenu.map(({label,route})=>(
              <li>
                <Link href={route}>{label}</Link>
              </li>
            ))}
          </ul>
        
      
      <body>{children}</body>
    </html>
  )
}
