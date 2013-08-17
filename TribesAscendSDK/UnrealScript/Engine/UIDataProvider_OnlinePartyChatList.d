module UnrealScript.Engine.UIDataProvider_OnlinePartyChatList;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Engine.LocalPlayer;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.UIDataProvider_OnlinePlayerDataBase;

extern(C++) interface UIDataProvider_OnlinePartyChatList : UIDataProvider_OnlinePlayerDataBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.UIDataProvider_OnlinePartyChatList")()); }
	private static __gshared UIDataProvider_OnlinePartyChatList mDefaultProperties;
	@property final static UIDataProvider_OnlinePartyChatList DefaultProperties() { mixin(MGDPC!(UIDataProvider_OnlinePartyChatList, "UIDataProvider_OnlinePartyChatList Engine.Default__UIDataProvider_OnlinePartyChatList")()); }
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
			ScriptFunction OnRegister() { mixin(MGF!("mOnRegister", "Function Engine.UIDataProvider_OnlinePartyChatList.OnRegister")()); }
			ScriptFunction OnUnregister() { mixin(MGF!("mOnUnregister", "Function Engine.UIDataProvider_OnlinePartyChatList.OnUnregister")()); }
			ScriptFunction OnLoginChange() { mixin(MGF!("mOnLoginChange", "Function Engine.UIDataProvider_OnlinePartyChatList.OnLoginChange")()); }
			ScriptFunction RefreshMembersList() { mixin(MGF!("mRefreshMembersList", "Function Engine.UIDataProvider_OnlinePartyChatList.RefreshMembersList")()); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(OnlineSubsystem.OnlinePartyMember) PartyMembersList() { mixin(MGPC!(ScriptArray!(OnlineSubsystem.OnlinePartyMember), 96)()); }
		ScriptArray!(ScriptString) NatTypes() { mixin(MGPC!(ScriptArray!(ScriptString), 108)()); }
		ScriptString IsPlayingThisGameCol() { mixin(MGPC!(ScriptString, 192)()); }
		ScriptString IsInGameSessionCol() { mixin(MGPC!(ScriptString, 180)()); }
		ScriptString IsTalkingCol() { mixin(MGPC!(ScriptString, 168)()); }
		ScriptString IsInPartyVoiceCol() { mixin(MGPC!(ScriptString, 156)()); }
		ScriptString IsLocalCol() { mixin(MGPC!(ScriptString, 144)()); }
		ScriptString NatTypeCol() { mixin(MGPC!(ScriptString, 132)()); }
		ScriptString NickNameCol() { mixin(MGPC!(ScriptString, 120)()); }
		UObject.Pointer VfTable_IUIListElementCellProvider() { mixin(MGPC!(UObject.Pointer, 92)()); }
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
