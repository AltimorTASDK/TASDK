module UnrealScript.Engine.InterpTrackVectorProp;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.InterpTrackVectorBase;

extern(C++) interface InterpTrackVectorProp : InterpTrackVectorBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.InterpTrackVectorProp")); }
	private static __gshared InterpTrackVectorProp mDefaultProperties;
	@property final static InterpTrackVectorProp DefaultProperties() { mixin(MGDPC("InterpTrackVectorProp", "InterpTrackVectorProp Engine.Default__InterpTrackVectorProp")); }
	@property final auto ref ScriptName PropertyName() { mixin(MGPC("ScriptName", 148)); }
}
