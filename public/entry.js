class NameForm extends React.Component {
    constructor(props) {
        super(props);
        this.state = {value: ''};
        
        this.handleChange = this.handleChange.bind(this);
        this.handleSubmit = this.handleSubmit.bind(this);
    }
    
    handleChange(event) {
        this.setState({value: event.target.value});
    }
    
    handleSubmit(event) {
        event.preventDefault();
        var data = this.state.value;
        fetch("/submit?model[cake]=" + data, {
              method: "POST",
              body: 'data'
              }).then(this.handleRedirect)
    }
    
    handleRedirect(res){
         window.location.href = '/models'
    }
    
    handleRedirectJSON(res){
        window.location.href = '/list'
    }
    
    render() {
        return (
                <form onSubmit={this.handleSubmit}>
                <input type="text" required={true} ref="data" value={this.state.value} onChange={this.handleChange} placeholder="Enter Cake"/>
                <label></label>
                <input type="submit" value="Submit" />

                <btn onClick={this.handleRedirect} className="btn">
                View Cakes
                </btn>
                
                <btn onClick={this.handleRedirectJSON} className="btn">
                View JSON
                </btn>
                
                </form>
                );
    }
}

React.render(<NameForm />,
                document.getElementById('content')
                );
