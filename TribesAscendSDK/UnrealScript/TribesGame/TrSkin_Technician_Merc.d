module UnrealScript.TribesGame.TrSkin_Technician_Merc;

import ScriptClasses;
import UnrealScript.TribesGame.TrSkin;

extern(C++) interface TrSkin_Technician_Merc : TrSkin
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrSkin_Technician_Merc")); }
	private static __gshared TrSkin_Technician_Merc mDefaultProperties;
	@property final static TrSkin_Technician_Merc DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrSkin_Technician_Merc)("TrSkin_Technician_Merc TribesGame.Default__TrSkin_Technician_Merc")); }
}
