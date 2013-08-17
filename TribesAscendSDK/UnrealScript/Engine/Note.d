module UnrealScript.Engine.Note;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Actor;

extern(C++) interface Note : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.Note")()); }
	private static __gshared Note mDefaultProperties;
	@property final static Note DefaultProperties() { mixin(MGDPC!(Note, "Note Engine.Default__Note")()); }
	@property final auto ref ScriptString Text() { mixin(MGPC!("ScriptString", 476)()); }
}
