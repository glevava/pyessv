#!/bin/bash

# ###############################################################
# SECTION: WCRP CMIP6 VOCABULARY BASH VARS
# ###############################################################

# Activity ID
declare -a ACTIVITY_ID=(
	'aerchemmip'
	'c4mip'
	'cfmip'
	'cmip'
	'cordex'
	'damip'
	'dcpp'
	'dynvarmip'
	'fafmip'
	'geomip'
	'gmmip'
	'highresmip'
	'ismip6'
	'ls3mip'
	'lumip'
	'omip'
	'pmip'
	'rfmip'
	'scenariomip'
	'simip'
	'viacsab'
	'volmip'
)

declare -a ACTIVITY_ID_RAW=(
	'AerChemMIP'
	'C4MIP'
	'CFMIP'
	'CMIP'
	'CORDEX'
	'DAMIP'
	'DCPP'
	'DynVarMIP'
	'FAFMIP'
	'GeoMIP'
	'GMMIP'
	'HighResMIP'
	'ISMIP6'
	'LS3MIP'
	'LUMIP'
	'OMIP'
	'PMIP'
	'RFMIP'
	'ScenarioMIP'
	'SIMIP'
	'VIACSAB'
	'VolMIP'
)

# Institution ID
declare -a INSTITUTION_ID=(
	'awi'
	'bnu'
	'cams'
	'cccma'
	'cccr-iitm'
	'cmcc'
	'cnrm-cerfacs'
	'cola-cfs'
	'csir-csiro'
	'csiro-bom'
	'ec-earth-consortium'
	'fio-ronm'
	'inm'
	'inpe'
	'ipsl'
	'lasg-iap'
	'messy-consortium'
	'miroc'
	'mohc'
	'mpi-m'
	'mri'
	'nasa-giss'
	'ncar'
	'ncc'
	'nerc'
	'nims-kma'
	'noaa-gfdl'
	'noaa-ncep'
	'nuist'
	'pcmdi'
	'thu'
)

declare -a INSTITUTION_ID_RAW=(
	'AWI'
	'BNU'
	'CAMS'
	'CCCma'
	'CCCR-IITM'
	'CMCC'
	'CNRM-CERFACS'
	'COLA-CFS'
	'CSIR-CSIRO'
	'CSIRO-BOM'
	'EC-Earth-Consortium'
	'FIO-RONM'
	'INM'
	'INPE'
	'IPSL'
	'LASG-IAP'
	'MESSy-Consortium'
	'MIROC'
	'MOHC'
	'MPI-M'
	'MRI'
	'NASA-GISS'
	'NCAR'
	'NCC'
	'NERC'
	'NIMS-KMA'
	'NOAA-GFDL'
	'NOAA-NCEP'
	'NUIST'
	'PCMDI'
	'THU'
)

# MIP-era ID
declare -a MIP_ERA=(
	'cmip1'
	'cmip2'
	'cmip3'
	'cmip5'
	'cmip6'
)

declare -a MIP_ERA_RAW=(
	'CMIP1'
	'CMIP2'
	'CMIP3'
	'CMIP5'
	'CMIP6'
)

# Source ID
declare -a SOURCE_ID=(
	'access-1-0'
	'awi-cm-1-0-hr'
	'awi-cm-1-0-lr'
	'awi-cm-1-0-mr'
	'besm-2-7'
	'bnu-esm-1-1'
	'cams-csm1-0'
	'ciesm'
	'cmcc-cm2-hr4'
	'cmcc-cm2-hr5'
	'cmcc-cm2-sr5'
	'cmcc-cm2-vhr4'
	'cmcc-esm2-hr5'
	'cmcc-esm2-sr5'
	'cnrm-cm6-1'
	'cnrm-cm6-1-hr'
	'cnrm-esm2-1'
	'cnrm-esm2-1-hr'
	'ec-earth3'
	'ec-earth3-aerchem'
	'ec-earth3-cc'
	'ec-earth3-gris'
	'ec-earth3-hr'
	'ec-earth3-lr'
	'ec-earth3-veg'
	'ec-earth3-veg-lr'
	'emac-2-53-aerchem'
	'emac-2-53-vol'
	'gfdl-am4'
	'gfdl-cm4'
	'gfdl-esm4'
	'giss-e2-1g'
	'giss-e2-1h'
	'hadgem3-gc31-hh'
	'hadgem3-gc31-hm'
	'hadgem3-gc31-ll'
	'hadgem3-gc31-mm'
	'iitm-esm'
	'miroc-es2h'
	'miroc-es2l'
	'miroc6'
	'mpiesm-1-2-hr'
	'mpiesm-1-2-lr'
	'mpiesm-2-lr'
	'mri-esm2-0'
	'nicam16-7s'
	'nicam16-8s'
	'nicam16-9d-l78'
	'nicam16-9s'
	'noresm2-hh'
	'noresm2-lm'
	'noresm2-lme'
	'noresm2-lmec'
	'noresm2-mh'
	'noresm2-mm'
	'pcmdi-test-1-0'
	'ukesm1-0-ll'
	'ukesm1-0-mmh'
	'vresm-1-0'
)

