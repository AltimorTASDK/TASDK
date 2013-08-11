module UnrealScript.TribesGame.TrLoginManager;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Core.UObject;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface TrLoginManager : UObject
{
	public @property final bool bRemember() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x1) != 0; }
	public @property final bool bRemember(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x1; } return val; }
	public @property final auto ref ScriptString LoginName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 64); }
	public @property final auto ref ScriptString LoginPassword() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 76); }
	public @property final bool bWaitingForLoginWaitPopup() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x2) != 0; }
	public @property final bool bWaitingForLoginWaitPopup(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x2; } return val; }
	final void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[98659], cast(void*)0, cast(void*)0);
	}
	final bool Login(ScriptString UserName, ScriptString Password, bool bShouldRemember)
	{
		ubyte params[32];
		params[] = 0;
		*cast(ScriptString*)params.ptr = UserName;
		*cast(ScriptString*)&params[12] = Password;
		*cast(bool*)&params[24] = bShouldRemember;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[98660], params.ptr, cast(void*)0);
		return *cast(bool*)&params[28];
	}
	final void OnUserLoginFailed(ubyte LocalUserNum, OnlineSubsystem.EOnlineServerConnectionStatus ErrorCode)
	{
		ubyte params[2];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.EOnlineServerConnectionStatus*)&params[1] = ErrorCode;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[98665], params.ptr, cast(void*)0);
	}
	final void RetryLogin()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[98669], cast(void*)0, cast(void*)0);
	}
	final void Logout()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[98670], cast(void*)0, cast(void*)0);
	}
	final void SubmitPlayerName(ScriptString PlayerName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[98671], params.ptr, cast(void*)0);
	}
	final void LoginWaitPopup()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[98673], cast(void*)0, cast(void*)0);
	}
	final void PopupData(GFxObject Obj)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = Obj;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[98674], params.ptr, cast(void*)0);
	}
}
