module UnrealScript.UnrealEd.SequenceObjectHelper;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface SequenceObjectHelper : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.SequenceObjectHelper")); }
	private static __gshared SequenceObjectHelper mDefaultProperties;
	@property final static SequenceObjectHelper DefaultProperties() { mixin(MGDPC("SequenceObjectHelper", "SequenceObjectHelper UnrealEd.Default__SequenceObjectHelper")); }
}
