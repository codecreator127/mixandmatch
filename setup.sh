echo "Running all consoles..."

if [[ "$OSTYPE" == "linux-gnu"* || "$OSTYPE" == "darwin"* ]]; then
    # macOS or Linux
    echo "Starting python venv..."
    # start venv
    cd backend_mm
    python3 -m venv venv
    source venv/bin/activate


elif [[ "$OSTYPE" == "msys" || "$OSTYPE" == "cygwin" ]]; then
    # Windows (Git Bash or WSL)
    echo "Starting python venv..."
    # start venv
    cd backend_mm
    python -m venv venv
    venv\\Scripts\\activate

fi

echo "python venv started"

echo "installing dependencies backend"
pip install -r requirements.txt

echo "installing dependencies frontend"
cd ../frontend_mm
npm i
