#!/bin/bash

mkdir -p pages

cat > pages/jacuzzify.jsx << 'EOF'
const testResults = [
  { date: "2025-08-01", bromine: 3.5, alkalinity: 120, pH: 7.6 },
  { date: "2025-08-03", bromine: 4.0, alkalinity: 115, pH: 7.4 },
  { date: "2025-08-05", bromine: 3.8, alkalinity: 118, pH: 7.5 },
];

export default function Jacuzzify() {
  return (
    <>
      <style>{\`
        @import url('https://fonts.googleapis.com/css2?family=Orbitron&display=swap');

        body,html,#__next {
          margin: 0; padding: 0; height: 100%;
          font-family: 'Orbitron', monospace, sans-serif;
          background: #000;
          color: #0ff;
          overflow-x: hidden;
        }

        .cloud-bg {
          position: fixed;
          top: -100px; left: -100px;
          width: 120vw; height: 120vh;
          background:
            radial-gradient(ellipse at 20% 30%, rgba(0,255,255,0.25) 0%, transparent 40%),
            radial-gradient(ellipse at 80% 70%, rgba(0,255,255,0.15) 0%, transparent 35%),
            radial-gradient(ellipse at 50% 50%, rgba(0,255,255,0.2) 0%, transparent 50%);
          filter: blur(60px);
          z-index: 0;
          pointer-events: none;
          animation: floatClouds 20s ease-in-out infinite alternate;
        }

        @keyframes floatClouds {
          0% { transform: translate(0, 0); }
          100% { transform: translate(20px, 10px); }
        }

        .container {
          position: relative;
          z-index: 1;
          max-width: 600px;
          margin: 3rem auto;
          padding: 1.5rem;
          background: rgba(0, 255, 255, 0.05);
          border: 2px solid #0ff;
          border-radius: 12px;
          box-shadow: 0 0 15px #0ff;
          text-align: center;
        }

        h1 {
          margin-bottom: 1rem;
          font-weight: 700;
          font-size: 2.5rem;
          letter-spacing: 3px;
          text-shadow:
            0 0 8px #0ff,
            0 0 20px #0ff,
            0 0 30px cyan;
        }

        table {
          width: 100%;
          border-collapse: collapse;
          color: #0ff;
          margin-top: 1rem;
        }

        th, td {
          padding: 0.75rem 1rem;
          border-bottom: 1px solid #0ff55;
          font-weight: 600;
          text-align: center;
          font-size: 1.1rem;
        }

        th {
          border-bottom: 2px solid #0ff;
          text-transform: uppercase;
          letter-spacing: 1.2px;
        }

        @media (max-width: 480px) {
          .container {
            margin: 1rem;
            padding: 1rem;
          }
          h1 {
            font-size: 1.8rem;
          }
          th, td {
            font-size: 0.9rem;
            padding: 0.5rem 0.75rem;
          }
        }
      \`}</style>

      <div className="cloud-bg"></div>

      <div className="container">
        <h1>Jacuzzify</h1>
        <p>Hot Tub Test Results</p>
        <table>
          <thead>
            <tr>
              <th>Date</th>
              <th>Bromine (ppm)</th>
              <th>Alkalinity (ppm)</th>
              <th>pH</th>
            </tr>
          </thead>
          <tbody>
            {testResults.map(({ date, bromine, alkalinity, pH }, i) => (
              <tr key={i}>
                <td>{date}</td>
                <td>{bromine}</td>
                <td>{alkalinity}</td>
                <td>{pH}</td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>
    </>
  );
}
EOF

echo "Created pages/jacuzzify.jsx with Jacuzzify component!"


