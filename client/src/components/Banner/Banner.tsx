export default function Banner(){
    return(
        <div style={{ position: 'relative' }}>
            <img src={require('../../assets/images/dolladude.png')} alt='banner' 
                style={{ position: 'absolute', top: 0, left: 0, width: '10rem', height: 'auto', margin: '1rem'}}
            />
        </div>
    )
}