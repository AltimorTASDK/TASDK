module UnrealScript.TribesGame.TrFamilyInfo_Heavy_Doombringer;

import ScriptClasses;
import UnrealScript.TribesGame.TrFamilyInfo_Heavy;

extern(C++) interface TrFamilyInfo_Heavy_Doombringer : TrFamilyInfo_Heavy
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrFamilyInfo_Heavy_Doombringer")); }
	private static __gshared TrFamilyInfo_Heavy_Doombringer mDefaultProperties;
	@property final static TrFamilyInfo_Heavy_Doombringer DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrFamilyInfo_Heavy_Doombringer)("TrFamilyInfo_Heavy_Doombringer TribesGame.Default__TrFamilyInfo_Heavy_Doombringer")); }
}
