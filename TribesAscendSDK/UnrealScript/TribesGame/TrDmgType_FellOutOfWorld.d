module UnrealScript.TribesGame.TrDmgType_FellOutOfWorld;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Base;

extern(C++) interface TrDmgType_FellOutOfWorld : TrDmgType_Base
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDmgType_FellOutOfWorld")); }
	private static __gshared TrDmgType_FellOutOfWorld mDefaultProperties;
	@property final static TrDmgType_FellOutOfWorld DefaultProperties() { mixin(MGDPC("TrDmgType_FellOutOfWorld", "TrDmgType_FellOutOfWorld TribesGame.Default__TrDmgType_FellOutOfWorld")); }
}
