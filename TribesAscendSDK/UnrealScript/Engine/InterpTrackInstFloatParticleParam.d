module UnrealScript.Engine.InterpTrackInstFloatParticleParam;

import ScriptClasses;
import UnrealScript.Engine.InterpTrackInst;

extern(C++) interface InterpTrackInstFloatParticleParam : InterpTrackInst
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.InterpTrackInstFloatParticleParam")); }
	private static __gshared InterpTrackInstFloatParticleParam mDefaultProperties;
	@property final static InterpTrackInstFloatParticleParam DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(InterpTrackInstFloatParticleParam)("InterpTrackInstFloatParticleParam Engine.Default__InterpTrackInstFloatParticleParam")); }
	@property final auto ref float ResetFloat() { return *cast(float*)(cast(size_t)cast(void*)this + 60); }
}
