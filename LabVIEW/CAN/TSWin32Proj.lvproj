<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="16008000">
	<Item Name="我的电脑" Type="My Computer">
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">我的电脑/VI服务器</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">我的电脑/VI服务器</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="CAN" Type="Folder">
			<Item Name="tsapp_enable_receive_fifo_win32.vi" Type="VI" URL="../tsapp_enable_receive_fifo_win32.vi"/>
			<Item Name="tsapp_receive_can_message_win32.vi" Type="VI" URL="../TS_CANRead/tsapp_receive_can_message_win32.vi"/>
			<Item Name="tsapp_transmit_can_sync_win32.vi" Type="VI" URL="../tsapp_transmit_can_sync_win32.vi"/>
		</Item>
		<Item Name="Connect" Type="Folder">
			<Item Name="tsapp_connect_win32.vi" Type="VI" URL="../tsapp_connect_win32.vi"/>
			<Item Name="tsapp_disconnect_win32.vi" Type="VI" URL="../tsapp_disconnect_win32.vi"/>
		</Item>
		<Item Name="Ctl" Type="Folder">
			<Item Name="CAN_BaudInfo.ctl" Type="VI" URL="../CAN_BaudInfo.ctl"/>
			<Item Name="CAN_FrameInfo.ctl" Type="VI" URL="../CAN_FrameInfo.ctl"/>
			<Item Name="CAN_Info.ctl" Type="VI" URL="../CAN_Info.ctl"/>
			<Item Name="MessageInfo.ctl" Type="VI" URL="../MessageInfo.ctl"/>
			<Item Name="SendMsgInfo.ctl" Type="VI" URL="../SendMsgInfo.ctl"/>
			<Item Name="TCANProperty.ctl" Type="VI" URL="../TCANProperty.ctl"/>
		</Item>
		<Item Name="DBC" Type="Folder">
			<Item Name="tsdb_load_can_db_win32.vi" Type="VI" URL="../DBC/tsdb_load_can_db_win32.vi"/>
			<Item Name="tsdb_unload_can_db_win32.vi" Type="VI" URL="../DBC/tsdb_unload_can_db_win32.vi"/>
			<Item Name="tsdb_unload_can_dbs_win32.vi" Type="VI" URL="../DBC/tsdb_unload_can_dbs_win32.vi"/>
		</Item>
		<Item Name="Init" Type="Folder">
			<Item Name="finalize_lib_tsmaster_win32.vi" Type="VI" URL="../finalize_lib_tsmaster_win32.vi"/>
			<Item Name="initialize_lib_tsmaster_win32.vi" Type="VI" URL="../initialize_lib_tsmaster_win32.vi"/>
			<Item Name="tsapp_clear_can_receive_buffers_win32.vi" Type="VI" URL="../tsapp_clear_can_receive_buffers_win32.vi"/>
			<Item Name="tsapp_configure_baudrate_can_win32.vi" Type="VI" URL="../tsapp_configure_baudrate_can_win32.vi"/>
			<Item Name="tsapp_set_canlin_channel_count_win32.vi" Type="VI" URL="../tsapp_set_canlin_channel_count_win32.vi"/>
		</Item>
		<Item Name="Log" Type="Folder">
			<Item Name="tsapp_log_win32.vi" Type="VI" URL="../tsapp_log_win32.vi"/>
			<Item Name="tsapp_start_logging_win32.vi" Type="VI" URL="../tsapp_start_logging_win32.vi"/>
			<Item Name="tsapp_stop_logging_win32.vi" Type="VI" URL="../tsapp_stop_logging_win32.vi"/>
		</Item>
		<Item Name="TLIBCANBusStatistics_Ctrl.ctl" Type="VI" URL="../BusStatistics/TLIBCANBusStatistics_Ctrl.ctl"/>
		<Item Name="tsapp_add_cyclic_msg_can_win32.vi" Type="VI" URL="../tsapp_add_cyclic_msg_can_win32.vi"/>
		<Item Name="tsapp_clear_bus_statistics.vi" Type="VI" URL="../BusStatistics/tsapp_clear_bus_statistics.vi"/>
		<Item Name="tsapp_delete_cyclic_msg_can_win32.vi" Type="VI" URL="../tsapp_delete_cyclic_msg_can_win32.vi"/>
		<Item Name="tsapp_get_bus_statistics.vi" Type="VI" URL="../BusStatistics/tsapp_get_bus_statistics.vi"/>
		<Item Name="tsapp_get_bus_statistics_AllInfo.vi" Type="VI" URL="../BusStatistics/tsapp_get_bus_statistics_AllInfo.vi"/>
		<Item Name="tsapp_read_can_rx_buffer_datacount_win32.vi" Type="VI" URL="../TS_CANRead/tsapp_read_can_rx_buffer_datacount_win32.vi"/>
		<Item Name="Win32Test.vi" Type="VI" URL="../Win32Test.vi"/>
		<Item Name="依赖关系" Type="Dependencies">
			<Item Name="NumToTCANProperty.vi" Type="VI" URL="../NumToTCANProperty.vi"/>
			<Item Name="tsapp_enable_bus_statistics.vi" Type="VI" URL="../BusStatistics/tsapp_enable_bus_statistics.vi"/>
			<Item Name="tsapp_receive_can_messagelist_win32.vi" Type="VI" URL="../TS_CANRead/tsapp_receive_can_messagelist_win32.vi"/>
			<Item Name="TSMaster.dll" Type="Document" URL="../TSMaster.dll"/>
			<Item Name="TSMaster.dll" Type="Document" URL="../../海卓项目资料/HaiDriver/BottomLevel/TS_CANDrive/TSMaster.dll"/>
		</Item>
		<Item Name="程序生成规范" Type="Build">
			<Item Name="我的应用程序" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{C34DD58B-D80D-4809-BEEE-104DAAD2FB58}</Property>
				<Property Name="App_INI_GUID" Type="Str">{3747DE28-A47B-487B-A79F-584EA211181C}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{BF165DB9-EA74-41CE-84B1-C309FA764592}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">我的应用程序</Property>
				<Property Name="Bld_defaultLanguage" Type="Str">ChineseS</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">/D/LabviewWorkSpace/海卓项目资料/builds/CANCard</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{44345DFA-FF38-4756-8E31-116D71A44E84}</Property>
				<Property Name="Bld_version.build" Type="Int">2</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">应用程序.exe</Property>
				<Property Name="Destination[0].path" Type="Path">/D/LabviewWorkSpace/海卓项目资料/builds/CANCard/应用程序.exe</Property>
				<Property Name="Destination[0].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">支持目录</Property>
				<Property Name="Destination[1].path" Type="Path">/D/LabviewWorkSpace/海卓项目资料/builds/CANCard/data</Property>
				<Property Name="Destination[1].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{56F0A463-5868-4B52-85B1-6C8AE2AC773A}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/我的电脑/Win32Test.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_fileDescription" Type="Str">我的应用程序</Property>
				<Property Name="TgtF_internalName" Type="Str">我的应用程序</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">版权 2020 </Property>
				<Property Name="TgtF_productName" Type="Str">我的应用程序</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{C26054E0-C597-4517-B255-040CC110F2DC}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">应用程序.exe</Property>
			</Item>
		</Item>
	</Item>
</Project>