declare -a SOURCE_ID_RAW=(
	'ACCESS-1-0'
	'AWI-CM-1-0-HR'
	'AWI-CM-1-0-LR'
	'AWI-CM-1-0-MR'
	'BESM-2-7'
	'BNU-ESM-1-1'
	'CAMS_CSM1-0'
	'CIESM'
	'CMCC-CM2-HR4'
	'CMCC-CM2-HR5'
	'CMCC-CM2-SR5'
	'CMCC-CM2-VHR4'
	'CMCC-ESM2-HR5'
	'CMCC-ESM2-SR5'
	'CNRM-CM6-1'
	'CNRM-CM6-1-HR'
	'CNRM-ESM2-1'
	'CNRM-ESM2-1-HR'
	'EC-Earth3'
	'EC-Earth3-AerChem'
	'EC-Earth3-CC'
	'EC-Earth3-GrIS'
	'EC-Earth3-HR'
	'EC-Earth3-LR'
	'EC-Earth3-Veg'
	'EC-Earth3-Veg-LR'
	'EMAC-2-53-AerChem'
	'EMAC-2-53-Vol'
	'GFDL-AM4'
	'GFDL-CM4'
	'GFDL-ESM4'
	'GISS-E2-1G'
	'GISS-E2-1H'
	'HadGEM3-GC31-HH'
	'HadGEM3-GC31-HM'
	'HadGEM3-GC31-LL'
	'HadGEM3-GC31-MM'
	'IITM-ESM'
	'MIROC-ES2H'
	'MIROC-ES2L'
	'MIROC6'
	'MPIESM-1-2-HR'
	'MPIESM-1-2-LR'
	'MPIESM-2-LR'
	'MRI-ESM2-0'
	'NICAM16-7S'
	'NICAM16-8S'
	'NICAM16-9D-L78'
	'NICAM16-9S'
	'NorESM2-HH'
	'NorESM2-LM'
	'NorESM2-LME'
	'NorESM2-LMEC'
	'NorESM2-MH'
	'NorESM2-MM'
	'PCMDI-test-1-0'
	'UKESM1-0-LL'
	'UKESM1-0-MMh'
	'VRESM-1-0'
)

