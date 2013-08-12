module UnrealScript.Engine.NxForceField;

import ScriptClasses;
import UnrealScript.Engine.SeqAct_Toggle;
import UnrealScript.Engine.Actor;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PrimitiveComponent;

extern(C++) interface NxForceField : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.NxForceField")); }
	private static __gshared NxForceField mDefaultProperties;
	@property final static NxForceField DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(NxForceField)("NxForceField Engine.Default__NxForceField")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mDoInitRBPhys;
			ScriptFunction mOnToggle;
		}
		public @property static final
		{
			ScriptFunction DoInitRBPhys() { return mDoInitRBPhys ? mDoInitRBPhys : (mDoInitRBPhys = ScriptObject.Find!(ScriptFunction)("Function Engine.NxForceField.DoInitRBPhys")); }
			ScriptFunction OnToggle() { return mOnToggle ? mOnToggle : (mOnToggle = ScriptObject.Find!(ScriptFunction)("Function Engine.NxForceField.OnToggle")); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(UObject.Pointer) ConvexMeshes() { return *cast(ScriptArray!(UObject.Pointer)*)(cast(size_t)cast(void*)this + 496); }
			ScriptArray!(UObject.Pointer) ExclusionShapes() { return *cast(ScriptArray!(UObject.Pointer)*)(cast(size_t)cast(void*)this + 508); }
			ScriptArray!(UObject.Pointer) ExclusionShapePoses() { return *cast(ScriptArray!(UObject.Pointer)*)(cast(size_t)cast(void*)this + 520); }
			int SceneIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 536); }
			UObject.Pointer U2NRotation() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 532); }
			UObject.Pointer ForceField() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 492); }
			PrimitiveComponent.ERBCollisionChannel RBChannel() { return *cast(PrimitiveComponent.ERBCollisionChannel*)(cast(size_t)cast(void*)this + 488); }
			PrimitiveComponent.RBCollisionChannelContainer CollideWithChannels() { return *cast(PrimitiveComponent.RBCollisionChannelContainer*)(cast(size_t)cast(void*)this + 484); }
			int ExcludeChannel() { return *cast(int*)(cast(size_t)cast(void*)this + 476); }
		}
		bool bForceActive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 480) & 0x1) != 0; }
		bool bForceActive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 480) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 480) &= ~0x1; } return val; }
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
