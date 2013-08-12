module UnrealScript.TribesGame.TrPartySettings;

import ScriptClasses;
import UnrealScript.Engine.OnlineGameSettings;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Engine.LocalPlayer;

extern(C++) interface TrPartySettings : OnlineGameSettings
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrPartySettings")); }
	private static __gshared TrPartySettings mDefaultProperties;
	@property final static TrPartySettings DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrPartySettings)("TrPartySettings TribesGame.Default__TrPartySettings")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInit;
			ScriptFunction mClose;
			ScriptFunction mOnLoginChange;
			ScriptFunction mRefreshMembersList;
		}
		public @property static final
		{
			ScriptFunction Init() { return mInit ? mInit : (mInit = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPartySettings.Init")); }
			ScriptFunction Close() { return mClose ? mClose : (mClose = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPartySettings.Close")); }
			ScriptFunction OnLoginChange() { return mOnLoginChange ? mOnLoginChange : (mOnLoginChange = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPartySettings.OnLoginChange")); }
			ScriptFunction RefreshMembersList() { return mRefreshMembersList ? mRefreshMembersList : (mRefreshMembersList = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPartySettings.RefreshMembersList")); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(OnlineSubsystem.OnlinePartyMember) MemberList() { return *cast(ScriptArray!(OnlineSubsystem.OnlinePartyMember)*)(cast(size_t)cast(void*)this + 184); }
		OnlineSubsystem OnlineSub() { return *cast(OnlineSubsystem*)(cast(size_t)cast(void*)this + 172); }
	}
final:
	void Init(LocalPlayer InPlayer)
	{
		ubyte params[4];
		params[] = 0;
		*cast(LocalPlayer*)params.ptr = InPlayer;
		(cast(ScriptObject)this).ProcessEvent(Functions.Init, params.ptr, cast(void*)0);
	}
	void Close()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Close, cast(void*)0, cast(void*)0);
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
