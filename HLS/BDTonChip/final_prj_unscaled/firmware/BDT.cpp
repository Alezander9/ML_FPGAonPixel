#include "BDT.h"
#include "parameters.h"

template<>
void BDT::BDT<n_trees, n_classes, input_arr_t, score_t, threshold_t>::tree_scores(input_arr_t x, score_t scores[fn_classes(n_classes)][n_trees]) const {
  scores[0][0] = tree_0_0.decision_function(x);
}

