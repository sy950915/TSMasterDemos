#!/usr/bin/env python
# @Time   :2021/7/19 14:47
# @Author :Ecao
# @File   :TSMater.py
# @Comment:use func with TSMaster.dll
# ------------------------------------------------
from ctypes import *

# Enum
(APP_CAN, APP_LIN) = (c_int(0), c_int(1))
(rivUseDB, rivUseLast, rivUse0) = (c_int(0), c_int(1), c_int(2))
(BUS_UNKNOWN_TYPE, TS_TCP_DEVICE, XL_USB_DEVICE, TS_USB_DEVICE, PEAK_USB_DEVICE, KVASER_USB_DEVICE, ZLG_USB_DEVICE,
 ICS_USB_DEVICE, TS_TC1005_DEVICE) = (
    c_int(0), c_int(1), c_int(2), c_int(3), c_int(4), c_int(5), c_int(6), c_int(7), c_int(8))

# Variable
CH1 = c_int32(0)
CH2 = c_int32(1)
CH3 = c_int32(2)
CH4 = c_int32(3)
AppName = "TSMasterCDemo".encode("utf-8")
dll = WinDLL(r"C:\Software\TSMaster\bin\Data\SDK\lib\x86\TSMaster.dll")


# Struct
class TLIBTSMapping:
    def __init__(self):
        self.FAppName = ''
        self.FAppChannelIndex = 0
        self.FAppChannelType = 0
        self.FHWDeviceType = 0
        self.FHWIndex = 0
        self.FHWChannelIndex = 0
        self.FHWDeviceSubType = 0
        self.FHWDeviceName = ''
        self.FMappingDisabled = False


class eTLIBTSMapping(Structure):
    _pack_ = 1
    _fields_ = [("FAppName", c_char * 32),
                ("FAppChannelIndex", c_int32),
                ("FAppChannelType", c_int),
                ("FHWDeviceType", c_int),
                ("FHWIndex", c_int32),
                ("FHWChannelIndex", c_int32),
                ("FHWDeviceSubType", c_int32),
                ("FHWDeviceName", c_char * 32),
                ("FMappingDisabled", c_bool),
                ]

    def __init__(self):
        self.FAppName = "TSMasterCDemo".encode("utf-8")
        self.FHWDeviceName = "TC1005".encode("utf-8")
        self.FAppChannelIndex = c_int32(0)
        self.FAppChannelType = APP_CAN
        self.FHWDeviceType = TS_USB_DEVICE
        self.FHWIndex = c_int32(0)
        self.FHWChannelIndex = c_int32(0)
        self.FHWDeviceSubType = c_int32(0)
        self.FMappingDisabled = c_bool(False)


class TCAN:
    def __init__(self):
        self.FIdxChn = ''
        self.FProperties = 0
        self.FDLC = 0
        self.FReserved = 0
        self.FIdentifier = 0
        self.FTimeUs = 0
        self.FData = [0 for i in range(8)]


class eTCAN(Structure):
    _pack_ = 1
    _fields_ = [("FIdxChn", c_uint8),
                ("FProperties", c_uint8),
                ("FDLC", c_uint8),  # TLIBApplicationChannelType
                ("FReserved", c_uint8),  # TLIBBusToolDeviceType
                ("FIdentifier", c_int32),
                ("FTimeUs", c_int64),
                ("FData", c_uint8 * 8),
                ]


# Func:tsdb_get_signal_value_can
def get_signal_value_can(ACAN, AMsgName, ASgnName):
    eValue = c_double(0)
    eMsgName = AMsgName.encode()
    eSgnName = ASgnName.encode()
    if 0 == dll.tsdb_get_signal_value_can(ACAN, eMsgName, eSgnName,
                                          addressof(eValue)):
        return eValue.value
    else:
        return None


# Func:tsdb_set_signal_value_can
def set_signal_value_can(ACAN, AMsgName, ASgnName, AValue):
    eMsgName = AMsgName.encode()
    eSgnName = ASgnName.encode()
    eValue = c_double(AValue)
    if 0 == dll.tsdb_set_signal_value_can(ACAN, eMsgName, eSgnName, eValue):
        return 0
    else:
        return -1


# Func:initialize_lib_tsmaster
def TSMaster_initialize():
    dll.initialize_lib_tsmaster(AppName)


# Func:tsapp_set_can_channel_count
def set_can_channel_count(count):
    eCount = c_int32(2)
    dll.tsapp_set_can_channel_count(eCount)


