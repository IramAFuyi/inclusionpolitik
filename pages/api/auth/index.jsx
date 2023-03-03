export const getServerSideProps = async (context)=>{
    const res = await fetch ("https://maps.googleapis.com/maps/api/staticmap")
    const maps = await res.json()

    return{
        props: {
            googleMaps: maps
        }
    }

}

