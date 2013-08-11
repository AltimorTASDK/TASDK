module UnrealScript.Engine.UIDataProvider_OnlinePartyChatList;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Engine.LocalPlayer;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.UIDataProvider_OnlinePlayerDataBase;

extern(C++) interface UIDataProvider_OnlinePartyChatList : UIDataProvider_OnlinePlayerDataBase
{
	public @property final auto ref ScriptArray!(OnlineSubsystem.OnlinePartyMember) PartyMembersList() { return *cast(ScriptArray!(OnlineSubsystem.OnlinePartyMember)*)(cast(size_t)cast(void*)this + 96); }
	public @property final auto ref ScriptArray!(ScriptString) NatTypes() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 108); }
	public @property final auto ref ScriptString IsPlayingThisGameCol() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 192); }
	public @property final auto ref ScriptString IsInGameSessionCol() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 180); }
	public @property final auto ref ScriptString IsTalkingCol() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 168); }
	public @property final auto ref ScriptString IsInPartyVoiceCol() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 156); }
	public @property final auto ref ScriptString IsLocalCol() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 144); }
	public @property final auto ref ScriptString NatTypeCol() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 132); }
	public @property final auto ref ScriptString NickNameCol() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 120); }
	public @property final auto ref UObject.Pointer VfTable_IUIListElementCellProvider() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 92); }
	final void OnRegister(LocalPlayer InPlayer)
	{
		ubyte params[4];
		params[] = 0;
		*cast(LocalPlayer*)params.ptr = InPlayer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28236], params.ptr, cast(void*)0);
	}
	final void OnUnregister()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28240], cast(void*)0, cast(void*)0);
	}
	final void OnLoginChange(ubyte LocalUserNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28243], params.ptr, cast(void*)0);
	}
	final void RefreshMembersList()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28247], cast(void*)0, cast(void*)0);
	}
}
