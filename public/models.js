class Cakes extends React.Component {
    constructor(props) {
        super(props);
    }
    
    handleRedirect(res){
         window.location.href = '/models'
    }
    
    handleRedirectJSON(res){
        window.location.href = '/list'
    }
    
    render() {
        fetch('/list')
        .then((res) => res.json())
        .then((data) => {
              console.log('data:', data);
              })
        return (
                                );
    }
}

React.render(<Cakes />,
                document.getElementById('content')
                );
