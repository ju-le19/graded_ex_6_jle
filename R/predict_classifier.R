#' Predicts using a trained Random Forest classification model.
#'
#' @param model A trained random forest model object (from train_classifier).
#' @param new_data New data to predict on.
#' @return Predicted class labels.
#' @examples
#' # Train a model using iris dataset
#' model <- train_classifier(iris, Species ~ ., method = "rf")
#'
#' # Predict using new data (first 5 rows of iris dataset)
#' new_data <- iris[1:5, ]
#' predicted <- predict_classifier(model, new_data)
#'
#' @import caret
#' @importFrom stats predict
#' @export
predict_classifier<- function(model, new_data) {
  requireNamespace("caret", quietly = TRUE)
  if (!inherits(model, "train")) {
    stop("Argument 'model' must be a trained model object from train_classifier.")
  }
  predict(model, newdata = new_data)
}