# Func:tsapp_configure_baudrate_canfd
def configure_baudrate_canfd(AIdxChn, ABaudrateArbKbps, ABaudrateDataKbps, AControllerType, AControllerMode,
                             AInstallTermResistor120Ohm):
    eBaudrateArbKbps = c_float(ABaudrateArbKbps)
    eBaudrateDataKbps = c_float(ABaudrateDataKbps)
    dll.tsapp_configure_baudrate_canfd(AIdxChn, eBaudrateArbKbps, eBaudrateDataKbps, AControllerType, AControllerMode,
                                       AInstallTermResistor120Ohm)


def configure_baudrate_can(AIdxChn, ABaudrateKbps, AListenOnly, AInstallTermResistor120Ohm):
    eBaudrateKbps = c_float(ABaudrateKbps)
    dll.tsapp_configure_baudrate_can(AIdxChn, eBaudrateKbps, AListenOnly, AInstallTermResistor120Ohm)


def load_can_db(DBC_ADDRESS, ASupportedChannelsBased):
    # dll.tsdb_unload_can_dbs()
    eDBC_ADDRESS = DBC_ADDRESS.encode("utf-8")
    eSupportedChannelsBased = ASupportedChannelsBased.encode("utf-8")
    idDBC = c_uint32(0)
    if 0 == dll.tsdb_load_can_db(eDBC_ADDRESS, eSupportedChannelsBased, addressof(idDBC)):
        return idDBC.value
    else:
        return None


def can_rbs_configure(AAutoStart, AAutoSendOnModification, AActivateNodeSimulation, AInitValueOptions):
    dll.tscom_can_rbs_configure(AAutoStart, AAutoSendOnModification, AActivateNodeSimulation, rivUseDB)


def can_rbs_activate_all_networks(AEnable, AIncludingChildren):
    dll.tscom_can_rbs_activate_all_networks(AEnable, AIncludingChildren)


def tsapp_connect():
    dll.tsapp_connect()


def can_rbs_start():
    dll.tscom_can_rbs_start()


PCAN = POINTER(eTCAN)
OnPreTxFUNCType = WINFUNCTYPE(None, POINTER(c_int32), PCAN)


def register_pretx_event_canfd(OnPreTxFUNC):
    obj = c_int32(0)

    dll.tsapp_register_pretx_event_canfd(addressof(obj), OnPreTxFUNC)
    return obj
    # if 0 == dll.tsapp_register_pretx_event_canfd(addressof(obj), OnPreTxFUNC):
    #     return obj
    # else:
    #     return None


def can_rbs_set_signal_value_by_address(ASymbolAddress, AValue):
    eSymbolAddress = ASymbolAddress.encode("utf-8")
    eValue = c_double(AValue)
    dll.tscom_can_rbs_set_signal_value_by_address(eSymbolAddress, eValue)


def can_rbs_get_signal_value_by_address(ASymbolAddress):
    eSymbolAddress = ASymbolAddress.encode("utf-8")
    eValue = c_double(0)
    if 0 == dll.tscom_can_rbs_get_signal_value_by_address(eSymbolAddress, addressof(eValue)):
        return eValue.value
    else:
        return None


def unregister_pretx_events_can(idpretx):
    eidpretx = addressof(idpretx)
    dll.tsapp_unregister_pretx_events_can(eidpretx)


def unregister_pretx_events_canfd(idpretx):
    eidpretx = addressof(idpretx)
    dll.tsapp_unregister_pretx_events_canfd(eidpretx)


def can_rbs_stop():
    dll.tscom_can_rbs_stop()


def tsapp_disconnect():
    dll.tsapp_disconnect()


def TSMaster_close():
    dll.finalize_lib_tsmaster()


def unload_can_dbs():
    dll.tsdb_unload_can_dbs()


def set_mapping(m):
    e = eTLIBTSMapping()
    e.FAppName = m.FAppName.encode("utf-8")
    e.FHWDeviceName = m.FHWDeviceName.encode("utf-8")
    e.FAppChannelIndex = m.FAppChannelIndex
    e.FAppChannelType = m.FAppChannelType

    e.FHWDeviceType = m.FHWDeviceType
    e.FHWDeviceSubType = c_int32(m.FHWDeviceSubType)  # TS virtual has no series
    e.FHWIndex = c_int32(m.FHWIndex)  # the first hardware
    e.FHWChannelIndex = m.FHWChannelIndex  # channel 1/8 of TS virtual
    r = dll.tsapp_set_mapping(addressof(e))


def transmit_can_async(Msg):
    myMsg = eTCAN()
    myMsg.FIdxChn = c_uint8(Msg.FIdxChn)
    myMsg.FIdentifier = c_int32(Msg.FIdentifier)
    myMsg.FProperties = c_uint8(Msg.FProperties)
    myMsg.FDLC = c_uint8(Msg.FDLC)
    for i in range(8):
        myMsg.FData[i] = c_uint8(Msg.FData[i])
    dll.tsapp_transmit_can_async(addressof(myMsg))
