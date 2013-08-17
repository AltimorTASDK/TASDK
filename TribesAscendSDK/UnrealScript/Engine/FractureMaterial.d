module UnrealScript.Engine.FractureMaterial;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.ParticleSystem;

extern(C++) interface FractureMaterial : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.FractureMaterial")); }
	private static __gshared FractureMaterial mDefaultProperties;
	@property final static FractureMaterial DefaultProperties() { mixin(MGDPC("FractureMaterial", "FractureMaterial Engine.Default__FractureMaterial")); }
	@property final auto ref
	{
		SoundCue FractureSound() { mixin(MGPC("SoundCue", 64)); }
		ParticleSystem FractureEffect() { mixin(MGPC("ParticleSystem", 60)); }
	}
}
