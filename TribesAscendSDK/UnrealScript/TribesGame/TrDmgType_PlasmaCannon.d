module UnrealScript.TribesGame.TrDmgType_PlasmaCannon;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Explosive;

extern(C++) interface TrDmgType_PlasmaCannon : TrDmgType_Explosive
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_PlasmaCannon")); }
	private static __gshared TrDmgType_PlasmaCannon mDefaultProperties;
	@property final static TrDmgType_PlasmaCannon DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_PlasmaCannon)("TrDmgType_PlasmaCannon TribesGame.Default__TrDmgType_PlasmaCannon")); }
}
