module UnrealScript.UTGame.UTVehicleFactory;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Canvas;
import UnrealScript.UTGame.UTVehicle;
import UnrealScript.Engine.SeqAct_Toggle;
import UnrealScript.UDKBase.UDKVehicleFactory;
import UnrealScript.UTGame.UTPlayerController;
import UnrealScript.Core.UObject;
import UnrealScript.UTGame.UTMapInfo;
import UnrealScript.UTGame.UTGameObjective;

extern(C++) interface UTVehicleFactory : UDKVehicleFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTVehicleFactory")); }
	private static __gshared UTVehicleFactory mDefaultProperties;
	@property final static UTVehicleFactory DefaultProperties() { mixin(MGDPC("UTVehicleFactory", "UTVehicleFactory UTGame.Default__UTVehicleFactory")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mAddToClosestObjective;
			ScriptFunction mSetInitialState;
			ScriptFunction mRenderMapIcon;
			ScriptFunction mActivate;
			ScriptFunction mDeactivate;
			ScriptFunction mVehicleTaken;
			ScriptFunction mVehicleDestroyed;
			ScriptFunction mTriggerSpawnedEvent;
			ScriptFunction mOnToggle;
			ScriptFunction mGetSpawnRotation;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { mixin(MGF("mPostBeginPlay", "Function UTGame.UTVehicleFactory.PostBeginPlay")); }
			ScriptFunction AddToClosestObjective() { mixin(MGF("mAddToClosestObjective", "Function UTGame.UTVehicleFactory.AddToClosestObjective")); }
			ScriptFunction SetInitialState() { mixin(MGF("mSetInitialState", "Function UTGame.UTVehicleFactory.SetInitialState")); }
			ScriptFunction RenderMapIcon() { mixin(MGF("mRenderMapIcon", "Function UTGame.UTVehicleFactory.RenderMapIcon")); }
			ScriptFunction Activate() { mixin(MGF("mActivate", "Function UTGame.UTVehicleFactory.Activate")); }
			ScriptFunction Deactivate() { mixin(MGF("mDeactivate", "Function UTGame.UTVehicleFactory.Deactivate")); }
			ScriptFunction VehicleTaken() { mixin(MGF("mVehicleTaken", "Function UTGame.UTVehicleFactory.VehicleTaken")); }
			ScriptFunction VehicleDestroyed() { mixin(MGF("mVehicleDestroyed", "Function UTGame.UTVehicleFactory.VehicleDestroyed")); }
			ScriptFunction TriggerSpawnedEvent() { mixin(MGF("mTriggerSpawnedEvent", "Function UTGame.UTVehicleFactory.TriggerSpawnedEvent")); }
			ScriptFunction OnToggle() { mixin(MGF("mOnToggle", "Function UTGame.UTVehicleFactory.OnToggle")); }
			ScriptFunction GetSpawnRotation() { mixin(MGF("mGetSpawnRotation", "Function UTGame.UTVehicleFactory.GetSpawnRotation")); }
		}
	}
	static struct Active
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA("State UTGame.UTVehicleFactory.Active")); }
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(Rotator) InitialGunRotations() { mixin(MGPC("ScriptArray!(Rotator)", 748)); }
			UTGameObjective ReverseObjective() { mixin(MGPC("UTGameObjective", 744)); }
			float SpawnZOffset() { mixin(MGPC("float", 736)); }
		}
		bool bStartNeutral() { mixin(MGBPC(740, 0x2)); }
		bool bStartNeutral(bool val) { mixin(MSBPC(740, 0x2)); }
		bool bKeyVehicle() { mixin(MGBPC(740, 0x8)); }
		bool bKeyVehicle(bool val) { mixin(MSBPC(740, 0x8)); }
		bool bForceAvoidReversing() { mixin(MGBPC(740, 0x10)); }
		bool bForceAvoidReversing(bool val) { mixin(MSBPC(740, 0x10)); }
		bool bDisabled() { mixin(MGBPC(740, 0x4)); }
		bool bDisabled(bool val) { mixin(MSBPC(740, 0x4)); }
		bool bMayReverseSpawnDirection() { mixin(MGBPC(740, 0x1)); }
		bool bMayReverseSpawnDirection(bool val) { mixin(MSBPC(740, 0x1)); }
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void AddToClosestObjective()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.AddToClosestObjective, cast(void*)0, cast(void*)0);
	}
	void SetInitialState()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetInitialState, cast(void*)0, cast(void*)0);
	}
	void RenderMapIcon(UTMapInfo MP, Canvas pCanvas, UTPlayerController PlayerOwner, UObject.LinearColor FinalColor)
	{
		ubyte params[28];
		params[] = 0;
		*cast(UTMapInfo*)params.ptr = MP;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(UTPlayerController*)&params[8] = PlayerOwner;
		*cast(UObject.LinearColor*)&params[12] = FinalColor;
		(cast(ScriptObject)this).ProcessEvent(Functions.RenderMapIcon, params.ptr, cast(void*)0);
	}
	void Activate(ubyte T)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = T;
		(cast(ScriptObject)this).ProcessEvent(Functions.Activate, params.ptr, cast(void*)0);
	}
	void Deactivate()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Deactivate, cast(void*)0, cast(void*)0);
	}
	void VehicleTaken()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.VehicleTaken, cast(void*)0, cast(void*)0);
	}
	void VehicleDestroyed(UTVehicle V)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTVehicle*)params.ptr = V;
		(cast(ScriptObject)this).ProcessEvent(Functions.VehicleDestroyed, params.ptr, cast(void*)0);
	}
	void TriggerSpawnedEvent()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.TriggerSpawnedEvent, cast(void*)0, cast(void*)0);
	}
	void OnToggle(SeqAct_Toggle Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Toggle*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnToggle, params.ptr, cast(void*)0);
	}
	Rotator GetSpawnRotation()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSpawnRotation, params.ptr, cast(void*)0);
		return *cast(Rotator*)params.ptr;
	}
}
