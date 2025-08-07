# Mini-TAAS (Terminal as a Service)

This is a study project to create a simplified "Terminal as a Service" using modern backend and DevOps technologies.

## Technologies Used

* **Language:** Python 3
* **API Framework:** FastAPI
* **Messaging:** RabbitMQ (to be implemented)
* **Containerization:** Docker (to be implemented)
* **CI/CD:** GitHub Actions (to be implemented)

## How to Run the Project

Follow the steps below to set up and run the local development environment.

1.  **Clone the repository:**
    ```bash
    git clone https://github.com/fcappellaTW/mini-taas.git
    cd mini-taas
    ```

2.  **Create and activate the virtual environment:**
    ```bash
    python3 -m venv venv
    source venv/bin/activate
    ```

3.  **Install dependencies:**
    ```bash
    pip install -r requirements.txt
    ```

4.  **Start the API:**
    ```bash
    uvicorn src.api.main:app --reload
    ```

5.  Access the API at [http://127.0.0.1:8000](http://127.0.0.1:8000).
