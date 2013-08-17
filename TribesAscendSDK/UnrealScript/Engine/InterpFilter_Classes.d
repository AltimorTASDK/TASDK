module UnrealScript.Engine.InterpFilter_Classes;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.InterpFilter;

extern(C++) interface InterpFilter_Classes : InterpFilter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.InterpFilter_Classes")()); }
	private static __gshared InterpFilter_Classes mDefaultProperties;
	@property final static InterpFilter_Classes DefaultProperties() { mixin(MGDPC!(InterpFilter_Classes, "InterpFilter_Classes Engine.Default__InterpFilter_Classes")()); }
	@property final auto ref
	{
		ScriptArray!(ScriptClass) TrackClasses() { mixin(MGPC!("ScriptArray!(ScriptClass)", 76)()); }
		ScriptClass ClassToFilterBy() { mixin(MGPC!("ScriptClass", 72)()); }
	}
}
