module UnrealScript.Engine.LineBatchComponent;

import ScriptClasses;
import UnrealScript.Helpers;
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
		ScriptArray!(Pointer) BatchedLines() { mixin(MGPC("ScriptArray!(Pointer)", 496)); }
		ScriptArray!(Pointer) BatchedPoints() { mixin(MGPC("ScriptArray!(Pointer)", 508)); }
		float DefaultLifeTime() { mixin(MGPC("float", 520)); }
		Pointer FPrimitiveDrawInterfaceView() { mixin(MGPC("Pointer", 492)); }
		Pointer FPrimitiveDrawInterfaceVfTable() { mixin(MGPC("Pointer", 488)); }
	}
}
