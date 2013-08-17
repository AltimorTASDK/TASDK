module UnrealScript.Engine.AutoLadder;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Ladder;

extern(C++) interface AutoLadder : Ladder
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.AutoLadder")()); }
	private static __gshared AutoLadder mDefaultProperties;
	@property final static AutoLadder DefaultProperties() { mixin(MGDPC!(AutoLadder, "AutoLadder Engine.Default__AutoLadder")()); }
}
