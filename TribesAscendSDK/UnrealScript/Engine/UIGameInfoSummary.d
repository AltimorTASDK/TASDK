module UnrealScript.Engine.UIGameInfoSummary;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.UIResourceDataProvider;

extern(C++) interface UIGameInfoSummary : UIResourceDataProvider
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.UIGameInfoSummary")); }
	private static __gshared UIGameInfoSummary mDefaultProperties;
	@property final static UIGameInfoSummary DefaultProperties() { mixin(MGDPC("UIGameInfoSummary", "UIGameInfoSummary Engine.Default__UIGameInfoSummary")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mIsProviderDisabled;
		public @property static final ScriptFunction IsProviderDisabled() { mixin(MGF("mIsProviderDisabled", "Function Engine.UIGameInfoSummary.IsProviderDisabled")); }
	}
	@property final
	{
		auto ref
		{
			ScriptString Description() { mixin(MGPC("ScriptString", 188)); }
			ScriptString GameName() { mixin(MGPC("ScriptString", 176)); }
			ScriptString GameSettingsClassName() { mixin(MGPC("ScriptString", 164)); }
			ScriptString MapPrefix() { mixin(MGPC("ScriptString", 148)); }
			ScriptString GameAcronym() { mixin(MGPC("ScriptString", 136)); }
			ScriptString ClassName() { mixin(MGPC("ScriptString", 124)); }
		}
		bool bIsDisabled() { mixin(MGBPC(160, 0x2)); }
		bool bIsDisabled(bool val) { mixin(MSBPC(160, 0x2)); }
		bool bIsTeamGame() { mixin(MGBPC(160, 0x1)); }
		bool bIsTeamGame(bool val) { mixin(MSBPC(160, 0x1)); }
	}
	final bool IsProviderDisabled()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsProviderDisabled, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
