module UnrealScript.TribesGame.TrAttachment_NinjaSmoke;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_NinjaSmoke : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_NinjaSmoke")); }
	private static __gshared TrAttachment_NinjaSmoke mDefaultProperties;
	@property final static TrAttachment_NinjaSmoke DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_NinjaSmoke)("TrAttachment_NinjaSmoke TribesGame.Default__TrAttachment_NinjaSmoke")); }
}
