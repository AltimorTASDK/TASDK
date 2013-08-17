module UnrealScript.Engine.NavMeshObstacle;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SeqAct_Toggle;
import UnrealScript.Engine.Actor;
import UnrealScript.Core.UObject;

extern(C++) interface NavMeshObstacle : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.NavMeshObstacle")()); }
	private static __gshared NavMeshObstacle mDefaultProperties;
	@property final static NavMeshObstacle DefaultProperties() { mixin(MGDPC!(NavMeshObstacle, "NavMeshObstacle Engine.Default__NavMeshObstacle")()); }
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
			ScriptFunction GetObstacleBoudingShape() { mixin(MGF!("mGetObstacleBoudingShape", "Function Engine.NavMeshObstacle.GetObstacleBoudingShape")()); }
			ScriptFunction RegisterObstacle() { mixin(MGF!("mRegisterObstacle", "Function Engine.NavMeshObstacle.RegisterObstacle")()); }
			ScriptFunction UnRegisterObstacle() { mixin(MGF!("mUnRegisterObstacle", "Function Engine.NavMeshObstacle.UnRegisterObstacle")()); }
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function Engine.NavMeshObstacle.PostBeginPlay")()); }
			ScriptFunction OnToggle() { mixin(MGF!("mOnToggle", "Function Engine.NavMeshObstacle.OnToggle")()); }
			ScriptFunction SetEnabled() { mixin(MGF!("mSetEnabled", "Function Engine.NavMeshObstacle.SetEnabled")()); }
		}
	}
	@property final
	{
		@property final auto ref UObject.Pointer VfTable_IInterface_NavMeshPathObstacle() { mixin(MGPC!(UObject.Pointer, 476)()); }
		bool bPreserveInternalGeo() { mixin(MGBPC!(480, 0x2)()); }
		bool bPreserveInternalGeo(bool val) { mixin(MSBPC!(480, 0x2)()); }
		bool bEnabled() { mixin(MGBPC!(480, 0x1)()); }
		bool bEnabled(bool val) { mixin(MSBPC!(480, 0x1)()); }
	}
final:
	bool GetObstacleBoudingShape(ref ScriptArray!(Vector) Shape)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptArray!(Vector)*)params.ptr = Shape;
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
