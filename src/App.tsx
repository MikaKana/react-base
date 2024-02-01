import React from 'react'

const App: React.FC = () => {
  return (
    <div>
      <h1>Welcome to My React App!</h1>
      <p>Today is {new Date().toLocaleDateString()}.</p>
    </div>
  )
}

export default App
