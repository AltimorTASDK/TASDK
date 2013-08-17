module UnrealScript.Engine.LightmassPrimitiveSettingsObject;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.EngineTypes;

extern(C++) interface LightmassPrimitiveSettingsObject : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.LightmassPrimitiveSettingsObject")()); }
	private static __gshared LightmassPrimitiveSettingsObject mDefaultProperties;
	@property final static LightmassPrimitiveSettingsObject DefaultProperties() { mixin(MGDPC!(LightmassPrimitiveSettingsObject, "LightmassPrimitiveSettingsObject Engine.Default__LightmassPrimitiveSettingsObject")()); }
	@property final auto ref EngineTypes.LightmassPrimitiveSettings LightmassSettings() { mixin(MGPC!("EngineTypes.LightmassPrimitiveSettings", 60)()); }
}
