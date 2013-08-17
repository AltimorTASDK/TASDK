module UnrealScript.Engine.MorphWeightSequence;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface MorphWeightSequence : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.MorphWeightSequence")); }
	private static __gshared MorphWeightSequence mDefaultProperties;
	@property final static MorphWeightSequence DefaultProperties() { mixin(MGDPC("MorphWeightSequence", "MorphWeightSequence Engine.Default__MorphWeightSequence")); }
}
