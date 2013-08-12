module UnrealScript.Engine.FractureMaterial;

import ScriptClasses;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.ParticleSystem;

extern(C++) interface FractureMaterial : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.FractureMaterial")); }
	private static __gshared FractureMaterial mDefaultProperties;
	@property final static FractureMaterial DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(FractureMaterial)("FractureMaterial Engine.Default__FractureMaterial")); }
	@property final auto ref
	{
		SoundCue FractureSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 64); }
		ParticleSystem FractureEffect() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 60); }
	}
}
