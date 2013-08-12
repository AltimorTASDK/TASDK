module UnrealScript.TribesGame.TrRank_34;

import ScriptClasses;
import UnrealScript.TribesGame.TrRank;

extern(C++) interface TrRank_34 : TrRank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrRank_34")); }
	private static __gshared TrRank_34 mDefaultProperties;
	@property final static TrRank_34 DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrRank_34)("TrRank_34 TribesGame.Default__TrRank_34")); }
}
