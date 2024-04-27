Directory for unit tests and integration tests to ensure code functionality.


# Test Environment

### Unit Tests: Test individual functions or methods in your data processing pipeline to ensure they work as expected.
    - Data Quality Tests: Test the quality of your data, including checks for missing values, outliers, and data consistency & data governance.

    - Model Training & Eval Tests: Validate the training process and evaluation metrics of your models.

    - Model Deployment Tests: Test the deployment process of your app.
    
### Acceptance Tests: Verify that the software meets the user's requirements and is ready for release. 

# Staging Environment: 

### Smoke Tests: Staging is where we also run so-called "smoke tests", which basically check if the application can be deployed and started without crashing and burning.

### Integration Tests: Test how different components of your data pipeline work together, including data extraction, transformation, and loading (ETL) processes.

### Scalability Tests: Test how your data pipeline or models scale with increasing data volumes or user loads to ensure they can handle growing demands.

### Load Tests: If it can, we proceed with load tests, which check whether the application operates normally under an expected user load, in terms of request frequency and input size.
    - Check [locust](https://locust.io/) for load & scalability testing.

### End-to-End Tests: Test the entire data pipeline from data ingestion to model deployment to ensure the entire system works correctly.




