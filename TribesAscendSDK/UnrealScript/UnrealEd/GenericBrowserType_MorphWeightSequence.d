module UnrealScript.UnrealEd.GenericBrowserType_MorphWeightSequence;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.GenericBrowserType;

extern(C++) interface GenericBrowserType_MorphWeightSequence : GenericBrowserType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.GenericBrowserType_MorphWeightSequence")()); }
	private static __gshared GenericBrowserType_MorphWeightSequence mDefaultProperties;
	@property final static GenericBrowserType_MorphWeightSequence DefaultProperties() { mixin(MGDPC!(GenericBrowserType_MorphWeightSequence, "GenericBrowserType_MorphWeightSequence UnrealEd.Default__GenericBrowserType_MorphWeightSequence")()); }
}