# Experiment ID
declare -a EXPERIMENT_ID=(
	'1pctco2'
	'1pctco2-4xext'
	'1pctco2-bgc'
	'1pctco2-rad'
	'1pctco2ndep'
	'1pctco2ndep-bgc'
	'1pctco2to4x-withism'
	'a4sst'
	'a4sstice'
	'a4sstice-4xco2'
	'abrupt-0p5xco2'
	'abrupt-2xco2'
	'abrupt-4xco2'
	'abrupt-solm4p'
	'abrupt-solp4p'
	'amip'
	'amip-4xco2'
	'amip-a4sst-4xco2'
	'amip-future4k'
	'amip-hist'
	'amip-hld'
	'amip-lfmip-pdlc'
	'amip-lfmip-pobs'
	'amip-lfmip-rmlc'
	'amip-lwoff'
	'amip-m4k'
	'amip-p4k'
	'amip-p4k-lwoff'
	'amip-piforcing'
	'amip-tip'
	'amip-tip-nosh'
	'aqua-4xco2'
	'aqua-control'
	'aqua-control-lwoff'
	'aqua-p4k'
	'aqua-p4k-lwoff'
	'control-1950'
	'control-slab'
	'dcppa-assim'
	'dcppa-hindcast'
	'dcppa-hindcast-niff'
	'dcppa-historical-niff'
	'dcppb-forecast'
	'dcppc-amv-extrop-neg'
	'dcppc-amv-extrop-pos'
	'dcppc-amv-neg'
	'dcppc-amv-pos'
	'dcppc-amv-trop-neg'
	'dcppc-amv-trop-pos'
	'dcppc-atl-control'
	'dcppc-atl-pacemaker'
	'dcppc-atl-spg'
	'dcppc-forecast-addagung'
	'dcppc-forecast-addelchichon'
	'dcppc-forecast-addpinatubo'
	'dcppc-hindcast-noagung'
	'dcppc-hindcast-noelchichon'
	'dcppc-hindcast-nopinatubo'
	'dcppc-ipv-neg'
	'dcppc-ipv-nextrop-neg'
	'dcppc-ipv-nextrop-pos'
	'dcppc-ipv-pos'
	'dcppc-pac-control'
	'dcppc-pac-pacemaker'
	'deforest-globe'
	'esm-hist'
	'esm-hist-ext'
	'esm-picontrol'
	'esm-picontrol-spinup'
	'esm-ssp585'
	'esm-ssp585-ssp126lu'
	'faf-all'
	'faf-heat'
	'faf-passiveheat'
	'faf-stress'
	'faf-water'
	'futuresst-4xco2-solar'
	'g1'
	'g6solar'
	'g6sst1'
	'g6sst2-solar'
	'g6sst2-sulfur'
	'g6sulfur'
	'g7cirrus'
	'g7sst1-cirrus'
	'g7sst2-cirrus'
	'highres-future'
	'highressst-4co2'
	'highressst-future'
	'highressst-lai'
	'highressst-p4k'
	'highressst-present'
	'highressst-smoothed'
	'hist-1950'
	'hist-1950hc'
	'hist-aer'
	'hist-all-aer2'
	'hist-all-nat2'
	'hist-bgc'
	'hist-co2'
	'hist-ghg'
	'hist-nat'
	'hist-nolu'
	'hist-piaer'
	'hist-pintcf'
	'hist-resamo'
	'hist-resipo'
	'hist-sol'
	'hist-spaer-aer'
	'hist-spaer-all'
	'hist-strato3'
	'hist-volc'
	'historical'
	'historical-ext'
	'historical-withism'
	'histsst'
	'histsst-1950hc'
	'histsst-piaer'
	'histsst-pich4'
	'histsst-pin2o'
	'histsst-pintcf'
	'histsst-pio3'
	'ism-1pctco2to4x-self'
	'ism-1pctco2to4x-std'
	'ism-amip-std'
	'ism-asmb-std'
	'ism-bsmb-std'
	'ism-ctrl-std'
	'ism-historical-self'
	'ism-historical-std'
	'ism-lig127k-std'
	'ism-pdcontrol-std'
	'ism-picontrol-self'
	'ism-ssp585-self'
	'ism-ssp585-std'
	'land-cclim'
	'land-cco2'
	'land-crop-grass'
	'land-crop-nofert'
	'land-crop-noirrig'
	'land-crop-noirrigfert'
	'land-future'
	'land-hist'
	'land-hist-altlu1'
	'land-hist-altlu2'
	'land-hist-altstartyear'
	'land-hist-cruncep'
	'land-hist-princeton'
	'land-hist-wfdei'
	'land-nofire'
	'land-nolu'
	'land-nopasture'
	'land-noshiftcultivate'
	'land-nowoodharv'
	'lfmip-initlc'
	'lfmip-pdl-princeton'
	'lfmip-pdlc'
	'lfmip-pdlc-cruncep'
	'lfmip-pdlc-wfdei'
	'lfmip-rmlc'
	'lfmip-rmlc-cruncep'
	'lfmip-rmlc-princeton'
	'lfmip-rmlc-wfdei'
	'lgm'
	'lig127k'
	'midholocene'
	'midpliocene-eoi400'
	'omip1'
	'omip1-spunup'
	'omip2'
	'omip2-spunup'
	'past1000'
	'piclim-2xdms'
	'piclim-2xdust'
	'piclim-2xfire'
	'piclim-2xnox'
	'piclim-2xss'
	'piclim-2xvoc'
	'piclim-4xco2'
	'piclim-aer'
	'piclim-anthro'
	'piclim-bc'
	'piclim-ch4'
	'piclim-control'
	'piclim-ghg'
	'piclim-hc'
	'piclim-histaer'
	'piclim-histall'
	'piclim-histghg'
	'piclim-histnat'
	'piclim-lu'
	'piclim-n2o'
	'piclim-nh3'
	'piclim-nox'
	'piclim-ntcf'
	'piclim-o3'
	'piclim-oc'
	'piclim-so2'
	'piclim-spaer-aer'
	'piclim-spaer-anthro'
	'piclim-spaer-histaer'
	'piclim-spaer-histall'
	'piclim-voc'
	'picontrol'
	'picontrol-spinup'
	'picontrol-withism'
	'pisst'
	'pisst-4xco2'
	'pisst-4xco2-rad'
	'pisst-4xco2-solar'
	'pisst-pxk'
	'rad-irf'
	'spinup-1950'
	'ssp126'
	'ssp126-ssp370lu'
	'ssp245'
	'ssp245-aer'
	'ssp245-ghg'
	'ssp245-nat'
	'ssp245-strato3'
	'ssp370'
	'ssp370-lowntcf'
	'ssp370-ssp126lu'
	'ssp370sst'
	'ssp370sst-lowaer'
	'ssp370sst-lowbc'
	'ssp370sst-lowch4'
	'ssp370sst-lowntcf'
	'ssp370sst-lowo3'
	'ssp370sst-ssp126lu'
	'ssp434'
	'ssp460'
	'ssp534-over'
	'ssp534-over-bgc'
	'ssp585'
	'ssp585-bgc'
	'ssp585-withism'
	'sspxy'
	'volc-cluster-21c'
	'volc-cluster-ctrl'
	'volc-cluster-mill'
	'volc-long-eq'
	'volc-long-hln'
	'volc-long-hls'
	'volc-pinatubo-full'
	'volc-pinatubo-slab'
	'volc-pinatubo-strat'
	'volc-pinatubo-surf'
)

