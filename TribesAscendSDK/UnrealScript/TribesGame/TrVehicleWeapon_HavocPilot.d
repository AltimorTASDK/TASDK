module UnrealScript.TribesGame.TrVehicleWeapon_HavocPilot;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrEffect_MovableDecal;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.TribesGame.TrVehicleWeapon_BurstShot;

extern(C++) interface TrVehicleWeapon_HavocPilot : TrVehicleWeapon_BurstShot
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrVehicleWeapon_HavocPilot")()); }
	private static __gshared TrVehicleWeapon_HavocPilot mDefaultProperties;
	@property final static TrVehicleWeapon_HavocPilot DefaultProperties() { mixin(MGDPC!(TrVehicleWeapon_HavocPilot, "TrVehicleWeapon_HavocPilot TribesGame.Default__TrVehicleWeapon_HavocPilot")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mDestroyed;
			ScriptFunction mTick;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function TribesGame.TrVehicleWeapon_HavocPilot.PostBeginPlay")()); }
			ScriptFunction Destroyed() { mixin(MGF!("mDestroyed", "Function TribesGame.TrVehicleWeapon_HavocPilot.Destroyed")()); }
			ScriptFunction Tick() { mixin(MGF!("mTick", "Function TribesGame.TrVehicleWeapon_HavocPilot.Tick")()); }
		}
	}
	@property final auto ref
	{
		TrEffect_MovableDecal m_BombMarkerDecal() { mixin(MGPC!(TrEffect_MovableDecal, 1804)()); }
		MaterialInstanceConstant m_BombMarkerMIC() { mixin(MGPC!(MaterialInstanceConstant, 1800)()); }
		MaterialInstanceConstant m_BombMarkerTemplate() { mixin(MGPC!(MaterialInstanceConstant, 1796)()); }
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Destroyed, cast(void*)0, cast(void*)0);
	}
	void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.Tick, params.ptr, cast(void*)0);
	}
}
