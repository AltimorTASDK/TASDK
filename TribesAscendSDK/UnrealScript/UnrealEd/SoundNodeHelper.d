module UnrealScript.UnrealEd.SoundNodeHelper;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface SoundNodeHelper : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.SoundNodeHelper")()); }
	private static __gshared SoundNodeHelper mDefaultProperties;
	@property final static SoundNodeHelper DefaultProperties() { mixin(MGDPC!(SoundNodeHelper, "SoundNodeHelper UnrealEd.Default__SoundNodeHelper")()); }
}
