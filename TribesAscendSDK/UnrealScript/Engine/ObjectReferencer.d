module UnrealScript.Engine.ObjectReferencer;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface ObjectReferencer : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ObjectReferencer")()); }
	private static __gshared ObjectReferencer mDefaultProperties;
	@property final static ObjectReferencer DefaultProperties() { mixin(MGDPC!(ObjectReferencer, "ObjectReferencer Engine.Default__ObjectReferencer")()); }
	@property final auto ref ScriptArray!(UObject) ReferencedObjects() { mixin(MGPC!(ScriptArray!(UObject), 60)()); }
}
