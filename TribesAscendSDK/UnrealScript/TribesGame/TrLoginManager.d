module UnrealScript.TribesGame.TrLoginManager;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Core.UObject;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface TrLoginManager : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrLoginManager")); }
	private static __gshared TrLoginManager mDefaultProperties;
	@property final static TrLoginManager DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrLoginManager)("TrLoginManager TribesGame.Default__TrLoginManager")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInitialize;
			ScriptFunction mLogin;
			ScriptFunction mOnUserLoginFailed;
			ScriptFunction mRetryLogin;
			ScriptFunction mLogout;
			ScriptFunction mSubmitPlayerName;
			ScriptFunction mLoginWaitPopup;
			ScriptFunction mPopupData;
		}
		public @property static final
		{
			ScriptFunction Initialize() { return mInitialize ? mInitialize : (mInitialize = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrLoginManager.Initialize")); }
			ScriptFunction Login() { return mLogin ? mLogin : (mLogin = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrLoginManager.Login")); }
			ScriptFunction OnUserLoginFailed() { return mOnUserLoginFailed ? mOnUserLoginFailed : (mOnUserLoginFailed = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrLoginManager.OnUserLoginFailed")); }
			ScriptFunction RetryLogin() { return mRetryLogin ? mRetryLogin : (mRetryLogin = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrLoginManager.RetryLogin")); }
			ScriptFunction Logout() { return mLogout ? mLogout : (mLogout = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrLoginManager.Logout")); }
			ScriptFunction SubmitPlayerName() { return mSubmitPlayerName ? mSubmitPlayerName : (mSubmitPlayerName = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrLoginManager.SubmitPlayerName")); }
			ScriptFunction LoginWaitPopup() { return mLoginWaitPopup ? mLoginWaitPopup : (mLoginWaitPopup = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrLoginManager.LoginWaitPopup")); }
			ScriptFunction PopupData() { return mPopupData ? mPopupData : (mPopupData = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrLoginManager.PopupData")); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptString LoginName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 64); }
			ScriptString LoginPassword() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 76); }
		}
		bool bRemember() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x1) != 0; }
		bool bRemember(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x1; } return val; }
		bool bWaitingForLoginWaitPopup() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x2) != 0; }
		bool bWaitingForLoginWaitPopup(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x2; } return val; }
	}
final:
	void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Initialize, cast(void*)0, cast(void*)0);
	}
	bool Login(ScriptString UserName, ScriptString Password, bool bShouldRemember)
	{
		ubyte params[32];
		params[] = 0;
		*cast(ScriptString*)params.ptr = UserName;
		*cast(ScriptString*)&params[12] = Password;
		*cast(bool*)&params[24] = bShouldRemember;
		(cast(ScriptObject)this).ProcessEvent(Functions.Login, params.ptr, cast(void*)0);
		return *cast(bool*)&params[28];
	}
	void OnUserLoginFailed(ubyte LocalUserNum, OnlineSubsystem.EOnlineServerConnectionStatus ErrorCode)
	{
		ubyte params[2];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.EOnlineServerConnectionStatus*)&params[1] = ErrorCode;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnUserLoginFailed, params.ptr, cast(void*)0);
	}
	void RetryLogin()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RetryLogin, cast(void*)0, cast(void*)0);
	}
	void Logout()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Logout, cast(void*)0, cast(void*)0);
	}
	void SubmitPlayerName(ScriptString PlayerName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerName;
		(cast(ScriptObject)this).ProcessEvent(Functions.SubmitPlayerName, params.ptr, cast(void*)0);
	}
	void LoginWaitPopup()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.LoginWaitPopup, cast(void*)0, cast(void*)0);
	}
	void PopupData(GFxObject Obj)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = Obj;
		(cast(ScriptObject)this).ProcessEvent(Functions.PopupData, params.ptr, cast(void*)0);
	}
}
