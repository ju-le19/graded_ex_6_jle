#' Predicts using a trained classification model.
#'
#' @param model A trained classification model object (from train_classifier).
#' @param new_data New data to predict on.
#' @return Predicted class labels.
#' @examples
#' # Train a model using iris dataset
#' model <- train_classifier(iris, Species ~ ., method = "rf")
#'
#' # Predict using new data (first 5 rows of iris dataset)
#' new_data <- iris[1:5, ]
#' predicted <- predict_classifier_rf(model, new_data)
#' @importFrom stats predict
#' @export
predict_classifier_rf <- function(model, new_data) {
  requireNamespace("caret", quietly = TRUE)

  # Check if 'model' is a valid trained model object from train_classifier
  if (!inherits(model, "train")) {
    stop("Argument 'model' must be a trained model object from train_classifier.")
  }

  # Predict using the model
  predict(model, newdata = new_data)
}
