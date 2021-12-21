correct_metacart <- function (formula, data, vi, subset, c = 1, control = rpart.control(xval = 10,
                                                                    minbucket = 3, minsplit = 6, cp = 1e-04), ...)
{
  Call <- match.call()
  wts.metacart <- NULL
  indx <- match(c("formula", "data", "vi", "subset"), names(Call),
                nomatch = 0L)
  if (indx[1] == 0L)
    stop("a 'formula' argument is required")
  if (indx[3] == 0L)
    stop("The sampling variances need to be specified")
  temp <- Call[c(1L, indx)]
  temp[[1L]] <- quote(stats::model.frame)
  temp[["vi"]] <- NULL
  m <- eval.parent(temp)
  wts.metacart <- c(t(1/vi))
  Args <- c(list(formula = formula, weights = wts.metacart, data = m, control = control), list(...))
  tree <- do.call(rpart, Args)
  prunedtree <- metacart:::treepruner(tree, c * sqrt(mean(wts.metacart)))
  tree$cptable[, 5] <- tree$cptable[, 5] * sqrt(mean(wts.metacart))
  if (length(unique(prunedtree$where)) < 2) {
    warning("no moderator effect was detected")
    y <- model.response(m)
    v <- c(t(vi))
    n <- length(y)
    g <- sum(y/v)/sum(1/v)
    Q <- sum((y - g)^2/v)
    df <- n - 1
    pval.Q <- pchisq(Q, df, lower.tail = FALSE)
    se <- 1/sqrt(sum(1/v))
    zval <- g/se
    pval <- pnorm(abs(zval), lower.tail = FALSE) * 2
    ci.lb <- g - qnorm(0.975) * se
    ci.ub <- g + qnorm(0.975) * se
    res <- list(n = n, Q = Q, df = df, pval.Q = pval.Q,
                g = g, se = se, zval = zval, pval = pval, ci.lb = ci.lb,
                ci.ub = ci.ub, call = Call, cv.res = tree$cptable,
                data = m)
  }
  else {
    y <- model.response(m)
    v <- c(t(vi))
    treeframe <- prunedtree$frame
    n <- treeframe[treeframe$var == "<leaf>", 2]
    Qw <- treeframe[treeframe$var == "<leaf>", 4]
    g <- treeframe[treeframe$var == "<leaf>", 5]
    Qb <- treeframe[1, 4] - sum(Qw)
    df <- length(unique(prunedtree$where)) - 1
    pval.Qb <- pchisq(Qb, df, lower.tail = FALSE)
    se <- tapply(v, prunedtree$where, function(x) sqrt(1/sum(1/x)))
    names(se) <- rownames(treeframe)[as.numeric(names(se))]
    zval <- g/se
    pval <- pnorm(abs(zval), lower.tail = FALSE) * 2
    ci.lb <- g - qnorm(0.975) * se
    ci.ub <- g + qnorm(0.975) * se
    mod.names <- unique(prunedtree$frame$var[prunedtree$frame$var !=
                                               "<leaf>"])
    res <- list(tree = prunedtree, n = n, moderators = mod.names,
                Qb = Qb, df = df, pval.Qb = pval.Qb, Qw = Qw, g = g,
                se = se, zval = zval, pval = pval, ci.lb = ci.lb,
                ci.ub = ci.ub, call = Call, cv.res = tree$cptable,
                data = m)
  }
  class(res) <- "FEmrt"
  res
}
