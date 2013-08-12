module UnrealScript.TribesGame.TrSkin_Pathfinder_Merc;

import ScriptClasses;
import UnrealScript.TribesGame.TrSkin;

extern(C++) interface TrSkin_Pathfinder_Merc : TrSkin
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrSkin_Pathfinder_Merc")); }
	private static __gshared TrSkin_Pathfinder_Merc mDefaultProperties;
	@property final static TrSkin_Pathfinder_Merc DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrSkin_Pathfinder_Merc)("TrSkin_Pathfinder_Merc TribesGame.Default__TrSkin_Pathfinder_Merc")); }
}
