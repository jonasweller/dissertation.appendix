#Anzeigen und Setzen des Working Directorys
getwd()
setwd("/Users/jonas/Documents/Promotion/Datenauswertung/Daten/Bereinigte Daten DE und USA (final)")


# Einlesen der Bestandslisten als Data Frames
# 204 DE_ETFs
# 218 US_ETFs
# Insgesamt: 422 Bestandslisten

DE_2B76 <- read.csv2("DE_2B76.csv", colClasses = c(Marktwert="numeric"))
DE_2B7A <- read.csv2("DE_2B7A.csv", colClasses = c(Marktwert="numeric"))
DE_2B7B <- read.csv2("DE_2B7B.csv", colClasses = c(Marktwert="numeric"))
DE_2B7C <- read.csv2("DE_2B7C.csv", colClasses = c(Marktwert="numeric"))
DE_2B7D <- read.csv2("DE_2B7D.csv", colClasses = c(Marktwert="numeric"))
DE_2B7K <- read.csv2("DE_2B7K.csv", colClasses = c(Marktwert="numeric"))
DE_36BZ <- read.csv2("DE_36BZ.csv", colClasses = c(Marktwert="numeric"))
DE_4BRZ <- read.csv2("DE_4BRZ.csv", colClasses = c(Marktwert="numeric"))
DE_5MVL <- read.csv2("DE_5MVL.csv", colClasses = c(Marktwert="numeric"))
DE_AGED <- read.csv2("DE_AGED.csv", colClasses = c(Marktwert="numeric"))
DE_AYEM <- read.csv2("DE_AYEM.csv", colClasses = c(Marktwert="numeric"))
DE_BTEC <- read.csv2("DE_BTEC.csv", colClasses = c(Marktwert="numeric"))
DE_CEBB <- read.csv2("DE_CEBB.csv", colClasses = c(Marktwert="numeric"))
DE_CEBG <- read.csv2("DE_CEBG.csv", colClasses = c(Marktwert="numeric"))
DE_CEBL <- read.csv2("DE_CEBL.csv", colClasses = c(Marktwert="numeric"))
DE_CEBP <- read.csv2("DE_CEBP.csv", colClasses = c(Marktwert="numeric"))
DE_CEM2 <- read.csv2("DE_CEM2.csv", colClasses = c(Marktwert="numeric"))
DE_CEMG <- read.csv2("DE_CEMG.csv", colClasses = c(Marktwert="numeric"))
DE_CEMQ <- read.csv2("DE_CEMQ.csv", colClasses = c(Marktwert="numeric"))
DE_CEMR <- read.csv2("DE_CEMR.csv", colClasses = c(Marktwert="numeric"))
DE_CEMS <- read.csv2("DE_CEMS.csv", colClasses = c(Marktwert="numeric"))
DE_CEMT <- read.csv2("DE_CEMT.csv", colClasses = c(Marktwert="numeric"))
DE_CSKR <- read.csv2("DE_CSKR.csv", colClasses = c(Marktwert="numeric"))
DE_DAXEX <- read.csv2("DE_DAXEX.csv", colClasses = c(Marktwert="numeric"))
DE_DGTL <- read.csv2("DE_DGTL.csv", colClasses = c(Marktwert="numeric"))
DE_EDMF <- read.csv2("DE_EDMF.csv", colClasses = c(Marktwert="numeric"))
DE_EEDS <- read.csv2("DE_EEDS.csv", colClasses = c(Marktwert="numeric"))
DE_EEJD <- read.csv2("DE_EEJD.csv", colClasses = c(Marktwert="numeric"))
DE_EEUD <- read.csv2("DE_EEUD.csv", colClasses = c(Marktwert="numeric"))
DE_EEWD <- read.csv2("DE_EEWD.csv", colClasses = c(Marktwert="numeric"))
DE_EMUD <- read.csv2("DE_EMUD.csv", colClasses = c(Marktwert="numeric"))
DE_EUMD <- read.csv2("DE_EUMD.csv", colClasses = c(Marktwert="numeric"))
DE_EUN0 <- read.csv2("DE_EUN0.csv", colClasses = c(Marktwert="numeric"))
DE_EUN1 <- read.csv2("DE_EUN1.csv", colClasses = c(Marktwert="numeric"))
DE_EUN2 <- read.csv2("DE_EUN2.csv", colClasses = c(Marktwert="numeric"))
DE_EUNI <- read.csv2("DE_EUNI.csv", colClasses = c(Marktwert="numeric"))
DE_EUNJ <- read.csv2("DE_EUNJ.csv", colClasses = c(Marktwert="numeric"))
DE_EUNK <- read.csv2("DE_EUNK.csv", colClasses = c(Marktwert="numeric"))
DE_EUNL <- read.csv2("DE_EUNL.csv", colClasses = c(Marktwert="numeric"))
DE_EUNM <- read.csv2("DE_EUNM.csv", colClasses = c(Marktwert="numeric"))
DE_EUNN <- read.csv2("DE_EUNN.csv", colClasses = c(Marktwert="numeric"))
DE_EUNY <- read.csv2("DE_EUNY.csv", colClasses = c(Marktwert="numeric"))
DE_EUNZ <- read.csv2("DE_EUNZ.csv", colClasses = c(Marktwert="numeric"))
DE_EXH1 <- read.csv2("DE_EXH1.csv", colClasses = c(Marktwert="numeric"))
DE_EXH2 <- read.csv2("DE_EXH2.csv", colClasses = c(Marktwert="numeric"))
DE_EXH3 <- read.csv2("DE_EXH3.csv", colClasses = c(Marktwert="numeric"))
DE_EXH4 <- read.csv2("DE_EXH4.csv", colClasses = c(Marktwert="numeric"))
DE_EXH5 <- read.csv2("DE_EXH5.csv", colClasses = c(Marktwert="numeric"))
DE_EXH6 <- read.csv2("DE_EXH6.csv", colClasses = c(Marktwert="numeric"))
DE_EXH7 <- read.csv2("DE_EXH7.csv", colClasses = c(Marktwert="numeric"))
DE_EXH8 <- read.csv2("DE_EXH8.csv", colClasses = c(Marktwert="numeric"))
DE_EXH9 <- read.csv2("DE_EXH9.csv", colClasses = c(Marktwert="numeric"))
DE_EXI1 <- read.csv2("DE_EXI1.csv", colClasses = c(Marktwert="numeric"))
DE_EXI2 <- read.csv2("DE_EXI2.csv", colClasses = c(Marktwert="numeric"))
DE_EXI3 <- read.csv2("DE_EXI3.csv", colClasses = c(Marktwert="numeric"))
DE_EXS2 <- read.csv2("DE_EXS2.csv", colClasses = c(Marktwert="numeric"))
DE_EXS3 <- read.csv2("DE_EXS3.csv", colClasses = c(Marktwert="numeric"))
DE_EXSA <- read.csv2("DE_EXSA.csv", colClasses = c(Marktwert="numeric"))
DE_EXSB <- read.csv2("DE_EXSB.csv", colClasses = c(Marktwert="numeric"))
DE_EXSC <- read.csv2("DE_EXSC.csv", colClasses = c(Marktwert="numeric"))
DE_EXSD <- read.csv2("DE_EXSD.csv", colClasses = c(Marktwert="numeric"))
DE_EXSE <- read.csv2("DE_EXSE.csv", colClasses = c(Marktwert="numeric"))
DE_EXSG <- read.csv2("DE_EXSG.csv", colClasses = c(Marktwert="numeric"))
DE_EXSH <- read.csv2("DE_EXSH.csv", colClasses = c(Marktwert="numeric"))
DE_EXSI <- read.csv2("DE_EXSI.csv", colClasses = c(Marktwert="numeric"))
DE_EXV1 <- read.csv2("DE_EXV1.csv", colClasses = c(Marktwert="numeric"))
DE_EXV2 <- read.csv2("DE_EXV2.csv", colClasses = c(Marktwert="numeric"))
DE_EXV3 <- read.csv2("DE_EXV3.csv", colClasses = c(Marktwert="numeric"))
DE_EXV4 <- read.csv2("DE_EXV4.csv", colClasses = c(Marktwert="numeric"))
DE_EXV5 <- read.csv2("DE_EXV5.csv", colClasses = c(Marktwert="numeric"))
DE_EXV6 <- read.csv2("DE_EXV6.csv", colClasses = c(Marktwert="numeric"))
DE_EXV7 <- read.csv2("DE_EXV7.csv", colClasses = c(Marktwert="numeric"))
DE_EXV8 <- read.csv2("DE_EXV8.csv", colClasses = c(Marktwert="numeric"))
DE_EXV9 <- read.csv2("DE_EXV9.csv", colClasses = c(Marktwert="numeric"))
DE_EXW1 <- read.csv2("DE_EXW1.csv", colClasses = c(Marktwert="numeric"))
DE_EXW3 <- read.csv2("DE_EXW3.csv", colClasses = c(Marktwert="numeric"))
DE_EXX1 <- read.csv2("DE_EXX1.csv", colClasses = c(Marktwert="numeric"))
DE_EXX2 <- read.csv2("DE_EXX2.csv", colClasses = c(Marktwert="numeric"))
DE_EXX5 <- read.csv2("DE_EXX5.csv", colClasses = c(Marktwert="numeric"))
DE_EXX7 <- read.csv2("DE_EXX7.csv", colClasses = c(Marktwert="numeric"))
DE_EXXT <- read.csv2("DE_EXXT.csv", colClasses = c(Marktwert="numeric"))
DE_EXXU <- read.csv2("DE_EXXU.csv", colClasses = c(Marktwert="numeric"))
DE_EXXV <- read.csv2("DE_EXXV.csv", colClasses = c(Marktwert="numeric"))
DE_EXXW <- read.csv2("DE_EXXW.csv", colClasses = c(Marktwert="numeric"))
DE_EXXX <- read.csv2("DE_EXXX.csv", colClasses = c(Marktwert="numeric"))
DE_HEAL <- read.csv2("DE_HEAL.csv", colClasses = c(Marktwert="numeric"))
DE_IAEX <- read.csv2("DE_IAEX.csv", colClasses = c(Marktwert="numeric"))
DE_IBC0 <- read.csv2("DE_IBC0.csv", colClasses = c(Marktwert="numeric"))
DE_IBC4 <- read.csv2("DE_IBC4.csv", colClasses = c(Marktwert="numeric"))
DE_IBC6 <- read.csv2("DE_IBC6.csv", colClasses = c(Marktwert="numeric"))
DE_IBCF <- read.csv2("DE_IBCF.csv", colClasses = c(Marktwert="numeric"))
DE_IBCG <- read.csv2("DE_IBCG.csv", colClasses = c(Marktwert="numeric"))
DE_IBCH <- read.csv2("DE_IBCH.csv", colClasses = c(Marktwert="numeric"))
DE_IBCJ <- read.csv2("DE_IBCJ.csv", colClasses = c(Marktwert="numeric"))
DE_IBCK <- read.csv2("DE_IBCK.csv", colClasses = c(Marktwert="numeric"))
DE_IBCY <- read.csv2("DE_IBCY.csv", colClasses = c(Marktwert="numeric"))
DE_IBCZ <- read.csv2("DE_IBCZ.csv", colClasses = c(Marktwert="numeric"))
DE_ICGA <- read.csv2("DE_ICGA.csv", colClasses = c(Marktwert="numeric"))
DE_IEVD <- read.csv2("DE_IEVD.csv", colClasses = c(Marktwert="numeric"))
DE_IFRE <- read.csv2("DE_IFRE.csv", colClasses = c(Marktwert="numeric"))
DE_IGWD <- read.csv2("DE_IGWD.csv", colClasses = c(Marktwert="numeric"))
DE_IJPC <- read.csv2("DE_IJPC.csv", colClasses = c(Marktwert="numeric"))
DE_IJPD <- read.csv2("DE_IJPD.csv", colClasses = c(Marktwert="numeric"))
DE_IMIB <- read.csv2("DE_IMIB.csv", colClasses = c(Marktwert="numeric"))
DE_IPIR <- read.csv2("DE_IPIR.csv", colClasses = c(Marktwert="numeric"))
DE_IQQ0 <- read.csv2("DE_IQQ0.csv", colClasses = c(Marktwert="numeric"))
DE_IQQ5 <- read.csv2("DE_IQQ5.csv", colClasses = c(Marktwert="numeric"))
DE_IQQ9 <- read.csv2("DE_IQQ9.csv", colClasses = c(Marktwert="numeric"))
DE_IQQA <- read.csv2("DE_IQQA.csv", colClasses = c(Marktwert="numeric"))
DE_IQQB <- read.csv2("DE_IQQB.csv", colClasses = c(Marktwert="numeric"))
DE_IQQC <- read.csv2("DE_IQQC.csv", colClasses = c(Marktwert="numeric"))
DE_IQQD <- read.csv2("DE_IQQD.csv", colClasses = c(Marktwert="numeric"))
DE_IQQE <- read.csv2("DE_IQQE.csv", colClasses = c(Marktwert="numeric"))
DE_IQQF <- read.csv2("DE_IQQF.csv", colClasses = c(Marktwert="numeric"))
DE_IQQG <- read.csv2("DE_IQQG.csv", colClasses = c(Marktwert="numeric"))
DE_IQQH <- read.csv2("DE_IQQH.csv", colClasses = c(Marktwert="numeric"))
DE_IQQI <- read.csv2("DE_IQQI.csv", colClasses = c(Marktwert="numeric"))
DE_IQQJ <- read.csv2("DE_IQQJ.csv", colClasses = c(Marktwert="numeric"))
DE_IQQK <- read.csv2("DE_IQQK.csv", colClasses = c(Marktwert="numeric"))
DE_IQQL <- read.csv2("DE_IQQL.csv", colClasses = c(Marktwert="numeric"))
DE_IQQM <- read.csv2("DE_IQQM.csv", colClasses = c(Marktwert="numeric"))
DE_IQQN <- read.csv2("DE_IQQN.csv", colClasses = c(Marktwert="numeric"))
DE_IQQQ <- read.csv2("DE_IQQQ.csv", colClasses = c(Marktwert="numeric"))
DE_IQQR <- read.csv2("DE_IQQR.csv", colClasses = c(Marktwert="numeric"))
DE_IQQS <- read.csv2("DE_IQQS.csv", colClasses = c(Marktwert="numeric"))
DE_IQQT <- read.csv2("DE_IQQT.csv", colClasses = c(Marktwert="numeric"))
DE_IQQU <- read.csv2("DE_IQQU.csv", colClasses = c(Marktwert="numeric"))
DE_IQQV <- read.csv2("DE_IQQV.csv", colClasses = c(Marktwert="numeric"))
DE_IQQW <- read.csv2("DE_IQQW.csv", colClasses = c(Marktwert="numeric"))
DE_IQQX <- read.csv2("DE_IQQX.csv", colClasses = c(Marktwert="numeric"))
DE_IQQY <- read.csv2("DE_IQQY.csv", colClasses = c(Marktwert="numeric"))
DE_IS0D <- read.csv2("DE_IS0D.csv", colClasses = c(Marktwert="numeric"))
DE_IS0E <- read.csv2("DE_IS0E.csv", colClasses = c(Marktwert="numeric"))
DE_IS3G <- read.csv2("DE_IS3G.csv", colClasses = c(Marktwert="numeric"))
DE_IS3H <- read.csv2("DE_IS3H.csv", colClasses = c(Marktwert="numeric"))
DE_IS3N <- read.csv2("DE_IS3N.csv", colClasses = c(Marktwert="numeric"))
DE_IS3Q <- read.csv2("DE_IS3Q.csv", colClasses = c(Marktwert="numeric"))
DE_IS3R <- read.csv2("DE_IS3R.csv", colClasses = c(Marktwert="numeric"))
DE_IS3S <- read.csv2("DE_IS3S.csv", colClasses = c(Marktwert="numeric"))
DE_IS3T <- read.csv2("DE_IS3T.csv", colClasses = c(Marktwert="numeric"))
DE_ISDE <- read.csv2("DE_ISDE.csv", colClasses = c(Marktwert="numeric"))
DE_ISFE <- read.csv2("DE_ISFE.csv", colClasses = c(Marktwert="numeric"))
DE_ISPA <- read.csv2("DE_ISPA.csv", colClasses = c(Marktwert="numeric"))
DE_ISUS <- read.csv2("DE_ISUS.csv", colClasses = c(Marktwert="numeric"))
DE_ISWD <- read.csv2("DE_ISWD.csv", colClasses = c(Marktwert="numeric"))
DE_IUCM <- read.csv2("DE_IUCM.csv", colClasses = c(Marktwert="numeric"))
DE_IUS2 <- read.csv2("DE_IUS2.csv", colClasses = c(Marktwert="numeric"))
DE_IUS3 <- read.csv2("DE_IUS3.csv", colClasses = c(Marktwert="numeric"))
DE_IUS4 <- read.csv2("DE_IUS4.csv", colClasses = c(Marktwert="numeric"))
DE_IUS8 <- read.csv2("DE_IUS8.csv", colClasses = c(Marktwert="numeric"))
DE_IUSA <- read.csv2("DE_IUSA.csv", colClasses = c(Marktwert="numeric"))
DE_IUSC <- read.csv2("DE_IUSC.csv", colClasses = c(Marktwert="numeric"))
DE_IUSK <- read.csv2("DE_IUSK.csv", colClasses = c(Marktwert="numeric"))
DE_IUSL <- read.csv2("DE_IUSL.csv", colClasses = c(Marktwert="numeric"))
DE_IUSN <- read.csv2("DE_IUSN.csv", colClasses = c(Marktwert="numeric"))
DE_IUSQ <- read.csv2("DE_IUSQ.csv", colClasses = c(Marktwert="numeric"))
DE_IUSR <- read.csv2("DE_IUSR.csv", colClasses = c(Marktwert="numeric"))
DE_IUSS <- read.csv2("DE_IUSS.csv", colClasses = c(Marktwert="numeric"))
DE_IUSZ <- read.csv2("DE_IUSZ.csv", colClasses = c(Marktwert="numeric"))
DE_LOCK <- read.csv2("DE_LOCK.csv", colClasses = c(Marktwert="numeric"))
DE_MIDD <- read.csv2("DE_MIDD.csv", colClasses = c(Marktwert="numeric"))
DE_NDIA <- read.csv2("DE_NDIA.csv", colClasses = c(Marktwert="numeric"))
DE_OM3X <- read.csv2("DE_OM3X.csv", colClasses = c(Marktwert="numeric"))
DE_OPEN <- read.csv2("DE_OPEN.csv", colClasses = c(Marktwert="numeric"))
DE_QDVA <- read.csv2("DE_QDVA.csv", colClasses = c(Marktwert="numeric"))
DE_QDVB <- read.csv2("DE_QDVB.csv", colClasses = c(Marktwert="numeric"))
DE_QDVC <- read.csv2("DE_QDVC.csv", colClasses = c(Marktwert="numeric"))
DE_QDVD <- read.csv2("DE_QDVD.csv", colClasses = c(Marktwert="numeric"))
DE_QDVE <- read.csv2("DE_QDVE.csv", colClasses = c(Marktwert="numeric"))
DE_QDVF <- read.csv2("DE_QDVF.csv", colClasses = c(Marktwert="numeric"))
DE_QDVG <- read.csv2("DE_QDVG.csv", colClasses = c(Marktwert="numeric"))
DE_QDVH <- read.csv2("DE_QDVH.csv", colClasses = c(Marktwert="numeric"))
DE_QDVI <- read.csv2("DE_QDVI.csv", colClasses = c(Marktwert="numeric"))
DE_QDVK <- read.csv2("DE_QDVK.csv", colClasses = c(Marktwert="numeric"))
DE_QDVM <- read.csv2("DE_QDVM.csv", colClasses = c(Marktwert="numeric"))
DE_QDVN <- read.csv2("DE_QDVN.csv", colClasses = c(Marktwert="numeric"))
DE_QDVR <- read.csv2("DE_QDVR.csv", colClasses = c(Marktwert="numeric"))
DE_QDVS <- read.csv2("DE_QDVS.csv", colClasses = c(Marktwert="numeric"))
DE_QDVW <- read.csv2("DE_QDVW.csv", colClasses = c(Marktwert="numeric"))
DE_QDVX <- read.csv2("DE_QDVX.csv", colClasses = c(Marktwert="numeric"))
DE_SGAJ <- read.csv2("DE_SGAJ.csv", colClasses = c(Marktwert="numeric"))
DE_SGAS <- read.csv2("DE_SGAS.csv", colClasses = c(Marktwert="numeric"))
DE_SLMA <- read.csv2("DE_SLMA.csv", colClasses = c(Marktwert="numeric"))
DE_SLMC <- read.csv2("DE_SLMC.csv", colClasses = c(Marktwert="numeric"))
DE_SNAW <- read.csv2("DE_SNAW.csv", colClasses = c(Marktwert="numeric"))
DE_SPAG <- read.csv2("DE_SPAG.csv", colClasses = c(Marktwert="numeric"))
DE_SXR1 <- read.csv2("DE_SXR1.csv", colClasses = c(Marktwert="numeric"))
DE_SXR2 <- read.csv2("DE_SXR2.csv", colClasses = c(Marktwert="numeric"))
DE_SXR3 <- read.csv2("DE_SXR3.csv", colClasses = c(Marktwert="numeric"))
DE_SXR4 <- read.csv2("DE_SXR4.csv", colClasses = c(Marktwert="numeric"))
DE_SXR5 <- read.csv2("DE_SXR5.csv", colClasses = c(Marktwert="numeric"))
DE_SXR6 <- read.csv2("DE_SXR6.csv", colClasses = c(Marktwert="numeric"))
DE_SXR7 <- read.csv2("DE_SXR7.csv", colClasses = c(Marktwert="numeric"))
DE_SXR8 <- read.csv2("DE_SXR8.csv", colClasses = c(Marktwert="numeric"))
DE_SXRD <- read.csv2("DE_SXRD.csv", colClasses = c(Marktwert="numeric"))
DE_SXRG <- read.csv2("DE_SXRG.csv", colClasses = c(Marktwert="numeric"))
DE_SXRJ <- read.csv2("DE_SXRJ.csv", colClasses = c(Marktwert="numeric"))
DE_SXRT <- read.csv2("DE_SXRT.csv", colClasses = c(Marktwert="numeric"))
DE_SXRU <- read.csv2("DE_SXRU.csv", colClasses = c(Marktwert="numeric"))
DE_SXRV <- read.csv2("DE_SXRV.csv", colClasses = c(Marktwert="numeric"))
DE_SXRW <- read.csv2("DE_SXRW.csv", colClasses = c(Marktwert="numeric"))
DE_SXRY <- read.csv2("DE_SXRY.csv", colClasses = c(Marktwert="numeric"))
DE_SXRZ <- read.csv2("DE_SXRZ.csv", colClasses = c(Marktwert="numeric"))
DE_WOOD <- read.csv2("DE_WOOD.csv", colClasses = c(Marktwert="numeric"))
US_AAXJ <- read.csv2("US_AAXJ.csv", colClasses = c(Market.Value="numeric"))
US_ACWF <- read.csv2("US_ACWF.csv", colClasses = c(Market.Value="numeric"))
US_ACWI <- read.csv2("US_ACWI.csv", colClasses = c(Market.Value="numeric"))
US_ACWV <- read.csv2("US_ACWV.csv", colClasses = c(Market.Value="numeric"))
US_ACWX <- read.csv2("US_ACWX.csv", colClasses = c(Market.Value="numeric"))
US_AGT <- read.csv2("US_AGT.csv", colClasses = c(Market.Value="numeric"))
US_AIA <- read.csv2("US_AIA.csv", colClasses = c(Market.Value="numeric"))
US_AMCA <- read.csv2("US_AMCA.csv", colClasses = c(Market.Value="numeric"))
US_BKF <- read.csv2("US_BKF.csv", colClasses = c(Market.Value="numeric"))
US_CNYA <- read.csv2("US_CNYA.csv", colClasses = c(Market.Value="numeric"))
US_CRBN <- read.csv2("US_CRBN.csv", colClasses = c(Market.Value="numeric"))
US_DGRO <- read.csv2("US_DGRO.csv", colClasses = c(Market.Value="numeric"))
US_DIVB <- read.csv2("US_DIVB.csv", colClasses = c(Market.Value="numeric"))
US_DSI <- read.csv2("US_DSI.csv", colClasses = c(Market.Value="numeric"))
US_DVY <- read.csv2("US_DVY.csv", colClasses = c(Market.Value="numeric"))
US_DVYA <- read.csv2("US_DVYA.csv", colClasses = c(Market.Value="numeric"))
US_DVYE <- read.csv2("US_DVYE.csv", colClasses = c(Market.Value="numeric"))
US_ECH <- read.csv2("US_ECH.csv", colClasses = c(Market.Value="numeric"))
US_ECNS <- read.csv2("US_ECNS.csv", colClasses = c(Market.Value="numeric"))
US_EDEN<- read.csv2("US_EDEN.csv", colClasses = c(Market.Value="numeric"))
US_EEM <- read.csv2("US_EEM.csv", colClasses = c(Market.Value="numeric"))
US_EEMA <- read.csv2("US_EEMA.csv", colClasses = c(Market.Value="numeric"))
US_EEMS <- read.csv2("US_EEMS.csv", colClasses = c(Market.Value="numeric"))
US_EEMV <- read.csv2("US_EEMV.csv", colClasses = c(Market.Value="numeric"))
US_EFA <- read.csv2("US_EFA.csv", colClasses = c(Market.Value="numeric"))
US_EFAV <- read.csv2("US_EFAV.csv", colClasses = c(Market.Value="numeric"))
US_EFG <- read.csv2("US_EFG.csv", colClasses = c(Market.Value="numeric"))
US_EFNL <- read.csv2("US_EFNL.csv", colClasses = c(Market.Value="numeric"))
US_EFV <- read.csv2("US_EFV.csv", colClasses = c(Market.Value="numeric"))
US_EIDO <- read.csv2("US_EIDO.csv", colClasses = c(Market.Value="numeric"))
US_EIRL <- read.csv2("US_EIRL.csv", colClasses = c(Market.Value="numeric"))
US_EIS <- read.csv2("US_EIS.csv", colClasses = c(Market.Value="numeric"))
US_EMGF <- read.csv2("US_EMGF.csv", colClasses = c(Market.Value="numeric"))
US_EMIF <- read.csv2("US_EMIF.csv", colClasses = c(Market.Value="numeric"))
US_EMXC <- read.csv2("US_EMXC.csv", colClasses = c(Market.Value="numeric"))
US_ENOR <- read.csv2("US_ENOR.csv", colClasses = c(Market.Value="numeric"))
US_ENZL <- read.csv2("US_ENZL.csv", colClasses = c(Market.Value="numeric"))
US_EPHE <- read.csv2("US_EPHE.csv", colClasses = c(Market.Value="numeric"))
US_EPOL <- read.csv2("US_EPOL.csv", colClasses = c(Market.Value="numeric"))
US_EPP <- read.csv2("US_EPP.csv", colClasses = c(Market.Value="numeric"))
US_EPU <- read.csv2("US_EPU.csv", colClasses = c(Market.Value="numeric"))
US_ERUS <- read.csv2("US_ERUS.csv", colClasses = c(Market.Value="numeric"))
US_ESGD <- read.csv2("US_ESGD.csv", colClasses = c(Market.Value="numeric"))
US_ESGE <- read.csv2("US_ESGE.csv", colClasses = c(Market.Value="numeric"))
US_ESGU <- read.csv2("US_ESGU.csv", colClasses = c(Market.Value="numeric"))
US_ESML <- read.csv2("US_ESML.csv", colClasses = c(Market.Value="numeric"))
US_EUFN <- read.csv2("US_EUFN.csv", colClasses = c(Market.Value="numeric"))
US_EUMV <- read.csv2("US_EUMV.csv", colClasses = c(Market.Value="numeric"))
US_EUSA <- read.csv2("US_EUSA.csv", colClasses = c(Market.Value="numeric"))
US_EWA <- read.csv2("US_EWA.csv", colClasses = c(Market.Value="numeric"))
US_EWC <- read.csv2("US_EWC.csv", colClasses = c(Market.Value="numeric"))
US_EWD <- read.csv2("US_EWD.csv", colClasses = c(Market.Value="numeric"))
US_EWG <- read.csv2("US_EWG.csv", colClasses = c(Market.Value="numeric"))
US_EWGS <- read.csv2("US_EWGS.csv", colClasses = c(Market.Value="numeric"))
US_EWH <- read.csv2("US_EWH.csv", colClasses = c(Market.Value="numeric"))
US_EWI <- read.csv2("US_EWI.csv", colClasses = c(Market.Value="numeric"))
US_EWJ <- read.csv2("US_EWJ.csv", colClasses = c(Market.Value="numeric"))
US_EWJE <- read.csv2("US_EWJE.csv", colClasses = c(Market.Value="numeric"))
US_EWJV <- read.csv2("US_EWJV.csv", colClasses = c(Market.Value="numeric"))
US_EWK <- read.csv2("US_EWK.csv", colClasses = c(Market.Value="numeric"))
US_EWL <- read.csv2("US_EWL.csv", colClasses = c(Market.Value="numeric"))
US_EWM <- read.csv2("US_EWM.csv", colClasses = c(Market.Value="numeric"))
US_EWN <- read.csv2("US_EWN.csv", colClasses = c(Market.Value="numeric"))
US_EWO <- read.csv2("US_EWO.csv", colClasses = c(Market.Value="numeric"))
US_EWP <- read.csv2("US_EWP.csv", colClasses = c(Market.Value="numeric"))
US_EWQ <- read.csv2("US_EWQ.csv", colClasses = c(Market.Value="numeric"))
US_EWS <- read.csv2("US_EWS.csv", colClasses = c(Market.Value="numeric"))
US_EWT <- read.csv2("US_EWT.csv", colClasses = c(Market.Value="numeric"))
US_EWU <- read.csv2("US_EWU.csv", colClasses = c(Market.Value="numeric"))
US_EWUS <- read.csv2("US_EWUS.csv", colClasses = c(Market.Value="numeric"))
US_EWW <- read.csv2("US_EWW.csv", colClasses = c(Market.Value="numeric"))
US_EWY <- read.csv2("US_EWY.csv", colClasses = c(Market.Value="numeric"))
US_EWZ <- read.csv2("US_EWZ.csv", colClasses = c(Market.Value="numeric"))
US_EWZS <- read.csv2("US_EWZS.csv", colClasses = c(Market.Value="numeric"))
US_EXI <- read.csv2("US_EXI.csv", colClasses = c(Market.Value="numeric"))
US_EZA <- read.csv2("US_EZA.csv", colClasses = c(Market.Value="numeric"))
US_EZU <- read.csv2("US_EZU.csv", colClasses = c(Market.Value="numeric"))
US_FILL <- read.csv2("US_FILL.csv", colClasses = c(Market.Value="numeric"))
US_FM <- read.csv2("US_FM.csv", colClasses = c(Market.Value="numeric"))
US_FOVL <- read.csv2("US_FOVL.csv", colClasses = c(Market.Value="numeric"))
US_FXI <- read.csv2("US_FXI.csv", colClasses = c(Market.Value="numeric"))
US_HDV <- read.csv2("US_HDV.csv", colClasses = c(Market.Value="numeric"))
US_IAI <- read.csv2("US_IAI.csv", colClasses = c(Market.Value="numeric"))
US_IAK <- read.csv2("US_IAK.csv", colClasses = c(Market.Value="numeric"))
US_IAT <- read.csv2("US_IAT.csv", colClasses = c(Market.Value="numeric"))
US_IBB <- read.csv2("US_IBB.csv", colClasses = c(Market.Value="numeric"))
US_ICLN <- read.csv2("US_ICLN.csv", colClasses = c(Market.Value="numeric"))
US_ICOL <- read.csv2("US_ICOL.csv", colClasses = c(Market.Value="numeric"))
US_IDEV <- read.csv2("US_IDEV.csv", colClasses = c(Market.Value="numeric"))
US_IDNA <- read.csv2("US_IDNA.csv", colClasses = c(Market.Value="numeric"))
US_IDRV <- read.csv2("US_IDRV.csv", colClasses = c(Market.Value="numeric"))
US_IDU <- read.csv2("US_IDU.csv", colClasses = c(Market.Value="numeric"))
US_IDV <- read.csv2("US_IDV.csv", colClasses = c(Market.Value="numeric"))
US_IEFA <- read.csv2("US_IEFA.csv", colClasses = c(Market.Value="numeric"))
US_IEMG <- read.csv2("US_IEMG.csv", colClasses = c(Market.Value="numeric"))
US_IEO <- read.csv2("US_IEO.csv", colClasses = c(Market.Value="numeric"))
US_IEUR<- read.csv2("US_IEUR.csv", colClasses = c(Market.Value="numeric"))
US_IEUS <- read.csv2("US_IEUS.csv", colClasses = c(Market.Value="numeric"))
US_IEV <- read.csv2("US_IEV.csv", colClasses = c(Market.Value="numeric"))
US_IEZ <- read.csv2("US_IEZ.csv", colClasses = c(Market.Value="numeric"))
US_IFRA <- read.csv2("US_IFRA.csv", colClasses = c(Market.Value="numeric"))
US_IGE <- read.csv2("US_IGE.csv", colClasses = c(Market.Value="numeric"))
US_IGF <- read.csv2("US_IGF.csv", colClasses = c(Market.Value="numeric"))
US_IGM <- read.csv2("US_IGM.csv", colClasses = c(Market.Value="numeric"))
US_IGN <- read.csv2("US_IGN.csv", colClasses = c(Market.Value="numeric"))
US_IGRO <- read.csv2("US_IGRO.csv", colClasses = c(Market.Value="numeric"))
US_IGV <- read.csv2("US_IGV.csv", colClasses = c(Market.Value="numeric"))
US_IHAK <- read.csv2("US_IHAK.csv", colClasses = c(Market.Value="numeric"))
US_IHE <- read.csv2("US_IHE.csv", colClasses = c(Market.Value="numeric"))
US_IHF <- read.csv2("US_IHF.csv", colClasses = c(Market.Value="numeric"))
US_IHI <- read.csv2("US_IHI.csv", colClasses = c(Market.Value="numeric"))
US_IJH <- read.csv2("US_IJH.csv", colClasses = c(Market.Value="numeric"))
US_IJJ<- read.csv2("US_IJJ.csv", colClasses = c(Market.Value="numeric"))
US_IJK <- read.csv2("US_IJK.csv", colClasses = c(Market.Value="numeric"))
US_IJR <- read.csv2("US_IJR.csv", colClasses = c(Market.Value="numeric"))
US_IJS <- read.csv2("US_IJS.csv", colClasses = c(Market.Value="numeric"))
US_IJT <- read.csv2("US_IJT.csv", colClasses = c(Market.Value="numeric"))
US_ILF <- read.csv2("US_ILF.csv", colClasses = c(Market.Value="numeric"))
US_IMTM <- read.csv2("US_IMTM.csv", colClasses = c(Market.Value="numeric"))
US_INDA <- read.csv2("US_INDA.csv" , colClasses = c(Market.Value="numeric"))
US_INDY <- read.csv2("US_INDY.csv", colClasses = c(Market.Value="numeric"))
US_INTF <- read.csv2("US_INTF.csv", colClasses = c(Market.Value="numeric"))
US_IOO <- read.csv2("US_IOO.csv", colClasses = c(Market.Value="numeric"))
US_IPAC <- read.csv2("US_IPAC.csv", colClasses = c(Market.Value="numeric"))
US_IPFF <- read.csv2("US_IPFF.csv", colClasses = c(Market.Value="numeric"))
US_IQLT <- read.csv2("US_IQLT.csv", colClasses = c(Market.Value="numeric"))
US_IRBO <- read.csv2("US_IRBO.csv", colClasses = c(Market.Value="numeric"))
US_ISCF <- read.csv2("US_ISCF.csv", colClasses = c(Market.Value="numeric"))
US_ISZE <- read.csv2("US_ISZE.csv", colClasses = c(Market.Value="numeric"))
US_ITA <- read.csv2("US_ITA.csv", colClasses = c(Market.Value="numeric"))
US_ITB <- read.csv2("US_ITB.csv", colClasses = c(Market.Value="numeric"))
US_ITOT <- read.csv2("US_ITOT.csv", colClasses = c(Market.Value="numeric"))
US_IUSG <- read.csv2("US_IUSG.csv", colClasses = c(Market.Value="numeric"))
US_IUSV <- read.csv2("US_IUSV.csv", colClasses = c(Market.Value="numeric"))
US_IVE <- read.csv2("US_IVE.csv", colClasses = c(Market.Value="numeric"))
US_IVLU <- read.csv2("US_IVLU.csv", colClasses = c(Market.Value="numeric"))
US_IVV <- read.csv2("US_IVV.csv", colClasses = c(Market.Value="numeric"))
US_IVW <- read.csv2("US_IVW.csv", colClasses = c(Market.Value="numeric"))
US_IWB <- read.csv2("US_IWB.csv", colClasses = c(Market.Value="numeric"))
US_IWC <- read.csv2("US_IWC.csv", colClasses = c(Market.Value="numeric"))
US_IWD <- read.csv2("US_IWD.csv", colClasses = c(Market.Value="numeric"))
US_IWF <- read.csv2("US_IWF.csv", colClasses = c(Market.Value="numeric"))
US_IWL <- read.csv2("US_IWL.csv", colClasses = c(Market.Value="numeric"))
US_IWM <- read.csv2("US_IWM.csv", colClasses = c(Market.Value="numeric"))
US_IWN <- read.csv2("US_IWN.csv", colClasses = c(Market.Value="numeric"))
US_IWO <- read.csv2("US_IWO.csv", colClasses = c(Market.Value="numeric"))
US_IWP <- read.csv2("US_IWP.csv", colClasses = c(Market.Value="numeric"))
US_IWR <- read.csv2("US_IWR.csv", colClasses = c(Market.Value="numeric"))
US_IWS <- read.csv2("US_IWS.csv", colClasses = c(Market.Value="numeric"))
US_IWV <- read.csv2("US_IWV.csv", colClasses = c(Market.Value="numeric"))
US_IWX <- read.csv2("US_IWX.csv", colClasses = c(Market.Value="numeric"))
US_IWY <- read.csv2("US_IWY.csv", colClasses = c(Market.Value="numeric"))
US_IXC <- read.csv2("US_IXC.csv", colClasses = c(Market.Value="numeric"))
US_IXG <- read.csv2("US_IXG.csv", colClasses = c(Market.Value="numeric"))
US_IXJ <- read.csv2("US_IXJ.csv", colClasses = c(Market.Value="numeric"))
US_IXN <- read.csv2("US_IXN.csv", colClasses = c(Market.Value="numeric"))
US_IXP <- read.csv2("US_IXP.csv", colClasses = c(Market.Value="numeric"))
US_IXUS <- read.csv2("US_IXUS.csv", colClasses = c(Market.Value="numeric"))
US_IYC <- read.csv2("US_IYC.csv", colClasses = c(Market.Value="numeric"))
US_IYE <- read.csv2("US_IYE.csv", colClasses = c(Market.Value="numeric"))
US_IYF <- read.csv2("US_IYF.csv", colClasses = c(Market.Value="numeric"))
US_IYG <- read.csv2("US_IYG.csv", colClasses = c(Market.Value="numeric"))
US_IYH <- read.csv2("US_IYH.csv", colClasses = c(Market.Value="numeric"))
US_IYJ <- read.csv2("US_IYJ.csv", colClasses = c(Market.Value="numeric"))
US_IYK <- read.csv2("US_IYK.csv", colClasses = c(Market.Value="numeric"))
US_IYM <- read.csv2("US_IYM.csv", colClasses = c(Market.Value="numeric"))
US_IYT <- read.csv2("US_IYT.csv", colClasses = c(Market.Value="numeric"))
US_IYW <- read.csv2("US_IYW.csv", colClasses = c(Market.Value="numeric"))
US_IYY <- read.csv2("US_IYY.csv", colClasses = c(Market.Value="numeric"))
US_IYZ <- read.csv2("US_IYZ.csv", colClasses = c(Market.Value="numeric"))
US_JKD <- read.csv2("US_JKD.csv", colClasses = c(Market.Value="numeric"))
US_JKE <- read.csv2("US_JKE.csv", colClasses = c(Market.Value="numeric"))
US_JKF <- read.csv2("US_JKF.csv", colClasses = c(Market.Value="numeric"))
US_JKG <- read.csv2("US_JKG.csv", colClasses = c(Market.Value="numeric"))
US_JKH <- read.csv2("US_JKH.csv", colClasses = c(Market.Value="numeric"))
US_JKI <- read.csv2("US_JKI.csv", colClasses = c(Market.Value="numeric"))
US_JKJ <- read.csv2("US_JKJ.csv", colClasses = c(Market.Value="numeric"))
US_JKK <- read.csv2("US_JKK.csv", colClasses = c(Market.Value="numeric"))
US_JKL <- read.csv2("US_JKL.csv", colClasses = c(Market.Value="numeric"))
US_JPMV <- read.csv2("US_JPMV.csv", colClasses = c(Market.Value="numeric"))
US_JPXN <- read.csv2("US_JPXN.csv", colClasses = c(Market.Value="numeric"))
US_JXI <- read.csv2("US_JXI.csv", colClasses = c(Market.Value="numeric"))
US_KSA <- read.csv2("US_KSA.csv", colClasses = c(Market.Value="numeric"))
US_KXI <- read.csv2("US_KXI.csv", colClasses = c(Market.Value="numeric"))
US_LRGF <- read.csv2("US_LRGF.csv", colClasses = c(Market.Value="numeric"))
US_MCHI <- read.csv2("US_MCHI.csv", colClasses = c(Market.Value="numeric"))
US_MIDF <- read.csv2("US_MIDF.csv", colClasses = c(Market.Value="numeric"))
US_MTUM <- read.csv2("US_MTUM.csv", colClasses = c(Market.Value="numeric"))
US_MXI <- read.csv2("US_MXI.csv", colClasses = c(Market.Value="numeric"))
US_OEF <- read.csv2("US_OEF.csv", colClasses = c(Market.Value="numeric"))
US_PFF <- read.csv2("US_PFF.csv", colClasses = c(Market.Value="numeric"))
US_PICK <- read.csv2("US_PICK.csv", colClasses = c(Market.Value="numeric"))
US_QAT <- read.csv2("US_QAT.csv", colClasses = c(Market.Value="numeric"))
US_QUAL <- read.csv2("US_QUAL.csv", colClasses = c(Market.Value="numeric"))
US_RING <- read.csv2("US_RING.csv", colClasses = c(Market.Value="numeric"))
US_RXI <- read.csv2("US_RXI.csv", colClasses = c(Market.Value="numeric"))
US_SCJ <- read.csv2("US_SCJ.csv", colClasses = c(Market.Value="numeric"))
US_SCZ <- read.csv2("US_SCZ.csv", colClasses = c(Market.Value="numeric"))
US_SDG <- read.csv2("US_SDG.csv", colClasses = c(Market.Value="numeric"))
US_SIZE <- read.csv2("US_SIZE.csv", colClasses = c(Market.Value="numeric"))
US_SLVP <- read.csv2("US_SLVP.csv", colClasses = c(Market.Value="numeric"))
US_SMIN <- read.csv2("US_SMIN.csv", colClasses = c(Market.Value="numeric"))
US_SMLF <- read.csv2("US_SMLF.csv", colClasses = c(Market.Value="numeric"))
US_SMMD <- read.csv2("US_SMMD.csv", colClasses = c(Market.Value="numeric"))
US_SMMV <- read.csv2("US_SMMV.csv", colClasses = c(Market.Value="numeric"))
US_SOXX <- read.csv2("US_SOXX.csv", colClasses = c(Market.Value="numeric"))
US_SUSA <- read.csv2("US_SUSA.csv", colClasses = c(Market.Value="numeric"))
US_SUSL <- read.csv2("US_SUSL.csv", colClasses = c(Market.Value="numeric"))
US_THD <- read.csv2("US_THD.csv", colClasses = c(Market.Value="numeric"))
US_TOK <- read.csv2("US_TOK.csv", colClasses = c(Market.Value="numeric"))
US_TUR <- read.csv2("US_TUR.csv", colClasses = c(Market.Value="numeric"))
US_UAE <- read.csv2("US_UAE.csv", colClasses = c(Market.Value="numeric"))
US_URTH <- read.csv2("US_URTH.csv", colClasses = c(Market.Value="numeric"))
US_USMV <- read.csv2("US_USMV.csv", colClasses = c(Market.Value="numeric"))
US_VEGI <- read.csv2("US_VEGI.csv", colClasses = c(Market.Value="numeric"))
US_VLUE <- read.csv2("US_VLUE.csv", colClasses = c(Market.Value="numeric"))
US_WOOD <- read.csv2("US_WOOD.csv", colClasses = c(Market.Value="numeric"))
US_XT <- read.csv2("US_XT.csv", colClasses = c(Market.Value="numeric"))


