module UnrealScript.TribesGame.TrCallIn_SupportItemPlatform;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.TribesGame.TrGameObjective;

extern(C++) interface TrCallIn_SupportItemPlatform : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrCallIn_SupportItemPlatform")); }
	private static __gshared TrCallIn_SupportItemPlatform mDefaultProperties;
	@property final static TrCallIn_SupportItemPlatform DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrCallIn_SupportItemPlatform)("TrCallIn_SupportItemPlatform TribesGame.Default__TrCallIn_SupportItemPlatform")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetBoundingCylinder;
			ScriptFunction mInit;
			ScriptFunction mScriptGetTeamNum;
			ScriptFunction mHideMesh;
			ScriptFunction mTick;
		}
		public @property static final
		{
			ScriptFunction GetBoundingCylinder() { return mGetBoundingCylinder ? mGetBoundingCylinder : (mGetBoundingCylinder = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrCallIn_SupportItemPlatform.GetBoundingCylinder")); }
			ScriptFunction Init() { return mInit ? mInit : (mInit = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrCallIn_SupportItemPlatform.Init")); }
			ScriptFunction ScriptGetTeamNum() { return mScriptGetTeamNum ? mScriptGetTeamNum : (mScriptGetTeamNum = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrCallIn_SupportItemPlatform.ScriptGetTeamNum")); }
			ScriptFunction HideMesh() { return mHideMesh ? mHideMesh : (mHideMesh = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrCallIn_SupportItemPlatform.HideMesh")); }
			ScriptFunction Tick() { return mTick ? mTick : (mTick = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrCallIn_SupportItemPlatform.Tick")); }
		}
	}
	@property final auto ref
	{
		TrGameObjective r_DeployedItem() { return *cast(TrGameObjective*)(cast(size_t)cast(void*)this + 476); }
		ubyte DefenderTeamIndex() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 496); }
		ScriptName ItemAttachPointName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 488); }
	}
final:
	void GetBoundingCylinder(float* CollisionRadius, float* CollisionHeight)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = *CollisionRadius;
		*cast(float*)&params[4] = *CollisionHeight;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetBoundingCylinder, params.ptr, cast(void*)0);
		*CollisionRadius = *cast(float*)params.ptr;
		*CollisionHeight = *cast(float*)&params[4];
	}
	void Init(Actor DeployableOwner, ScriptClass GameObjectiveClass)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = DeployableOwner;
		*cast(ScriptClass*)&params[4] = GameObjectiveClass;
		(cast(ScriptObject)this).ProcessEvent(Functions.Init, params.ptr, cast(void*)0);
	}
	ubyte ScriptGetTeamNum()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ScriptGetTeamNum, params.ptr, cast(void*)0);
		return params[0];
	}
	void HideMesh()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.HideMesh, cast(void*)0, cast(void*)0);
	}
	void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.Tick, params.ptr, cast(void*)0);
	}
}
