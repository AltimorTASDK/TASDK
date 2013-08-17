module UnrealScript.Engine.LineBatchComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PrimitiveComponent;

extern(C++) interface LineBatchComponent : PrimitiveComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.LineBatchComponent")); }
	private static __gshared LineBatchComponent mDefaultProperties;
	@property final static LineBatchComponent DefaultProperties() { mixin(MGDPC("LineBatchComponent", "LineBatchComponent Engine.Default__LineBatchComponent")); }
	@property final auto ref
	{
		ScriptArray!(UObject.Pointer) BatchedLines() { mixin(MGPC("ScriptArray!(UObject.Pointer)", 496)); }
		ScriptArray!(UObject.Pointer) BatchedPoints() { mixin(MGPC("ScriptArray!(UObject.Pointer)", 508)); }
		float DefaultLifeTime() { mixin(MGPC("float", 520)); }
		UObject.Pointer FPrimitiveDrawInterfaceView() { mixin(MGPC("UObject.Pointer", 492)); }
		UObject.Pointer FPrimitiveDrawInterfaceVfTable() { mixin(MGPC("UObject.Pointer", 488)); }
	}
}
