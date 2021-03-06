module UnrealScript.Engine.ModelComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PrimitiveComponent;

extern(C++) interface ModelComponent : PrimitiveComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.ModelComponent")); }
	private static __gshared ModelComponent mDefaultProperties;
	@property final static ModelComponent DefaultProperties() { mixin(MGDPC("ModelComponent", "ModelComponent Engine.Default__ModelComponent")); }
	@property final auto ref
	{
		ScriptArray!(Pointer) Nodes() { mixin(MGPC("ScriptArray!(Pointer)", 500)); }
		ScriptArray!(Pointer) Elements() { mixin(MGPC("ScriptArray!(Pointer)", 512)); }
		int ComponentIndex() { mixin(MGPC("int", 496)); }
		int ZoneIndex() { mixin(MGPC("int", 492)); }
		UObject ModelVar() { mixin(MGPC("UObject", 488)); }
	}
}
