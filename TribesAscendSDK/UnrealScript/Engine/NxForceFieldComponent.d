module UnrealScript.Engine.NxForceFieldComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.PrimitiveComponent;
import UnrealScript.Engine.ForceFieldShape;

extern(C++) interface NxForceFieldComponent : PrimitiveComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.NxForceFieldComponent")); }
	private static __gshared NxForceFieldComponent mDefaultProperties;
	@property final static NxForceFieldComponent DefaultProperties() { mixin(MGDPC("NxForceFieldComponent", "NxForceFieldComponent Engine.Default__NxForceFieldComponent")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mDoInitRBPhys;
		public @property static final ScriptFunction DoInitRBPhys() { mixin(MGF("mDoInitRBPhys", "Function Engine.NxForceFieldComponent.DoInitRBPhys")); }
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(Pointer) ConvexMeshes() { mixin(MGPC("ScriptArray!(Pointer)", 516)); }
			ScriptArray!(Pointer) ExclusionShapes() { mixin(MGPC("ScriptArray!(Pointer)", 528)); }
			ScriptArray!(Pointer) ExclusionShapePoses() { mixin(MGPC("ScriptArray!(Pointer)", 540)); }
			Pointer RBPhysScene() { mixin(MGPC("Pointer", 564)); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'RenderComponent'!
			float ElapsedTime() { mixin(MGPC("float", 556)); }
			int SceneIndex() { mixin(MGPC("int", 552)); }
			Pointer ForceField() { mixin(MGPC("Pointer", 512)); }
			float Duration() { mixin(MGPC("float", 508)); }
			PrimitiveComponent.RBCollisionChannelContainer CollideWithChannels() { mixin(MGPC("PrimitiveComponent.RBCollisionChannelContainer", 504)); }
			int ExcludeChannel() { mixin(MGPC("int", 496)); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'DrawComponent'!
			ForceFieldShape Shape() { mixin(MGPC("ForceFieldShape", 488)); }
		}
		bool bDestroyWhenInactive() { mixin(MGBPC(500, 0x2)); }
		bool bDestroyWhenInactive(bool val) { mixin(MSBPC(500, 0x2)); }
		bool bForceActive() { mixin(MGBPC(500, 0x1)); }
		bool bForceActive(bool val) { mixin(MSBPC(500, 0x1)); }
	}
	final void DoInitRBPhys()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DoInitRBPhys, cast(void*)0, cast(void*)0);
	}
}
