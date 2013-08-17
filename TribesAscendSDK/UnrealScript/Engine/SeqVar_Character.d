module UnrealScript.Engine.SeqVar_Character;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SeqVar_Object;

extern(C++) interface SeqVar_Character : SeqVar_Object
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SeqVar_Character")); }
	private static __gshared SeqVar_Character mDefaultProperties;
	@property final static SeqVar_Character DefaultProperties() { mixin(MGDPC("SeqVar_Character", "SeqVar_Character Engine.Default__SeqVar_Character")); }
	@property final auto ref ScriptClass PawnClass() { mixin(MGPC("ScriptClass", 176)); }
}