declare -a EXPERIMENT_ID_RAW=(
	'1pctCO2'
	'1pctCO2-4xext'
	'1pctCO2-bgc'
	'1pctCO2-rad'
	'1pctCO2Ndep'
	'1pctCO2Ndep-bgc'
	'1pctCO2to4x-withism'
	'a4SST'
	'a4SSTice'
	'a4SSTice-4xCO2'
	'abrupt-0p5xCO2'
	'abrupt-2xCO2'
	'abrupt-4xCO2'
	'abrupt-solm4p'
	'abrupt-solp4p'
	'amip'
	'amip-4xCO2'
	'amip-a4SST-4xCO2'
	'amip-future4K'
	'amip-hist'
	'amip-hld'
	'amip-lfmip-pdLC'
	'amip-lfmip-pObs'
	'amip-lfmip-rmLC'
	'amip-lwoff'
	'amip-m4K'
	'amip-p4K'
	'amip-p4K-lwoff'
	'amip-piForcing'
	'amip-TIP'
	'amip-TIP-nosh'
	'aqua-4xCO2'
	'aqua-control'
	'aqua-control-lwoff'
	'aqua-p4K'
	'aqua-p4K-lwoff'
	'control-1950'
	'control-slab'
	'dcppA-assim'
	'dcppA-hindcast'
	'dcppA-hindcast-niff'
	'dcppA-historical-niff'
	'dcppB-forecast'
	'dcppC-amv-ExTrop-neg'
	'dcppC-amv-ExTrop-pos'
	'dcppC-amv-neg'
	'dcppC-amv-pos'
	'dcppC-amv-Trop-neg'
	'dcppC-amv-Trop-pos'
	'dcppC-atl-control'
	'dcppC-atl-pacemaker'
	'dcppC-atl-spg'
	'dcppC-forecast-addAgung'
	'dcppC-forecast-addElChichon'
	'dcppC-forecast-addPinatubo'
	'dcppC-hindcast-noAgung'
	'dcppC-hindcast-noElChichon'
	'dcppC-hindcast-noPinatubo'
	'dcppC-ipv-neg'
	'dcppC-ipv-NexTrop-neg'
	'dcppC-ipv-NexTrop-pos'
	'dcppC-ipv-pos'
	'dcppC-pac-control'
	'dcppC-pac-pacemaker'
	'deforest-globe'
	'esm-hist'
	'esm-hist-ext'
	'esm-piControl'
	'esm-piControl-spinup'
	'esm-ssp585'
	'esm-ssp585-ssp126Lu'
	'faf-all'
	'faf-heat'
	'faf-passiveheat'
	'faf-stress'
	'faf-water'
	'futureSST-4xCO2-solar'
	'G1'
	'G6solar'
	'G6SST1'
	'G6SST2-solar'
	'G6SST2-sulfur'
	'G6sulfur'
	'G7cirrus'
	'G7SST1-cirrus'
	'G7SST2-cirrus'
	'highres-future'
	'highresSST-4co2'
	'highresSST-future'
	'highresSST-LAI'
	'highresSST-p4K'
	'highresSST-present'
	'highresSST-smoothed'
	'hist-1950'
	'hist-1950HC'
	'hist-aer'
	'hist-all-aer2'
	'hist-all-nat2'
	'hist-bgc'
	'hist-CO2'
	'hist-GHG'
	'hist-nat'
	'hist-noLu'
	'hist-piAer'
	'hist-piNTCF'
	'hist-resAMO'
	'hist-resIPO'
	'hist-sol'
	'hist-spAer-aer'
	'hist-spAer-all'
	'hist-stratO3'
	'hist-volc'
	'historical'
	'historical-ext'
	'historical-withism'
	'histSST'
	'histSST-1950HC'
	'histSST-piAer'
	'histSST-piCH4'
	'histSST-piN2O'
	'histSST-piNTCF'
	'histSST-piO3'
	'ism-1pctCO2to4x-self'
	'ism-1pctCO2to4x-std'
	'ism-amip-std'
	'ism-asmb-std'
	'ism-bsmb-std'
	'ism-ctrl-std'
	'ism-historical-self'
	'ism-historical-std'
	'ism-lig127k-std'
	'ism-pdControl-std'
	'ism-piControl-self'
	'ism-ssp585-self'
	'ism-ssp585-std'
	'land-cClim'
	'land-cCO2'
	'land-crop-grass'
	'land-crop-noFert'
	'land-crop-noIrrig'
	'land-crop-noIrrigFert'
	'land-future'
	'land-hist'
	'land-hist-altLu1'
	'land-hist-altLu2'
	'land-hist-altStartYear'
	'land-hist-cruNcep'
	'land-hist-princeton'
	'land-hist-wfdei'
	'land-noFire'
	'land-noLu'
	'land-noPasture'
	'land-noShiftCultivate'
	'land-noWoodHarv'
	'lfmip-initLC'
	'lfmip-pdL-princeton'
	'lfmip-pdLC'
	'lfmip-pdLC-cruNcep'
	'lfmip-pdLC-wfdei'
	'lfmip-rmLC'
	'lfmip-rmLC-cruNcep'
	'lfmip-rmLC-princeton'
	'lfmip-rmLC-wfdei'
	'lgm'
	'lig127k'
	'midHolocene'
	'midPliocene-eoi400'
	'omip1'
	'omip1-spunup'
	'omip2'
	'omip2-spunup'
	'past1000'
	'piClim-2xDMS'
	'piClim-2xdust'
	'piClim-2xfire'
	'piClim-2xNOx'
	'piClim-2xss'
	'piClim-2xVOC'
	'piClim-4xCO2'
	'piClim-aer'
	'piClim-anthro'
	'piClim-BC'
	'piClim-CH4'
	'piClim-control'
	'piClim-ghg'
	'piClim-HC'
	'piClim-histaer'
	'piClim-histall'
	'piClim-histghg'
	'piClim-histnat'
	'piClim-lu'
	'piClim-N2O'
	'piClim-NH3'
	'piClim-NOx'
	'piClim-NTCF'
	'piClim-O3'
	'piClim-OC'
	'piClim-SO2'
	'piClim-spAer-aer'
	'piClim-spAer-anthro'
	'piClim-spAer-histaer'
	'piClim-spAer-histall'
	'piClim-VOC'
	'piControl'
	'piControl-spinup'
	'piControl-withism'
	'piSST'
	'piSST-4xCO2'
	'piSST-4xCO2-rad'
	'piSST-4xCO2-solar'
	'piSST-pxK'
	'rad-irf'
	'spinup-1950'
	'ssp126'
	'ssp126-ssp370Lu'
	'ssp245'
	'ssp245-aer'
	'ssp245-GHG'
	'ssp245-nat'
	'ssp245-stratO3'
	'ssp370'
	'ssp370-lowNTCF'
	'ssp370-ssp126Lu'
	'ssp370SST'
	'ssp370SST-lowAer'
	'ssp370SST-lowBC'
	'ssp370SST-lowCH4'
	'ssp370SST-lowNTCF'
	'ssp370SST-lowO3'
	'ssp370SST-ssp126Lu'
	'ssp434'
	'ssp460'
	'ssp534-over'
	'ssp534-over-bgc'
	'ssp585'
	'ssp585-bgc'
	'ssp585-withism'
	'sspxy'
	'volc-cluster-21C'
	'volc-cluster-ctrl'
	'volc-cluster-mill'
	'volc-long-eq'
	'volc-long-hlN'
	'volc-long-hlS'
	'volc-pinatubo-full'
	'volc-pinatubo-slab'
	'volc-pinatubo-strat'
	'volc-pinatubo-surf'
)