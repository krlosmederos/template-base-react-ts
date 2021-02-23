import React from "react";
import { render, act } from "@testing-library/react";
import "@testing-library/jest-dom";
import App from "./App";

test("renders App component correctly", async () => {
  await act(async () => {
    const { getByTestId } = render(<App />);
    expect(getByTestId("appContainer")).toBeInTheDocument();
  });
});
