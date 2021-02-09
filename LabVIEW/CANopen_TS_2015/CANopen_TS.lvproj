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
		<Item Name="BusStatistics" Type="Folder" URL="../BusStatistics">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="DBC" Type="Folder" URL="../DBC">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="SubVIs" Type="Folder" URL="../SubVIs">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="TS_CANRead" Type="Folder" URL="../TS_CANRead">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="CANopen.vi" Type="VI" URL="../CANopen.vi"/>
		<Item Name="依赖关系" Type="Dependencies">
			<Item Name="CAN_BaudInfo.ctl" Type="VI" URL="../Ctrl/CAN_BaudInfo.ctl"/>
			<Item Name="CAN_FrameInfo.ctl" Type="VI" URL="../Ctrl/CAN_FrameInfo.ctl"/>
			<Item Name="CAN_Info.ctl" Type="VI" URL="../Ctrl/CAN_Info.ctl"/>
			<Item Name="TSMaster.dll" Type="Document" URL="../TSMaster.dll"/>
		</Item>
		<Item Name="程序生成规范" Type="Build"/>
	</Item>
</Project>
