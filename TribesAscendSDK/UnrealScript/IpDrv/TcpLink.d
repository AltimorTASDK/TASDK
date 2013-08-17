module UnrealScript.IpDrv.TcpLink;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.IpDrv.InternetLink;

extern(C++) interface TcpLink : InternetLink
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class IpDrv.TcpLink")()); }
	private static __gshared TcpLink mDefaultProperties;
	@property final static TcpLink DefaultProperties() { mixin(MGDPC!(TcpLink, "TcpLink IpDrv.Default__TcpLink")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mBindPort;
			ScriptFunction mListen;
			ScriptFunction mOpen;
			ScriptFunction mClose;
			ScriptFunction mIsConnected;
			ScriptFunction mSendText;
			ScriptFunction mSendBinary;
			ScriptFunction mReadText;
			ScriptFunction mReadBinary;
			ScriptFunction mAccepted;
			ScriptFunction mOpened;
			ScriptFunction mClosed;
			ScriptFunction mReceivedText;
			ScriptFunction mReceivedLine;
			ScriptFunction mReceivedBinary;
		}
		public @property static final
		{
			ScriptFunction BindPort() { mixin(MGF!("mBindPort", "Function IpDrv.TcpLink.BindPort")()); }
			ScriptFunction Listen() { mixin(MGF!("mListen", "Function IpDrv.TcpLink.Listen")()); }
			ScriptFunction Open() { mixin(MGF!("mOpen", "Function IpDrv.TcpLink.Open")()); }
			ScriptFunction Close() { mixin(MGF!("mClose", "Function IpDrv.TcpLink.Close")()); }
			ScriptFunction IsConnected() { mixin(MGF!("mIsConnected", "Function IpDrv.TcpLink.IsConnected")()); }
			ScriptFunction SendText() { mixin(MGF!("mSendText", "Function IpDrv.TcpLink.SendText")()); }
			ScriptFunction SendBinary() { mixin(MGF!("mSendBinary", "Function IpDrv.TcpLink.SendBinary")()); }
			ScriptFunction ReadText() { mixin(MGF!("mReadText", "Function IpDrv.TcpLink.ReadText")()); }
			ScriptFunction ReadBinary() { mixin(MGF!("mReadBinary", "Function IpDrv.TcpLink.ReadBinary")()); }
			ScriptFunction Accepted() { mixin(MGF!("mAccepted", "Function IpDrv.TcpLink.Accepted")()); }
			ScriptFunction Opened() { mixin(MGF!("mOpened", "Function IpDrv.TcpLink.Opened")()); }
			ScriptFunction Closed() { mixin(MGF!("mClosed", "Function IpDrv.TcpLink.Closed")()); }
			ScriptFunction ReceivedText() { mixin(MGF!("mReceivedText", "Function IpDrv.TcpLink.ReceivedText")()); }
			ScriptFunction ReceivedLine() { mixin(MGF!("mReceivedLine", "Function IpDrv.TcpLink.ReceivedLine")()); }
			ScriptFunction ReceivedBinary() { mixin(MGF!("mReceivedBinary", "Function IpDrv.TcpLink.ReceivedBinary")()); }
		}
	}
	enum ELinkState : ubyte
	{
		STATE_Initialized = 0,
		STATE_Ready = 1,
		STATE_Listening = 2,
		STATE_Connecting = 3,
		STATE_Connected = 4,
		STATE_ListenClosePending = 5,
		STATE_ConnectClosePending = 6,
		STATE_ListenClosing = 7,
		STATE_ConnectClosing = 8,
		STATE_MAX = 9,
	}
	@property final auto ref
	{
		ScriptArray!(ubyte) SendFIFO() { mixin(MGPC!("ScriptArray!(ubyte)", 516)()); }
		ScriptString RecvBuf() { mixin(MGPC!("ScriptString", 528)()); }
		ScriptClass AcceptClass() { mixin(MGPC!("ScriptClass", 512)()); }
		InternetLink.IpAddr RemoteAddr() { mixin(MGPC!("InternetLink.IpAddr", 504)()); }
		TcpLink.ELinkState LinkState() { mixin(MGPC!("TcpLink.ELinkState", 500)()); }
	}
final:
	int BindPort(int* PortNum = null, bool* bUseNextAvailable = null)
	{
		ubyte params[12];
		params[] = 0;
		if (PortNum !is null)
			*cast(int*)params.ptr = *PortNum;
		if (bUseNextAvailable !is null)
			*cast(bool*)&params[4] = *bUseNextAvailable;
		(cast(ScriptObject)this).ProcessEvent(Functions.BindPort, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	bool Listen()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.Listen, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool Open(InternetLink.IpAddr Addr)
	{
		ubyte params[12];
		params[] = 0;
		*cast(InternetLink.IpAddr*)params.ptr = Addr;
		(cast(ScriptObject)this).ProcessEvent(Functions.Open, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool Close()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.Close, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool IsConnected()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsConnected, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	int SendText(ScriptString Str)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Str;
		(cast(ScriptObject)this).ProcessEvent(Functions.SendText, params.ptr, cast(void*)0);
		return *cast(int*)&params[12];
	}
	int SendBinary(int Count, ubyte B)
	{
		ubyte params[264];
		params[] = 0;
		*cast(int*)params.ptr = Count;
		params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.SendBinary, params.ptr, cast(void*)0);
		return *cast(int*)&params[260];
	}
	int ReadText(ref ScriptString Str)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Str;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReadText, params.ptr, cast(void*)0);
		Str = *cast(ScriptString*)params.ptr;
		return *cast(int*)&params[12];
	}
	int ReadBinary(int Count, ref ubyte B)
	{
		ubyte params[264];
		params[] = 0;
		*cast(int*)params.ptr = Count;
		params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReadBinary, params.ptr, cast(void*)0);
		B = params[4];
		return *cast(int*)&params[260];
	}
	void Accepted()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Accepted, cast(void*)0, cast(void*)0);
	}
	void Opened()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Opened, cast(void*)0, cast(void*)0);
	}
	void Closed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Closed, cast(void*)0, cast(void*)0);
	}
	void ReceivedText(ScriptString Text)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Text;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReceivedText, params.ptr, cast(void*)0);
	}
	void ReceivedLine(ScriptString Line)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Line;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReceivedLine, params.ptr, cast(void*)0);
	}
	void ReceivedBinary(int Count, ubyte B)
	{
		ubyte params[259];
		params[] = 0;
		*cast(int*)params.ptr = Count;
		params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReceivedBinary, params.ptr, cast(void*)0);
	}
}
