#' Evaluates a trained classification model using accuracy and confusion matrix.
#'
#' @param model Trained model object (from train_classifier).
#' @param testdata Test data for evaluation.
#' @return List with evaluation metrics: accuracy and confusion matrix.
#' @examples
#' model <- train_classifier(iris, Species ~ ., method = "rf")
#' evaluate_classifier(model, testdata = iris[-1, ])
#' @importFrom stats predict
#' @export
evaluate_classifier <- function(model, testdata) {
  requireNamespace("caret", quietly = TRUE)
  preds <- predict(model, newdata = testdata)
  actual <- testdata$Species
  confusion <- table(actual, preds)
  accuracy <- sum(diag(confusion)) / sum(confusion)
  return(list(accuracy = accuracy, confusion_matrix = confusion))
}
