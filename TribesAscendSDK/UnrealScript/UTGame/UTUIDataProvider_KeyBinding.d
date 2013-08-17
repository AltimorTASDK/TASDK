module UnrealScript.UTGame.UTUIDataProvider_KeyBinding;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTUIResourceDataProvider;

extern(C++) interface UTUIDataProvider_KeyBinding : UTUIResourceDataProvider
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTUIDataProvider_KeyBinding")); }
	private static __gshared UTUIDataProvider_KeyBinding mDefaultProperties;
	@property final static UTUIDataProvider_KeyBinding DefaultProperties() { mixin(MGDPC("UTUIDataProvider_KeyBinding", "UTUIDataProvider_KeyBinding UTGame.Default__UTUIDataProvider_KeyBinding")); }
	@property final
	{
		@property final auto ref ScriptString Command() { mixin(MGPC("ScriptString", 152)); }
		bool bIsCrucialBind() { mixin(MGBPC(164, 0x1)); }
		bool bIsCrucialBind(bool val) { mixin(MSBPC(164, 0x1)); }
	}
}
