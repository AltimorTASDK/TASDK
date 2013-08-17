module UnrealScript.TribesGame.TrLoginManager;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Core.UObject;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface TrLoginManager : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrLoginManager")()); }
	private static __gshared TrLoginManager mDefaultProperties;
	@property final static TrLoginManager DefaultProperties() { mixin(MGDPC!(TrLoginManager, "TrLoginManager TribesGame.Default__TrLoginManager")()); }
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
			ScriptFunction Initialize() { mixin(MGF!("mInitialize", "Function TribesGame.TrLoginManager.Initialize")()); }
			ScriptFunction Login() { mixin(MGF!("mLogin", "Function TribesGame.TrLoginManager.Login")()); }
			ScriptFunction OnUserLoginFailed() { mixin(MGF!("mOnUserLoginFailed", "Function TribesGame.TrLoginManager.OnUserLoginFailed")()); }
			ScriptFunction RetryLogin() { mixin(MGF!("mRetryLogin", "Function TribesGame.TrLoginManager.RetryLogin")()); }
			ScriptFunction Logout() { mixin(MGF!("mLogout", "Function TribesGame.TrLoginManager.Logout")()); }
			ScriptFunction SubmitPlayerName() { mixin(MGF!("mSubmitPlayerName", "Function TribesGame.TrLoginManager.SubmitPlayerName")()); }
			ScriptFunction LoginWaitPopup() { mixin(MGF!("mLoginWaitPopup", "Function TribesGame.TrLoginManager.LoginWaitPopup")()); }
			ScriptFunction PopupData() { mixin(MGF!("mPopupData", "Function TribesGame.TrLoginManager.PopupData")()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptString LoginName() { mixin(MGPC!("ScriptString", 64)()); }
			ScriptString LoginPassword() { mixin(MGPC!("ScriptString", 76)()); }
		}
		bool bRemember() { mixin(MGBPC!(60, 0x1)()); }
		bool bRemember(bool val) { mixin(MSBPC!(60, 0x1)()); }
		bool bWaitingForLoginWaitPopup() { mixin(MGBPC!(60, 0x2)()); }
		bool bWaitingForLoginWaitPopup(bool val) { mixin(MSBPC!(60, 0x2)()); }
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
