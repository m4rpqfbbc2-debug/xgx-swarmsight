# SwarmSight

SwarmSight is a versatile swarm intelligence prediction engine that helps you predict future outcomes by simulating complex group interactions with AI agents.

## What is SwarmSight?

SwarmSight can extract real-world seeds from any text input and generate parallel simulations with up to million-scale AI agents. You can inject variables from a god's-eye view and find locally optimal solutions in complex group interactions.

**Let the future rehearse in agent swarms, let decisions prevail after a thousand battles.**

## Features

- **Universal Text Input**: Upload any report or text and SwarmSight will automatically extract actionable insights
- **Million-Scale Agents**: Simulate complex interactions with thousands or millions of AI agents
- **Real-World Modeling**: Extract and model real-world entities, relationships, and scenarios
- **Interactive Analysis**: Query your simulations and get insights about potential outcomes
- **Multiple Platforms**: Support for Reddit, Twitter/X, and custom scenarios

## Tech Stack

### Frontend
- Vue.js 3 with Composition API
- Vite for fast development and building
- Modern responsive design

### Backend
- Python Flask API
- Zep Cloud for graph memory management
- OpenAI GPT models for agent intelligence
- CAMEL-AI framework for agent coordination

## Quick Start

### Prerequisites

- Node.js 18+ and npm
- Python 3.8+ with pip
- OpenAI API key
- Zep Cloud API key

### Installation

1. Clone the repository:
```bash
git clone <repository-url>
cd SwarmSight
```

2. Setup Backend:
```bash
cd backend
python -m venv .venv
source .venv/bin/activate  # On Windows: .venv\Scripts\activate
pip install -r requirements.txt
```

3. Setup Frontend:
```bash
cd frontend
npm install
```

4. Configure environment variables:
Create a `.env` file in the project root:
```env
LLM_API_KEY=your_openai_api_key
ZEP_API_KEY=your_zep_api_key
```

### Running the Application

1. Start the backend server:
```bash
cd backend
source .venv/bin/activate
python run.py
```
The backend will run on http://localhost:5001

2. Start the frontend development server:
```bash
cd frontend
npm run dev
```
The frontend will run on http://localhost:3004

3. Open your browser and navigate to http://localhost:3004

## How to Use

1. **Upload Content**: Start by uploading any text document, report, or scenario description
2. **Build Graph**: SwarmSight will automatically extract entities and relationships to build a knowledge graph
3. **Configure Environment**: Set up the simulation environment and parameters
4. **Run Simulation**: Launch the agent simulation with your specified parameters
5. **Generate Report**: Get detailed insights and analysis from the simulation results
6. **Interact**: Query the results and explore different scenarios

## API Endpoints

- `GET /api/health` - Health check
- `POST /api/graph/build` - Build knowledge graph from text
- `POST /api/simulation/run` - Run agent simulation
- `GET /api/simulation/status/:id` - Check simulation status
- `POST /api/reports/generate` - Generate analysis report

## Configuration

The application uses environment variables for configuration:

- `LLM_API_KEY`: OpenAI API key for LLM models
- `ZEP_API_KEY`: Zep Cloud API key for graph storage
- `FLASK_HOST`: Backend host (default: 0.0.0.0)
- `FLASK_PORT`: Backend port (default: 5001)

## Contributing

1. Fork the repository
2. Create a feature branch: `git checkout -b feature/amazing-feature`
3. Commit your changes: `git commit -m 'Add amazing feature'`
4. Push to the branch: `git push origin feature/amazing-feature`
5. Open a Pull Request

## License

This project is proprietary software developed by XGX.ai.

## Support

For questions and support, please contact the XGX.ai team.

---

**Built with ❤️ by XGX.ai**