module UnrealScript.TribesGame.TrPartySettings;

import ScriptClasses;
import UnrealScript.Engine.OnlineGameSettings;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Engine.LocalPlayer;

extern(C++) interface TrPartySettings : OnlineGameSettings
{
	public @property final auto ref ScriptArray!(OnlineSubsystem.OnlinePartyMember) MemberList() { return *cast(ScriptArray!(OnlineSubsystem.OnlinePartyMember)*)(cast(size_t)cast(void*)this + 184); }
	public @property final auto ref OnlineSubsystem OnlineSub() { return *cast(OnlineSubsystem*)(cast(size_t)cast(void*)this + 172); }
	final void Init(LocalPlayer InPlayer)
	{
		ubyte params[4];
		params[] = 0;
		*cast(LocalPlayer*)params.ptr = InPlayer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100605], params.ptr, cast(void*)0);
	}
	final void Close()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100607], cast(void*)0, cast(void*)0);
	}
	final void OnLoginChange(ubyte LocalUserNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100608], params.ptr, cast(void*)0);
	}
	final void RefreshMembersList()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100612], cast(void*)0, cast(void*)0);
	}
}
