module UnrealScript.Core.Exporter;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface Exporter : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Core.Exporter")()); }
	private static __gshared Exporter mDefaultProperties;
	@property final static Exporter DefaultProperties() { mixin(MGDPC!(Exporter, "Exporter Core.Default__Exporter")()); }
	@property final auto ref
	{
		ScriptArray!(ScriptString) FormatExtension() { mixin(MGPC!("ScriptArray!(ScriptString)", 64)()); }
		ScriptArray!(ScriptString) FormatDescription() { mixin(MGPC!("ScriptArray!(ScriptString)", 76)()); }
	}
}
