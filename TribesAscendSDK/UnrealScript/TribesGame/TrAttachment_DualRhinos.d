module UnrealScript.TribesGame.TrAttachment_DualRhinos;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_DualRhinos : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_DualRhinos")); }
	private static __gshared TrAttachment_DualRhinos mDefaultProperties;
	@property final static TrAttachment_DualRhinos DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_DualRhinos)("TrAttachment_DualRhinos TribesGame.Default__TrAttachment_DualRhinos")); }
}
