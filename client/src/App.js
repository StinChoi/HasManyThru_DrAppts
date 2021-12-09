
import './App.css';
import { Container } from "semantic-ui-react";
import { Route, Switch } from "react-router";
import AppointmentsAndMore from "./pages/AppointmentsAndMore";

function App() {
  return (
    <div>
      <Container>
        <Switch>
          {/* <Route exact path="/" component={} /> */}
          <Route exact path="/appointments" component={AppointmentsAndMore} />
        </Switch>
      </Container>
    </div>
  );
}

export default App;
