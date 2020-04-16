

library(xgboost)
data <- read.csv('/Users/StarShipIV/Google_Drive/Progetti/BeltTensioninig/Data/Dataset.csv', na.strings = "Na")

testGlm <- glm(BeltStatus~Potenza+RGS_Corrente_R+StDevAdj_lag1_IR+StDev_lag10_IR+TransitionPhase+Tensione+RGS_Velocita,)

testBoost <- xgboost(BeltStatus~Potenza+RGS_Corrente_R+StDevAdj_lag1_IR+StDev_lag10_IR+TransitionPhase+Tensione+RGS_Velocita,
                     data = data, params = list("eta"= 0.01, "max_depth"= 2), nrounds = 500)