module UnrealScript.Engine.NxForceField;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SeqAct_Toggle;
import UnrealScript.Engine.Actor;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PrimitiveComponent;

extern(C++) interface NxForceField : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.NxForceField")); }
	private static __gshared NxForceField mDefaultProperties;
	@property final static NxForceField DefaultProperties() { mixin(MGDPC("NxForceField", "NxForceField Engine.Default__NxForceField")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mDoInitRBPhys;
			ScriptFunction mOnToggle;
		}
		public @property static final
		{
			ScriptFunction DoInitRBPhys() { mixin(MGF("mDoInitRBPhys", "Function Engine.NxForceField.DoInitRBPhys")); }
			ScriptFunction OnToggle() { mixin(MGF("mOnToggle", "Function Engine.NxForceField.OnToggle")); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(Pointer) ConvexMeshes() { mixin(MGPC("ScriptArray!(Pointer)", 496)); }
			ScriptArray!(Pointer) ExclusionShapes() { mixin(MGPC("ScriptArray!(Pointer)", 508)); }
			ScriptArray!(Pointer) ExclusionShapePoses() { mixin(MGPC("ScriptArray!(Pointer)", 520)); }
			int SceneIndex() { mixin(MGPC("int", 536)); }
			Pointer U2NRotation() { mixin(MGPC("Pointer", 532)); }
			Pointer ForceField() { mixin(MGPC("Pointer", 492)); }
			PrimitiveComponent.ERBCollisionChannel RBChannel() { mixin(MGPC("PrimitiveComponent.ERBCollisionChannel", 488)); }
			PrimitiveComponent.RBCollisionChannelContainer CollideWithChannels() { mixin(MGPC("PrimitiveComponent.RBCollisionChannelContainer", 484)); }
			int ExcludeChannel() { mixin(MGPC("int", 476)); }
		}
		bool bForceActive() { mixin(MGBPC(480, 0x1)); }
		bool bForceActive(bool val) { mixin(MSBPC(480, 0x1)); }
	}
final:
	void DoInitRBPhys()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DoInitRBPhys, cast(void*)0, cast(void*)0);
	}
	void OnToggle(SeqAct_Toggle inAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Toggle*)params.ptr = inAction;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnToggle, params.ptr, cast(void*)0);
	}
}
