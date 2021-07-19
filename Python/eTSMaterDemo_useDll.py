from TSMater import *
import time

DBC_ADDRESS = r"C:\\Software\\TSMaster\\bin\\Data\\Demo\\Databases\\PowerTrain.dbc"


def OnPreTxCANEvent(Aobj, ACAN):
    if 0 == ACAN.contents.FIdxChn and 0x64 == ACAN.contents.FIdentifier:
        EngPower_value = get_signal_value_can(ACAN, "EngineData", "EngPower")
        print("EngPower = %d" % EngPower_value)

        if 0 == set_signal_value_can(ACAN, "EngineData", "EngPower", EngPower_value + 10):
            print("Signals has been changed")


#    init dll
TSMaster_initialize()

set_can_channel_count(2)

#    set each mapping: logical CH1 map to TC1005 CH1
m = TLIBTSMapping()
m.FAppName = "TSMasterCDemo"
m.FHWDeviceName = "TC1005"
m.FAppChannelIndex = CH1
m.FAppChannelType = APP_CAN
m.FHWDeviceType = TS_TCP_DEVICE
m.FHWDeviceSubType = -1
m.FHWIndex = 0
m.FHWChannelIndex = CH1
set_mapping(m)

m.FAppChannelIndex = CH2  # CH2
m.FHWDeviceType = TS_TCP_DEVICE
m.FHWDeviceSubType = -1
m.FHWIndex = 0
m.FHWChannelIndex = CH2
set_mapping(m)

# Set baudrate_canfd
configure_baudrate_canfd(CH1, 500.0, 2000.0, 1, 0, False)
configure_baudrate_canfd(CH2, 500.0, 2000.0, 1, 0, False)

# configure_baudrate_can(CH1, 500.0, False, True)
# configure_baudrate_can(CH2, 500.0, False, True)

#   Load DBC
idDBC = load_can_db(DBC_ADDRESS, "0")

#   configure can rbs
can_rbs_configure(False, True, True, rivUseDB)

#   activate everything in rbs
can_rbs_activate_all_networks(True, True)

#   connect
tsapp_connect()
print("TSMasterCDemo application connected, communication starts here...")

#   start rbs
can_rbs_start()
print("CAN RBS is started...")
time.sleep(2)

#   [13] register pre-tx event
OnPreTxFUNC = OnPreTxFUNCType(OnPreTxCANEvent)
idpretx = register_pretx_event_canfd(OnPreTxFUNC)
print("Register pretx event succeed")

can_rbs_set_signal_value_by_address(r"0/PowerTrain/Engine/EngineData/EngSpeed", 14.0)
time.sleep(0.1)
value = can_rbs_get_signal_value_by_address(r"0/PowerTrain/Engine/EngineData/EngSpeed")
# print(value)
time.sleep(1)

# Send Onece Msg
myMsg = TCAN()
myMsg.FIdxChn = 0
myMsg.FIdentifier = 0x100
myMsg.FProperties = 1
myMsg.FDLC = 8
myMsg.FData[0] = 0x99
myMsg.FData[1] = 0x88
transmit_can_async(myMsg)

time.sleep(1)

#   [17] unregister pre-tx event
unregister_pretx_events_canfd(idpretx)
print("Unregister pretx event succeed")

#   stop rbs
can_rbs_stop()
print("CAN RBS stopped")

unload_can_dbs()

tsapp_disconnect()
print("TSMasterCDemo application disconnected")

TSMaster_close()
print("TSMaster dll finalized")
