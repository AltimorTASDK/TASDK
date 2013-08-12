module UnrealScript.Engine.InterpTrackFloatParticleParam;

import ScriptClasses;
import UnrealScript.Engine.InterpTrackFloatBase;

extern(C++) interface InterpTrackFloatParticleParam : InterpTrackFloatBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.InterpTrackFloatParticleParam")); }
	private static __gshared InterpTrackFloatParticleParam mDefaultProperties;
	@property final static InterpTrackFloatParticleParam DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(InterpTrackFloatParticleParam)("InterpTrackFloatParticleParam Engine.Default__InterpTrackFloatParticleParam")); }
	@property final auto ref ScriptName ParamName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 148); }
}
