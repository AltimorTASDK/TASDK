module UnrealScript.TribesGame.TrAttachment_PlasmaCannon;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_PlasmaCannon : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_PlasmaCannon")); }
	private static __gshared TrAttachment_PlasmaCannon mDefaultProperties;
	@property final static TrAttachment_PlasmaCannon DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_PlasmaCannon)("TrAttachment_PlasmaCannon TribesGame.Default__TrAttachment_PlasmaCannon")); }
}
