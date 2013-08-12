module UnrealScript.TribesGame.TrInventoryStation_Storm;

import ScriptClasses;
import UnrealScript.TribesGame.TrInventoryStation;

extern(C++) interface TrInventoryStation_Storm : TrInventoryStation
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrInventoryStation_Storm")); }
	private static __gshared TrInventoryStation_Storm mDefaultProperties;
	@property final static TrInventoryStation_Storm DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrInventoryStation_Storm)("TrInventoryStation_Storm TribesGame.Default__TrInventoryStation_Storm")); }
}
