module UnrealScript.TribesGame.TrCamera_DiamondSword;

import ScriptClasses;
import UnrealScript.TribesGame.TrCamera_SpectatorBookmark;

extern(C++) interface TrCamera_DiamondSword : TrCamera_SpectatorBookmark
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrCamera_DiamondSword")); }
	private static __gshared TrCamera_DiamondSword mDefaultProperties;
	@property final static TrCamera_DiamondSword DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrCamera_DiamondSword)("TrCamera_DiamondSword TribesGame.Default__TrCamera_DiamondSword")); }
}
