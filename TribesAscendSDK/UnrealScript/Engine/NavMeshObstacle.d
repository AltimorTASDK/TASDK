module UnrealScript.Engine.NavMeshObstacle;

import ScriptClasses;
import UnrealScript.Engine.SeqAct_Toggle;
import UnrealScript.Engine.Actor;
import UnrealScript.Core.UObject;

extern(C++) interface NavMeshObstacle : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.NavMeshObstacle")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetObstacleBoudingShape;
			ScriptFunction mRegisterObstacle;
			ScriptFunction mUnRegisterObstacle;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mOnToggle;
			ScriptFunction mSetEnabled;
		}
		public @property static final
		{
			ScriptFunction GetObstacleBoudingShape() { return mGetObstacleBoudingShape ? mGetObstacleBoudingShape : (mGetObstacleBoudingShape = ScriptObject.Find!(ScriptFunction)("Function Engine.NavMeshObstacle.GetObstacleBoudingShape")); }
			ScriptFunction RegisterObstacle() { return mRegisterObstacle ? mRegisterObstacle : (mRegisterObstacle = ScriptObject.Find!(ScriptFunction)("Function Engine.NavMeshObstacle.RegisterObstacle")); }
			ScriptFunction UnRegisterObstacle() { return mUnRegisterObstacle ? mUnRegisterObstacle : (mUnRegisterObstacle = ScriptObject.Find!(ScriptFunction)("Function Engine.NavMeshObstacle.UnRegisterObstacle")); }
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function Engine.NavMeshObstacle.PostBeginPlay")); }
			ScriptFunction OnToggle() { return mOnToggle ? mOnToggle : (mOnToggle = ScriptObject.Find!(ScriptFunction)("Function Engine.NavMeshObstacle.OnToggle")); }
			ScriptFunction SetEnabled() { return mSetEnabled ? mSetEnabled : (mSetEnabled = ScriptObject.Find!(ScriptFunction)("Function Engine.NavMeshObstacle.SetEnabled")); }
		}
	}
	@property final
	{
		@property final auto ref UObject.Pointer VfTable_IInterface_NavMeshPathObstacle() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 476); }
		bool bPreserveInternalGeo() { return (*cast(uint*)(cast(size_t)cast(void*)this + 480) & 0x2) != 0; }
		bool bPreserveInternalGeo(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 480) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 480) &= ~0x2; } return val; }
		bool bEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 480) & 0x1) != 0; }
		bool bEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 480) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 480) &= ~0x1; } return val; }
	}
final:
	bool GetObstacleBoudingShape(ScriptArray!(Vector)* Shape)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptArray!(Vector)*)params.ptr = *Shape;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetObstacleBoudingShape, params.ptr, cast(void*)0);
		*Shape = *cast(ScriptArray!(Vector)*)params.ptr;
		return *cast(bool*)&params[12];
	}
	void RegisterObstacle()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RegisterObstacle, cast(void*)0, cast(void*)0);
	}
	void UnRegisterObstacle()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UnRegisterObstacle, cast(void*)0, cast(void*)0);
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void OnToggle(SeqAct_Toggle Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Toggle*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnToggle, params.ptr, cast(void*)0);
	}
	void SetEnabled(bool bInEnabled)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bInEnabled;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetEnabled, params.ptr, cast(void*)0);
	}
}
