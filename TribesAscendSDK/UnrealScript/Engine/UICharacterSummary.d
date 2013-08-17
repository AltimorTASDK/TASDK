module UnrealScript.Engine.UICharacterSummary;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.UIResourceDataProvider;

extern(C++) interface UICharacterSummary : UIResourceDataProvider
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.UICharacterSummary")); }
	private static __gshared UICharacterSummary mDefaultProperties;
	@property final static UICharacterSummary DefaultProperties() { mixin(MGDPC("UICharacterSummary", "UICharacterSummary Engine.Default__UICharacterSummary")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mIsProviderDisabled;
		public @property static final ScriptFunction IsProviderDisabled() { mixin(MGF("mIsProviderDisabled", "Function Engine.UICharacterSummary.IsProviderDisabled")); }
	}
	@property final
	{
		auto ref
		{
			ScriptString CharacterBio() { mixin(MGPC("ScriptString", 148)); }
			ScriptString CharacterName() { mixin(MGPC("ScriptString", 136)); }
			ScriptString ClassPathName() { mixin(MGPC("ScriptString", 124)); }
		}
		bool bIsDisabled() { mixin(MGBPC(160, 0x1)); }
		bool bIsDisabled(bool val) { mixin(MSBPC(160, 0x1)); }
	}
	final bool IsProviderDisabled()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsProviderDisabled, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
