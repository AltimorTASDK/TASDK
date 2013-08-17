module UnrealScript.Engine.ModelComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PrimitiveComponent;

extern(C++) interface ModelComponent : PrimitiveComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ModelComponent")()); }
	private static __gshared ModelComponent mDefaultProperties;
	@property final static ModelComponent DefaultProperties() { mixin(MGDPC!(ModelComponent, "ModelComponent Engine.Default__ModelComponent")()); }
	@property final auto ref
	{
		ScriptArray!(UObject.Pointer) Nodes() { mixin(MGPC!(ScriptArray!(UObject.Pointer), 500)()); }
		ScriptArray!(UObject.Pointer) Elements() { mixin(MGPC!(ScriptArray!(UObject.Pointer), 512)()); }
		int ComponentIndex() { mixin(MGPC!(int, 496)()); }
		int ZoneIndex() { mixin(MGPC!(int, 492)()); }
		// WARNING: Property 'Model' has the same name as a defined type!
	}
}
