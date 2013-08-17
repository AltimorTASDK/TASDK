module UnrealScript.Engine.SeqVar_RandomInt;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SeqVar_Int;

extern(C++) interface SeqVar_RandomInt : SeqVar_Int
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqVar_RandomInt")()); }
	private static __gshared SeqVar_RandomInt mDefaultProperties;
	@property final static SeqVar_RandomInt DefaultProperties() { mixin(MGDPC!(SeqVar_RandomInt, "SeqVar_RandomInt Engine.Default__SeqVar_RandomInt")()); }
	@property final auto ref
	{
		int Max() { mixin(MGPC!(int, 156)()); }
		int Min() { mixin(MGPC!(int, 152)()); }
	}
}
