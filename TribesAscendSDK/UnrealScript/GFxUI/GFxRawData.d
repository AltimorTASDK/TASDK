module UnrealScript.GFxUI.GFxRawData;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface GFxRawData : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class GFxUI.GFxRawData")()); }
	private static __gshared GFxRawData mDefaultProperties;
	@property final static GFxRawData DefaultProperties() { mixin(MGDPC!(GFxRawData, "GFxRawData GFxUI.Default__GFxRawData")()); }
	@property final auto ref
	{
		ScriptArray!(ubyte) RawData() { mixin(MGPC!("ScriptArray!(ubyte)", 60)()); }
		ScriptArray!(ScriptString) ReferencedSwfs() { mixin(MGPC!("ScriptArray!(ScriptString)", 72)()); }
		ScriptArray!(UObject) References() { mixin(MGPC!("ScriptArray!(UObject)", 84)()); }
		ScriptArray!(UObject) UserReferences() { mixin(MGPC!("ScriptArray!(UObject)", 96)()); }
	}
}
