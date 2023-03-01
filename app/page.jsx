import Head from "next/head"
export default function Home(){
    return(
        <div>
            <h1>Hellou , Welcome back
                <link rel="shortcut icon" href="inclusionpolitik\public\Logo_inclusionPolitika.png" type="image/x-icon" />
            </h1>
        </div>
        
            )
    }
export const getServerSideProps = async (context)=>{
    const res = await fetch ("https://maps.googleapis.com/maps/api/staticmap")



}