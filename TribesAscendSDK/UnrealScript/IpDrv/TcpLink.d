module UnrealScript.IpDrv.TcpLink;

import ScriptClasses;
import UnrealScript.IpDrv.InternetLink;

extern(C++) interface TcpLink : InternetLink
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class IpDrv.TcpLink")); }
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
			ScriptFunction BindPort() { return mBindPort ? mBindPort : (mBindPort = ScriptObject.Find!(ScriptFunction)("Function IpDrv.TcpLink.BindPort")); }
			ScriptFunction Listen() { return mListen ? mListen : (mListen = ScriptObject.Find!(ScriptFunction)("Function IpDrv.TcpLink.Listen")); }
			ScriptFunction Open() { return mOpen ? mOpen : (mOpen = ScriptObject.Find!(ScriptFunction)("Function IpDrv.TcpLink.Open")); }
			ScriptFunction Close() { return mClose ? mClose : (mClose = ScriptObject.Find!(ScriptFunction)("Function IpDrv.TcpLink.Close")); }
			ScriptFunction IsConnected() { return mIsConnected ? mIsConnected : (mIsConnected = ScriptObject.Find!(ScriptFunction)("Function IpDrv.TcpLink.IsConnected")); }
			ScriptFunction SendText() { return mSendText ? mSendText : (mSendText = ScriptObject.Find!(ScriptFunction)("Function IpDrv.TcpLink.SendText")); }
			ScriptFunction SendBinary() { return mSendBinary ? mSendBinary : (mSendBinary = ScriptObject.Find!(ScriptFunction)("Function IpDrv.TcpLink.SendBinary")); }
			ScriptFunction ReadText() { return mReadText ? mReadText : (mReadText = ScriptObject.Find!(ScriptFunction)("Function IpDrv.TcpLink.ReadText")); }
			ScriptFunction ReadBinary() { return mReadBinary ? mReadBinary : (mReadBinary = ScriptObject.Find!(ScriptFunction)("Function IpDrv.TcpLink.ReadBinary")); }
			ScriptFunction Accepted() { return mAccepted ? mAccepted : (mAccepted = ScriptObject.Find!(ScriptFunction)("Function IpDrv.TcpLink.Accepted")); }
			ScriptFunction Opened() { return mOpened ? mOpened : (mOpened = ScriptObject.Find!(ScriptFunction)("Function IpDrv.TcpLink.Opened")); }
			ScriptFunction Closed() { return mClosed ? mClosed : (mClosed = ScriptObject.Find!(ScriptFunction)("Function IpDrv.TcpLink.Closed")); }
			ScriptFunction ReceivedText() { return mReceivedText ? mReceivedText : (mReceivedText = ScriptObject.Find!(ScriptFunction)("Function IpDrv.TcpLink.ReceivedText")); }
			ScriptFunction ReceivedLine() { return mReceivedLine ? mReceivedLine : (mReceivedLine = ScriptObject.Find!(ScriptFunction)("Function IpDrv.TcpLink.ReceivedLine")); }
			ScriptFunction ReceivedBinary() { return mReceivedBinary ? mReceivedBinary : (mReceivedBinary = ScriptObject.Find!(ScriptFunction)("Function IpDrv.TcpLink.ReceivedBinary")); }
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
		ScriptArray!(ubyte) SendFIFO() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)cast(void*)this + 516); }
		ScriptString RecvBuf() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 528); }
		ScriptClass AcceptClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 512); }
		InternetLink.IpAddr RemoteAddr() { return *cast(InternetLink.IpAddr*)(cast(size_t)cast(void*)this + 504); }
		TcpLink.ELinkState LinkState() { return *cast(TcpLink.ELinkState*)(cast(size_t)cast(void*)this + 500); }
	}
final:
	int BindPort(int PortNum, bool bUseNextAvailable)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = PortNum;
		*cast(bool*)&params[4] = bUseNextAvailable;
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
	int ReadText(ScriptString* Str)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = *Str;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReadText, params.ptr, cast(void*)0);
		*Str = *cast(ScriptString*)params.ptr;
		return *cast(int*)&params[12];
	}
	int ReadBinary(int Count, ubyte* B)
	{
		ubyte params[264];
		params[] = 0;
		*cast(int*)params.ptr = Count;
		params[4] = *B;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReadBinary, params.ptr, cast(void*)0);
		*B = params[4];
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
