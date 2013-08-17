module UnrealScript.Engine.SeqVar_RandomFloat;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SeqVar_Float;

extern(C++) interface SeqVar_RandomFloat : SeqVar_Float
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SeqVar_RandomFloat")); }
	private static __gshared SeqVar_RandomFloat mDefaultProperties;
	@property final static SeqVar_RandomFloat DefaultProperties() { mixin(MGDPC("SeqVar_RandomFloat", "SeqVar_RandomFloat Engine.Default__SeqVar_RandomFloat")); }
	@property final auto ref
	{
		float Max() { mixin(MGPC("float", 156)); }
		float Min() { mixin(MGPC("float", 152)); }
	}
}