# Historischer Euro-Referenzkurse vom 10.10.2019 für Währungsumrechnungen
usd <- 1.103
gbp <- 0.90155
chf <- 1.0948
sek <- 10.8415
jpy <- 118.52


# Erstellen eines Vektors mit dem Namen Fondsvolumen, der die Summe der Marktwerte der Bestandteile
# des jeweiligen Fonds in Euro umgerechnet enthält
Fondsvolumen <- c(round(sum(DE_2B76$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_2B7A$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_2B7B$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_2B7C$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_2B7D$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_2B7K$Marktwert, na.rm = TRUE)),
              round(sum(DE_36BZ$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_4BRZ$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_5MVL$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_AGED$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_AYEM$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_BTEC$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_CEBB$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_CEBG$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_CEBL$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_CEBP$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_CEM2$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_CEMG$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_CEMQ$Marktwert, na.rm = TRUE)),
              round(sum(DE_CEMR$Marktwert, na.rm = TRUE)),
              round(sum(DE_CEMS$Marktwert, na.rm = TRUE)),
              round(sum(DE_CEMT$Marktwert, na.rm = TRUE)),
              round(sum(DE_CSKR$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_DAXEX$Marktwert, na.rm = TRUE)),
              round(sum(DE_DGTL$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_EDMF$Marktwert, na.rm = TRUE)),
              round(sum(DE_EEDS$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_EEJD$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_EEUD$Marktwert, na.rm = TRUE)),
              round(sum(DE_EEWD$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_EMUD$Marktwert, na.rm = TRUE)),
              round(sum(DE_EUMD$Marktwert, na.rm = TRUE)),
              round(sum(DE_EUN0$Marktwert, na.rm = TRUE)),
              round(sum(DE_EUN1$Marktwert, na.rm = TRUE)),
              round(sum(DE_EUN2$Marktwert, na.rm = TRUE)),
              round(sum(DE_EUNI$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_EUNJ$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_EUNK$Marktwert, na.rm = TRUE)),
              round(sum(DE_EUNL$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_EUNM$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_EUNN$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_EUNY$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_EUNZ$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_EXH1$Marktwert, na.rm = TRUE)),
              round(sum(DE_EXH2$Marktwert, na.rm = TRUE)),
              round(sum(DE_EXH3$Marktwert, na.rm = TRUE)),
              round(sum(DE_EXH4$Marktwert, na.rm = TRUE)),
              round(sum(DE_EXH5$Marktwert, na.rm = TRUE)),
              round(sum(DE_EXH6$Marktwert, na.rm = TRUE)),
              round(sum(DE_EXH7$Marktwert, na.rm = TRUE)),
              round(sum(DE_EXH8$Marktwert, na.rm = TRUE)),
              round(sum(DE_EXH9$Marktwert, na.rm = TRUE)),
              round(sum(DE_EXI1$Marktwert, na.rm = TRUE)/chf),
              round(sum(DE_EXI2$Marktwert, na.rm = TRUE)),
              round(sum(DE_EXI3$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_EXS2$Marktwert, na.rm = TRUE)),
              round(sum(DE_EXS3$Marktwert, na.rm = TRUE)),
              round(sum(DE_EXSA$Marktwert, na.rm = TRUE)),
              round(sum(DE_EXSB$Marktwert, na.rm = TRUE)),
              round(sum(DE_EXSC$Marktwert, na.rm = TRUE)),
              round(sum(DE_EXSD$Marktwert, na.rm = TRUE)),
              round(sum(DE_EXSE$Marktwert, na.rm = TRUE)),
              round(sum(DE_EXSG$Marktwert, na.rm = TRUE)),
              round(sum(DE_EXSH$Marktwert, na.rm = TRUE)),
              round(sum(DE_EXSI$Marktwert, na.rm = TRUE)),
              round(sum(DE_EXV1$Marktwert, na.rm = TRUE)),
              round(sum(DE_EXV2$Marktwert, na.rm = TRUE)),
              round(sum(DE_EXV3$Marktwert, na.rm = TRUE)),
              round(sum(DE_EXV4$Marktwert, na.rm = TRUE)),
              round(sum(DE_EXV5$Marktwert, na.rm = TRUE)),
              round(sum(DE_EXV6$Marktwert, na.rm = TRUE)),
              round(sum(DE_EXV7$Marktwert, na.rm = TRUE)),
              round(sum(DE_EXV8$Marktwert, na.rm = TRUE)),
              round(sum(DE_EXV9$Marktwert, na.rm = TRUE)),
              round(sum(DE_EXW1$Marktwert, na.rm = TRUE)),
              round(sum(DE_EXW3$Marktwert, na.rm = TRUE)),
              round(sum(DE_EXX1$Marktwert, na.rm = TRUE)),
              round(sum(DE_EXX2$Marktwert, na.rm = TRUE)),
              round(sum(DE_EXX5$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_EXX7$Marktwert, na.rm = TRUE)/jpy),
              round(sum(DE_EXXT$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_EXXU$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_EXXV$Marktwert, na.rm = TRUE)),
              round(sum(DE_EXXW$Marktwert, na.rm = TRUE)),
              round(sum(DE_EXXX$Marktwert, na.rm = TRUE)),
              round(sum(DE_HEAL$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_IAEX$Marktwert, na.rm = TRUE)),
              round(sum(DE_IBC0$Marktwert, na.rm = TRUE)),
              round(sum(DE_IBC4$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_IBC6$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_IBCF$Marktwert, na.rm = TRUE)),
              round(sum(DE_IBCG$Marktwert, na.rm = TRUE)),
              round(sum(DE_IBCH$Marktwert, na.rm = TRUE)),
              round(sum(DE_IBCJ$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_IBCK$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_IBCY$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_IBCZ$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_ICGA$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_IEVD$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_IFRE$Marktwert, na.rm = TRUE)),
              round(sum(DE_IGWD$Marktwert, na.rm = TRUE)/gbp),
              round(sum(DE_IJPC$Marktwert, na.rm = TRUE)/chf),
              round(sum(DE_IJPD$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_IJPD$Marktwert, na.rm = TRUE)),
              round(sum(DE_IMIB$Marktwert, na.rm = TRUE)),
              round(sum(DE_IQQ0$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_IQQ5$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_IQQ9$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_IQQA$Marktwert, na.rm = TRUE)),
              round(sum(DE_IQQB$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_IQQC$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_IQQD$Marktwert, na.rm = TRUE)/gbp),
              round(sum(DE_IQQE$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_IQQF$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_IQQG$Marktwert, na.rm = TRUE)),
              round(sum(DE_IQQH$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_IQQI$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_IQQJ$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_IQQK$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_IQQL$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_IQQM$Marktwert, na.rm = TRUE)),
              round(sum(DE_IQQN$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_IQQQ$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_IQQR$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_IQQS$Marktwert, na.rm = TRUE)),
              round(sum(DE_IQQT$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_IQQU$Marktwert, na.rm = TRUE)),
              round(sum(DE_IQQV$Marktwert, na.rm = TRUE)),
              round(sum(DE_IQQW$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_IQQX$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_IQQY$Marktwert, na.rm = TRUE)),
              round(sum(DE_IS0D$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_IS0E$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_IS3G$Marktwert, na.rm = TRUE)),
              round(sum(DE_IS3H$Marktwert, na.rm = TRUE)),
              round(sum(DE_IS3N$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_IS3Q$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_IS3R$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_IS3S$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_IS3T$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_ISDE$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_ISFE$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_ISPA$Marktwert, na.rm = TRUE)),
              round(sum(DE_ISUS$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_ISWD$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_IUCM$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_IUS2$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_IUS3$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_IUS4$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_IUS8$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_IUSA$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_IUSC$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_IUSK$Marktwert, na.rm = TRUE)),
              round(sum(DE_IUSL$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_IUSN$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_IUSQ$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_IUSR$Marktwert, na.rm = TRUE)),
              round(sum(DE_IUSS$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_IUSZ$Marktwert, na.rm = TRUE)/gbp),
              round(sum(DE_LOCK$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_MIDD$Marktwert, na.rm = TRUE)/gbp),
              round(sum(DE_NDIA$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_OM3X$Marktwert, na.rm = TRUE)/sek),
              round(sum(DE_OPEN$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_QDVA$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_QDVB$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_QDVC$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_QDVD$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_QDVE$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_QDVF$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_QDVG$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_QDVH$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_QDVI$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_QDVK$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_QDVM$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_QDVN$Marktwert, na.rm = TRUE)),
              round(sum(DE_QDVR$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_QDVS$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_QDVW$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_QDVX$Marktwert, na.rm = TRUE)),
              round(sum(DE_SGAJ$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_SGAS$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_SLMA$Marktwert, na.rm = TRUE)),
              round(sum(DE_SLMC$Marktwert, na.rm = TRUE)),
              round(sum(DE_SNAW$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_SPAG$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_SXR1$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_SXR2$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_SXR3$Marktwert, na.rm = TRUE)/gbp),
              round(sum(DE_SXR4$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_SXR5$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_SXR6$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_SXR7$Marktwert, na.rm = TRUE)),
              round(sum(DE_SXR8$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_SXRD$Marktwert, na.rm = TRUE)/gbp),
              round(sum(DE_SXRG$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_SXRJ$Marktwert, na.rm = TRUE)),
              round(sum(DE_SXRT$Marktwert, na.rm = TRUE)),
              round(sum(DE_SXRU$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_SXRV$Marktwert, na.rm = TRUE)/usd),
              round(sum(DE_SXRW$Marktwert, na.rm = TRUE)/gbp),
              round(sum(DE_SXRY$Marktwert, na.rm = TRUE)),
              round(sum(DE_SXRZ$Marktwert, na.rm = TRUE)/jpy),
              round(sum(DE_WOOD$Marktwert, na.rm = TRUE)/usd),
              round(sum(US_AAXJ$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_ACWF$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_ACWI$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_ACWV$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_ACWX$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_AGT$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_AIA$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_AMCA$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_BKF$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_CNYA$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_CRBN$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_DGRO$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_DIVB$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_DSI$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_DVY$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_DVYA$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_DVYE$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_ECH$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_ECNS$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_EDEN$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_EEM$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_EEMA$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_EEMS$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_EEMV$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_EFA$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_EFAV$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_EFG$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_EFNL$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_EFV$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_EIDO$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_EIRL$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_EIS$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_EMGF$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_EMIF$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_EMXC$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_ENOR$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_ENZL$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_EPHE$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_EPOL$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_EPP$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_EPU$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_ERUS$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_ESGD$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_ESGE$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_ESGU$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_ESML$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_EUFN$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_EUMV$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_EUSA$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_EWA$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_EWC$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_EWD$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_EWG$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_EWGS$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_EWH$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_EWI$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_EWJ$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_EWJE$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_EWJV$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_EWK$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_EWL$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_EWM$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_EWN$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_EWO$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_EWP$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_EWQ$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_EWS$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_EWT$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_EWU$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_EWUS$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_EWW$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_EWY$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_EWZ$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_EWZS$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_EXI$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_EZA$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_EZU$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_FILL$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_FM$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_FOVL$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_FXI$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_HDV$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_IAI$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_IAK$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_IAT$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_IBB$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_ICLN$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_ICOL$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_IDEV$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_IDNA$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_IDRV$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_IDU$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_IDV$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_IEFA$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_IEMG$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_IEO$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_IEUR$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_IEUS$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_IEV$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_IEZ$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_IFRA$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_IGE$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_IGF$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_IGM$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_IGN$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_IGRO$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_IGV$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_IHAK$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_IHE$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_IHF$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_IHI$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_IJH$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_IJJ$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_IJK$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_IJR$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_IJS$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_IJT$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_ILF$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_IMTM$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_INDA$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_INDY$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_INTF$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_IOO$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_IPAC$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_IPFF$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_IQLT$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_IRBO$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_ISCF$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_ISZE$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_ITA$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_ITB$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_ITOT$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_IUSG$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_IUSV$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_IVE$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_IVLU$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_IVV$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_IVW$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_IWB$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_IWC$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_IWD$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_IWF$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_IWL$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_IWM$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_IWN$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_IWO$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_IWP$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_IWR$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_IWS$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_IWV$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_IWX$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_IWY$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_IXC$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_IXG$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_IXJ$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_IXN$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_IXP$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_IXUS$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_IYC$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_IYE$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_IYF$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_IYG$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_IYH$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_IYJ$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_IYK$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_IYM$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_IYT$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_IYW$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_IYY$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_IYZ$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_JKD$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_JKE$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_JKF$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_JKG$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_JKH$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_JKI$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_JKJ$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_JKK$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_JKL$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_JPMV$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_JPXN$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_JXI$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_KSA$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_KXI$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_LRGF$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_MCHI$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_MIDF$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_MTUM$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_MXI$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_OEF$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_PFF$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_PICK$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_QAT$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_QUAL$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_RING$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_RXI$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_SCJ$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_SCZ$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_SDG$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_SIZE$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_SLVP$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_SMIN$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_SMLF$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_SMMD$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_SMMV$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_SOXX$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_SUSA$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_SUSL$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_THD$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_TOK$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_TUR$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_UAE$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_URTH$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_USMV$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_VEGI$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_VLUE$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_WOOD$Market.Value, na.rm = TRUE)/usd),
              round(sum(US_XT$Market.Value, na.rm = TRUE)/usd))


# Angeben des Fondsvolumens in Mio. Euro und Runden auf Mio. Euro
Fondsvolumen_in_Mio <- round(Fondsvolumen / 1e6)


# Export des Vektors Fondsvolumen_in_Mio
write(Fondsvolumen_in_Mio, file = "Vektor Fondsvolumen_in_Mio.txt")

