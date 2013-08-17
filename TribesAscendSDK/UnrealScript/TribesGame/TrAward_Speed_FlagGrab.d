module UnrealScript.TribesGame.TrAward_Speed_FlagGrab;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrAward;

extern(C++) interface TrAward_Speed_FlagGrab : TrAward
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAward_Speed_FlagGrab")()); }
	private static __gshared TrAward_Speed_FlagGrab mDefaultProperties;
	@property final static TrAward_Speed_FlagGrab DefaultProperties() { mixin(MGDPC!(TrAward_Speed_FlagGrab, "TrAward_Speed_FlagGrab TribesGame.Default__TrAward_Speed_FlagGrab")()); }
}
