module UnrealScript.TribesGame.TrAward_Speed_FlagGrab;

import ScriptClasses;
import UnrealScript.TribesGame.TrAward;

extern(C++) interface TrAward_Speed_FlagGrab : TrAward
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAward_Speed_FlagGrab")); }
	private static __gshared TrAward_Speed_FlagGrab mDefaultProperties;
	@property final static TrAward_Speed_FlagGrab DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAward_Speed_FlagGrab)("TrAward_Speed_FlagGrab TribesGame.Default__TrAward_Speed_FlagGrab")); }
}
