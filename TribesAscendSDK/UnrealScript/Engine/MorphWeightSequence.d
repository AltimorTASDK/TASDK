module UnrealScript.Engine.MorphWeightSequence;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface MorphWeightSequence : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MorphWeightSequence")); }
	private static __gshared MorphWeightSequence mDefaultProperties;
	@property final static MorphWeightSequence DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MorphWeightSequence)("MorphWeightSequence Engine.Default__MorphWeightSequence")); }
}
