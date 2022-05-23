import { render } from "react-dom";
import { BrowserRouter, Routes, Route } from "react-router-dom";
import { StrictMode, useState } from "react";

const App = () => {
  const [count, setCount] = useState(0);

  return (
    <StrictMode>
      <BrowserRouter>
        <Routes>
          <Route
            path="/"
            element={
              <>
                <h1>Hello World</h1>
                <button onClick={() => setCount(count + 1)}>{count}</button>
              </>
            }
          />
        </Routes>
      </BrowserRouter>
    </StrictMode>
  );
};

render(<App />, document.getElementById("root"));
