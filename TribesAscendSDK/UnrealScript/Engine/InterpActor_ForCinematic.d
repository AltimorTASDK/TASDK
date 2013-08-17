module UnrealScript.Engine.InterpActor_ForCinematic;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.InterpActor;

extern(C++) interface InterpActor_ForCinematic : InterpActor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.InterpActor_ForCinematic")()); }
	private static __gshared InterpActor_ForCinematic mDefaultProperties;
	@property final static InterpActor_ForCinematic DefaultProperties() { mixin(MGDPC!(InterpActor_ForCinematic, "InterpActor_ForCinematic Engine.Default__InterpActor_ForCinematic")()); }
}
