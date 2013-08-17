module UnrealScript.UnrealEd.ListLoopingEmittersCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface ListLoopingEmittersCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.ListLoopingEmittersCommandlet")); }
	private static __gshared ListLoopingEmittersCommandlet mDefaultProperties;
	@property final static ListLoopingEmittersCommandlet DefaultProperties() { mixin(MGDPC("ListLoopingEmittersCommandlet", "ListLoopingEmittersCommandlet UnrealEd.Default__ListLoopingEmittersCommandlet")); }
}
