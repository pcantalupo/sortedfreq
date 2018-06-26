#' Sorted frequency
#'
#' This function determines the frequency of a set of values. Returns the values and their frequencies. Values are sorted descending by frequency
#' @param df The name of your dataframe
#' @param colname The column name to calculate sorted frequency.
#' @keywords sorted frequency
#' @examples
#' sortedfreq(mtcars, "carb")
#' @details
#' These are the details
sortedfreq = function (df, colname) {
  t = sort(table(df[,colname]), decreasing = T)
  df = data.frame(x = names(t), freq = matrix(t))
  colnames(df)[1] = colname
  df
}

