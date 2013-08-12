module UnrealScript.TribesGame.TrRank_38;

import ScriptClasses;
import UnrealScript.TribesGame.TrRank;

extern(C++) interface TrRank_38 : TrRank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrRank_38")); }
	private static __gshared TrRank_38 mDefaultProperties;
	@property final static TrRank_38 DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrRank_38)("TrRank_38 TribesGame.Default__TrRank_38")); }
}
