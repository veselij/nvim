" Language: flow
" Maintainer: ealmina 
" Latest Revision: 24 08 2023

syn keyword rrc RRC_CONNECTION_RE_ESTABLISHMENT RRC_CONNECTION_RE_ESTABLISHMENT_COMPLETE RRC_DL_INFORMATION_TRANSFER RRC_MEASUREMENT_REPORT RRC_RRC_CONNECTION_RECONFIGURATION RRC_RRC_CONNECTION_RECONFIGURATION_COMPLETE RRC_RRC_CONNECTION_RELEASE RRC_RRC_CONNECTION_REQUEST RRC_RRC_CONNECTION_RE_ESTABLISHMENT_REJECT RRC_RRC_CONNECTION_RE_ESTABLISHMENT_REQUEST RRC_RRC_CONNECTION_SETUP_COMPLETE RRC_SCG_FAILURE_INFORMATION_NR RRC_SECURITY_MODE_COMMAND RRC_SECURITY_MODE_COMPLETE RRC_UE_CAPABILITY_INFORMATION RRC_UL_INFORMATION_TRANSFER RRC_UL_INFORMATION_TRANSFER_MRDC RRC_UE_CAPABILITY_ENQUIRY
syn keyword x2 X2_HANDOVER_CANCEL X2_HANDOVER_PREPARATION_FAILURE X2_HANDOVER_REQUEST X2_HANDOVER_REQUEST_ACKNOWLEDGE X2_RLF_INDICATION X2_SECONDARY_RAT_DATA_USAGE_REPORT X2_SGNB_RELEASE_REQUEST X2_SGNB_RELEASE_REQUIRED X2_SN_STATUS_TRANSFER X2_UE_CONTEXT_RELEASE X2_ENDC_SGNB_MODIFICATION_REQUIRED X2_SGNB_MODIFICATION_REQUEST X2_SGNB_MODIFICATION_REQUEST_ACKNOWLEDGE X2_ENDC_SGNB_MODIFICATION_CONFIRM X2_ENDC_SGNB_MODIFICATION_REQUIRED X2_ENDC_RRC_TRANSFER X2_SGNB_CHANGE_REQUIRED X2_SGNB_ADDITION_REQUEST X2_SGNB_ADDITION_REQUEST_ACKNOWLEDGE X2_SGNB_CHANGE_CONFIRM X2_SGNB_RECONFIGURATION_COMPLETE X2_SGNB_RELEASE_REQUEST_ACKNOWLEDGE X2_PRIVATE_MESSAGE X2_CONTEXT_FETCH_RESPONSE X2_CONTEXT_FETCH_RESPONSE_ACCEPT 
syn keyword s1 S1_DOWNLINK_NAS_TRANSPORT S1_ERAB_MODIFY_REQUEST S1_ERAB_MODIFY_RESPONSE S1_ERAB_RELEASE_COMMAND S1_ERAB_RELEASE_RESPONSE S1_ERAB_SETUP_REQUEST S1_ERAB_SETUP_RESPONSE S1_ERROR_INDICATION S1_HANDOVER_REQUEST S1_INITIAL_CONTEXT_SETUP_REQUEST S1_INITIAL_CONTEXT_SETUP_RESPONSE S1_INITIAL_UE_MESSAGE S1_PATH_SWITCH_REQUEST S1_PATH_SWITCH_REQUEST_ACKNOWLEDGE S1_UE_CONTEXT_MODIFICATION_REQUEST S1_UE_CONTEXT_MODIFICATION_RESPONSE S1_UE_CONTEXT_RELEASE_COMMAND S1_UE_CONTEXT_RELEASE_COMPLETE S1_UE_CONTEXT_RELEASE_REQUEST S1_UPLINK_NAS_TRANSPORT S1_UE_CAPABILITY_INFO_INDICATION S1_ERAB_MODIFICATION_INDICATION S1_ERAB_MODIFICATION_CONFIRM

let b:current_syntax = "flow"

hi rrc guifg=Green ctermfg=Green term=bold
hi x2 guifg=Red ctermfg=Red term=bold
hi s1 guifg=Blue ctermfg=Blue term=bold
