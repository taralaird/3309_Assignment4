import './App.css';
import { F1Page, F2Page, F3Page, F4Page, F5Page } from './screens';
import ReactDOM from 'react-dom';

function App() {
  return (
    <div className="App">
      <header className="App-header">
          <nav>
          <button onClick={()=> {ReactDOM.render(<F1Page/>, document.getElementById('screen'))}}>Get Menu</button>
          <span>       </span>
          <button onClick={()=> {ReactDOM.render(<F2Page/>, document.getElementById('screen'))}}>Find Restaurant</button>
          <span>       </span>
          <button onClick={()=> {ReactDOM.render(<F3Page/>, document.getElementById('screen'))}}>Our Best Drivers</button>
          <span>       </span>
          <button onClick={()=> {ReactDOM.render(<F4Page/>, document.getElementById('screen'))}}>Your Orders</button>
          <span>       </span>
          <button onClick={()=> {ReactDOM.render(<F5Page/>, document.getElementById('screen'))}}>Memberships</button>
          </nav>
      </header>
    </div>
  );
}

export default App;
