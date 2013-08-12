module UnrealScript.Engine.UIDataProvider_OnlinePartyChatList;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Engine.LocalPlayer;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.UIDataProvider_OnlinePlayerDataBase;

extern(C++) interface UIDataProvider_OnlinePartyChatList : UIDataProvider_OnlinePlayerDataBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.UIDataProvider_OnlinePartyChatList")); }
	private static __gshared UIDataProvider_OnlinePartyChatList mDefaultProperties;
	@property final static UIDataProvider_OnlinePartyChatList DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UIDataProvider_OnlinePartyChatList)("UIDataProvider_OnlinePartyChatList Engine.Default__UIDataProvider_OnlinePartyChatList")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mOnRegister;
			ScriptFunction mOnUnregister;
			ScriptFunction mOnLoginChange;
			ScriptFunction mRefreshMembersList;
		}
		public @property static final
		{
			ScriptFunction OnRegister() { return mOnRegister ? mOnRegister : (mOnRegister = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataProvider_OnlinePartyChatList.OnRegister")); }
			ScriptFunction OnUnregister() { return mOnUnregister ? mOnUnregister : (mOnUnregister = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataProvider_OnlinePartyChatList.OnUnregister")); }
			ScriptFunction OnLoginChange() { return mOnLoginChange ? mOnLoginChange : (mOnLoginChange = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataProvider_OnlinePartyChatList.OnLoginChange")); }
			ScriptFunction RefreshMembersList() { return mRefreshMembersList ? mRefreshMembersList : (mRefreshMembersList = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataProvider_OnlinePartyChatList.RefreshMembersList")); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(OnlineSubsystem.OnlinePartyMember) PartyMembersList() { return *cast(ScriptArray!(OnlineSubsystem.OnlinePartyMember)*)(cast(size_t)cast(void*)this + 96); }
		ScriptArray!(ScriptString) NatTypes() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 108); }
		ScriptString IsPlayingThisGameCol() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 192); }
		ScriptString IsInGameSessionCol() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 180); }
		ScriptString IsTalkingCol() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 168); }
		ScriptString IsInPartyVoiceCol() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 156); }
		ScriptString IsLocalCol() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 144); }
		ScriptString NatTypeCol() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 132); }
		ScriptString NickNameCol() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 120); }
		UObject.Pointer VfTable_IUIListElementCellProvider() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 92); }
	}
final:
	void OnRegister(LocalPlayer InPlayer)
	{
		ubyte params[4];
		params[] = 0;
		*cast(LocalPlayer*)params.ptr = InPlayer;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnRegister, params.ptr, cast(void*)0);
	}
	void OnUnregister()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnUnregister, cast(void*)0, cast(void*)0);
	}
	void OnLoginChange(ubyte LocalUserNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnLoginChange, params.ptr, cast(void*)0);
	}
	void RefreshMembersList()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RefreshMembersList, cast(void*)0, cast(void*)0);
	}
}
