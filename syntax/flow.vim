" Language: flow
" Maintainer: ealmina 
" Latest Revision: 24 08 2023

syn keyword rrc RRC_CONNECTION_RE_ESTABLISHMENT RRC_CONNECTION_RE_ESTABLISHMENT_COMPLETE RRC_DL_INFORMATION_TRANSFER RRC_MEASUREMENT_REPORT RRC_RRC_CONNECTION_RECONFIGURATION RRC_RRC_CONNECTION_RECONFIGURATION_COMPLETE RRC_RRC_CONNECTION_RELEASE RRC_RRC_CONNECTION_REQUEST RRC_RRC_CONNECTION_RE_ESTABLISHMENT_REJECT RRC_RRC_CONNECTION_RE_ESTABLISHMENT_REQUEST RRC_RRC_CONNECTION_SETUP_COMPLETE RRC_SCG_FAILURE_INFORMATION_NR RRC_SECURITY_MODE_COMMAND RRC_SECURITY_MODE_COMPLETE RRC_UE_CAPABILITY_INFORMATION RRC_UL_INFORMATION_TRANSFER RRC_UL_INFORMATION_TRANSFER_MRDC
syn keyword x2 X2_HANDOVER_CANCEL X2_HANDOVER_PREPARATION_FAILURE X2_HANDOVER_REQUEST X2_HANDOVER_REQUEST_ACKNOWLEDGE X2_RLF_INDICATION X2_SECONDARY_RAT_DATA_USAGE_REPORT X2_SGNB_RELEASE_REQUEST X2_SGNB_RELEASE_REQUIRED X2_SN_STATUS_TRANSFER X2_UE_CONTEXT_RELEASE
syn keyword s1 S1_DOWNLINK_NAS_TRANSPORT S1_ERAB_MODIFY_REQUEST S1_ERAB_MODIFY_RESPONSE S1_ERAB_RELEASE_COMMAND S1_ERAB_RELEASE_RESPONSE S1_ERAB_SETUP_REQUEST S1_ERAB_SETUP_RESPONSE S1_ERROR_INDICATION S1_HANDOVER_REQUEST S1_INITIAL_CONTEXT_SETUP_REQUEST S1_INITIAL_CONTEXT_SETUP_RESPONSE S1_INITIAL_UE_MESSAGE S1_PATH_SWITCH_REQUEST S1_PATH_SWITCH_REQUEST_ACKNOWLEDGE S1_UE_CONTEXT_MODIFICATION_REQUEST S1_UE_CONTEXT_MODIFICATION_RESPONSE S1_UE_CONTEXT_RELEASE_COMMAND S1_UE_CONTEXT_RELEASE_COMPLETE S1_UE_CONTEXT_RELEASE_REQUEST S1_UPLINK_NAS_TRANSPORT
syn keyword internal INTERNAL_EVENT_MAX_FILESIZE_REACHED INTERNAL_EVENT_MAX_FILESIZE_RECOVERY INTERNAL_EVENT_UE_MEAS_FAILURE INTERNAL_EVENT_UE_MOBILITY_EVAL INTERNAL_PER_CELL_TRAFFIC_REPORT INTERNAL_PER_RADIO_CELL_MEASUREMENT INTERNAL_PER_RADIO_UE_MEASUREMENT INTERNAL_PER_RADIO_UE_MEASUREMENT_TA INTERNAL_PER_RADIO_UTILIZATION INTERNAL_PER_RADIO_UTILIZATION2 INTERNAL_PER_UE_RB_TRAFFIC_REP INTERNAL_PER_UE_TRAFFIC_REP INTERNAL_PROC_ERAB_RELEASE INTERNAL_PROC_ERAB_SETUP INTERNAL_PROC_HO_EXEC_X2_IN INTERNAL_PROC_HO_EXEC_X2_OUT INTERNAL_PROC_HO_PREP_X2_IN INTERNAL_PROC_HO_PREP_X2_OUT INTERNAL_PROC_INITIAL_CTXT_SETUP INTERNAL_PROC_RRC_CONNECTION_RE_ESTABLISHMENT INTERNAL_PROC_RRC_CONN_SETUP INTERNAL_PROC_S1_SIG_CONN_SETUP INTERNAL_PROC_UE_CTXT_FETCH INTERNAL_PROC_UE_CTXT_RELEASE INTERNAL_PROC_X2_MN_INIT_SGNB_MOD INTERNAL_PROC_X2_SGNB_ADDITION

let b:current_syntax = "flow"

hi rrc guifg=Green ctermfg=Green term=bold
hi x2 guifg=Red ctermfg=Red term=bold
hi s1 guifg=Blue ctermfg=Blue term=bold
hi internal guifg=Yellow ctermfg=Yellow term=bold
