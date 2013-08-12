module UnrealScript.TribesGame.TrAttachment_PrismMine;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_PrismMine : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_PrismMine")); }
	private static __gshared TrAttachment_PrismMine mDefaultProperties;
	@property final static TrAttachment_PrismMine DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_PrismMine)("TrAttachment_PrismMine TribesGame.Default__TrAttachment_PrismMine")); }
}
