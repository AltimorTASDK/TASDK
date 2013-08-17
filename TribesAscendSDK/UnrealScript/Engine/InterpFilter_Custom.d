module UnrealScript.Engine.InterpFilter_Custom;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.InterpFilter;
import UnrealScript.Engine.InterpGroup;

extern(C++) interface InterpFilter_Custom : InterpFilter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.InterpFilter_Custom")()); }
	private static __gshared InterpFilter_Custom mDefaultProperties;
	@property final static InterpFilter_Custom DefaultProperties() { mixin(MGDPC!(InterpFilter_Custom, "InterpFilter_Custom Engine.Default__InterpFilter_Custom")()); }
	@property final auto ref ScriptArray!(InterpGroup) GroupsToInclude() { mixin(MGPC!(ScriptArray!(InterpGroup), 72)()); }
}
