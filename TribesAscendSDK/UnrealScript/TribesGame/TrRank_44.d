module UnrealScript.TribesGame.TrRank_44;

import ScriptClasses;
import UnrealScript.TribesGame.TrRank;

extern(C++) interface TrRank_44 : TrRank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrRank_44")); }
	private static __gshared TrRank_44 mDefaultProperties;
	@property final static TrRank_44 DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrRank_44)("TrRank_44 TribesGame.Default__TrRank_44")); }
}
