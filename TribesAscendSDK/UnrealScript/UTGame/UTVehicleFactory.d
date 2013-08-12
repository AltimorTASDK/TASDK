module UnrealScript.UTGame.UTVehicleFactory;

import ScriptClasses;
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
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTVehicleFactory")); }
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
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicleFactory.PostBeginPlay")); }
			ScriptFunction AddToClosestObjective() { return mAddToClosestObjective ? mAddToClosestObjective : (mAddToClosestObjective = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicleFactory.AddToClosestObjective")); }
			ScriptFunction SetInitialState() { return mSetInitialState ? mSetInitialState : (mSetInitialState = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicleFactory.SetInitialState")); }
			ScriptFunction RenderMapIcon() { return mRenderMapIcon ? mRenderMapIcon : (mRenderMapIcon = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicleFactory.RenderMapIcon")); }
			ScriptFunction Activate() { return mActivate ? mActivate : (mActivate = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicleFactory.Activate")); }
			ScriptFunction Deactivate() { return mDeactivate ? mDeactivate : (mDeactivate = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicleFactory.Deactivate")); }
			ScriptFunction VehicleTaken() { return mVehicleTaken ? mVehicleTaken : (mVehicleTaken = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicleFactory.VehicleTaken")); }
			ScriptFunction VehicleDestroyed() { return mVehicleDestroyed ? mVehicleDestroyed : (mVehicleDestroyed = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicleFactory.VehicleDestroyed")); }
			ScriptFunction TriggerSpawnedEvent() { return mTriggerSpawnedEvent ? mTriggerSpawnedEvent : (mTriggerSpawnedEvent = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicleFactory.TriggerSpawnedEvent")); }
			ScriptFunction OnToggle() { return mOnToggle ? mOnToggle : (mOnToggle = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicleFactory.OnToggle")); }
			ScriptFunction GetSpawnRotation() { return mGetSpawnRotation ? mGetSpawnRotation : (mGetSpawnRotation = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicleFactory.GetSpawnRotation")); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(Rotator) InitialGunRotations() { return *cast(ScriptArray!(Rotator)*)(cast(size_t)cast(void*)this + 748); }
			UTGameObjective ReverseObjective() { return *cast(UTGameObjective*)(cast(size_t)cast(void*)this + 744); }
			float SpawnZOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 736); }
		}
		bool bStartNeutral() { return (*cast(uint*)(cast(size_t)cast(void*)this + 740) & 0x2) != 0; }
		bool bStartNeutral(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 740) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 740) &= ~0x2; } return val; }
		bool bKeyVehicle() { return (*cast(uint*)(cast(size_t)cast(void*)this + 740) & 0x8) != 0; }
		bool bKeyVehicle(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 740) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 740) &= ~0x8; } return val; }
		bool bForceAvoidReversing() { return (*cast(uint*)(cast(size_t)cast(void*)this + 740) & 0x10) != 0; }
		bool bForceAvoidReversing(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 740) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 740) &= ~0x10; } return val; }
		bool bDisabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 740) & 0x4) != 0; }
		bool bDisabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 740) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 740) &= ~0x4; } return val; }
		bool bMayReverseSpawnDirection() { return (*cast(uint*)(cast(size_t)cast(void*)this + 740) & 0x1) != 0; }
		bool bMayReverseSpawnDirection(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 740) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 740) &= ~0x1; } return val; }
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
