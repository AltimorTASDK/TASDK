module UnrealScript.Engine.NxForceFieldComponent;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PrimitiveComponent;
import UnrealScript.Engine.ForceFieldShape;

extern(C++) interface NxForceFieldComponent : PrimitiveComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.NxForceFieldComponent")); }
	private static __gshared NxForceFieldComponent mDefaultProperties;
	@property final static NxForceFieldComponent DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(NxForceFieldComponent)("NxForceFieldComponent Engine.Default__NxForceFieldComponent")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mDoInitRBPhys;
		public @property static final ScriptFunction DoInitRBPhys() { return mDoInitRBPhys ? mDoInitRBPhys : (mDoInitRBPhys = ScriptObject.Find!(ScriptFunction)("Function Engine.NxForceFieldComponent.DoInitRBPhys")); }
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(UObject.Pointer) ConvexMeshes() { return *cast(ScriptArray!(UObject.Pointer)*)(cast(size_t)cast(void*)this + 516); }
			ScriptArray!(UObject.Pointer) ExclusionShapes() { return *cast(ScriptArray!(UObject.Pointer)*)(cast(size_t)cast(void*)this + 528); }
			ScriptArray!(UObject.Pointer) ExclusionShapePoses() { return *cast(ScriptArray!(UObject.Pointer)*)(cast(size_t)cast(void*)this + 540); }
			UObject.Pointer RBPhysScene() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 564); }
			float ElapsedTime() { return *cast(float*)(cast(size_t)cast(void*)this + 556); }
			int SceneIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 552); }
			UObject.Pointer ForceField() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 512); }
			float Duration() { return *cast(float*)(cast(size_t)cast(void*)this + 508); }
			PrimitiveComponent.RBCollisionChannelContainer CollideWithChannels() { return *cast(PrimitiveComponent.RBCollisionChannelContainer*)(cast(size_t)cast(void*)this + 504); }
			int ExcludeChannel() { return *cast(int*)(cast(size_t)cast(void*)this + 496); }
			ForceFieldShape Shape() { return *cast(ForceFieldShape*)(cast(size_t)cast(void*)this + 488); }
		}
		bool bDestroyWhenInactive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 500) & 0x2) != 0; }
		bool bDestroyWhenInactive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 500) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 500) &= ~0x2; } return val; }
		bool bForceActive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 500) & 0x1) != 0; }
		bool bForceActive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 500) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 500) &= ~0x1; } return val; }
	}
	final void DoInitRBPhys()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DoInitRBPhys, cast(void*)0, cast(void*)0);
	}
}
