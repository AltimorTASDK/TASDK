module UnrealScript.Engine.UIWeaponSummary;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.UIResourceDataProvider;

extern(C++) interface UIWeaponSummary : UIResourceDataProvider
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.UIWeaponSummary")()); }
	private static __gshared UIWeaponSummary mDefaultProperties;
	@property final static UIWeaponSummary DefaultProperties() { mixin(MGDPC!(UIWeaponSummary, "UIWeaponSummary Engine.Default__UIWeaponSummary")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mIsProviderDisabled;
		public @property static final ScriptFunction IsProviderDisabled() { mixin(MGF!("mIsProviderDisabled", "Function Engine.UIWeaponSummary.IsProviderDisabled")()); }
	}
	@property final
	{
		auto ref
		{
			ScriptString WeaponDescription() { mixin(MGPC!("ScriptString", 148)()); }
			ScriptString FriendlyName() { mixin(MGPC!("ScriptString", 136)()); }
			ScriptString ClassPathName() { mixin(MGPC!("ScriptString", 124)()); }
		}
		bool bIsDisabled() { mixin(MGBPC!(160, 0x1)()); }
		bool bIsDisabled(bool val) { mixin(MSBPC!(160, 0x1)()); }
	}
	final bool IsProviderDisabled()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsProviderDisabled, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
