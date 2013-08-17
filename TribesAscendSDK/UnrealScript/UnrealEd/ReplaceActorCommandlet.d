module UnrealScript.UnrealEd.ReplaceActorCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface ReplaceActorCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.ReplaceActorCommandlet")); }
	private static __gshared ReplaceActorCommandlet mDefaultProperties;
	@property final static ReplaceActorCommandlet DefaultProperties() { mixin(MGDPC("ReplaceActorCommandlet", "ReplaceActorCommandlet UnrealEd.Default__ReplaceActorCommandlet")); }
}
