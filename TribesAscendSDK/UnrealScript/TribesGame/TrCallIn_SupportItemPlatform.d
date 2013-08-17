module UnrealScript.TribesGame.TrCallIn_SupportItemPlatform;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Actor;
import UnrealScript.TribesGame.TrGameObjective;

extern(C++) interface TrCallIn_SupportItemPlatform : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrCallIn_SupportItemPlatform")()); }
	private static __gshared TrCallIn_SupportItemPlatform mDefaultProperties;
	@property final static TrCallIn_SupportItemPlatform DefaultProperties() { mixin(MGDPC!(TrCallIn_SupportItemPlatform, "TrCallIn_SupportItemPlatform TribesGame.Default__TrCallIn_SupportItemPlatform")()); }
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
			ScriptFunction GetBoundingCylinder() { mixin(MGF!("mGetBoundingCylinder", "Function TribesGame.TrCallIn_SupportItemPlatform.GetBoundingCylinder")()); }
			ScriptFunction Init() { mixin(MGF!("mInit", "Function TribesGame.TrCallIn_SupportItemPlatform.Init")()); }
			ScriptFunction ScriptGetTeamNum() { mixin(MGF!("mScriptGetTeamNum", "Function TribesGame.TrCallIn_SupportItemPlatform.ScriptGetTeamNum")()); }
			ScriptFunction HideMesh() { mixin(MGF!("mHideMesh", "Function TribesGame.TrCallIn_SupportItemPlatform.HideMesh")()); }
			ScriptFunction Tick() { mixin(MGF!("mTick", "Function TribesGame.TrCallIn_SupportItemPlatform.Tick")()); }
		}
	}
	@property final auto ref
	{
		TrGameObjective r_DeployedItem() { mixin(MGPC!(TrGameObjective, 476)()); }
		ubyte DefenderTeamIndex() { mixin(MGPC!(ubyte, 496)()); }
		ScriptName ItemAttachPointName() { mixin(MGPC!(ScriptName, 488)()); }
		// WARNING: Property 'CylinderComponent' has the same name as a defined type!
		// ERROR: Unsupported object class 'ComponentProperty' for the property named 'm_Mesh'!
	}
final:
	void GetBoundingCylinder(ref float CollisionRadius, ref float CollisionHeight)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = CollisionRadius;
		*cast(float*)&params[4] = CollisionHeight;
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
