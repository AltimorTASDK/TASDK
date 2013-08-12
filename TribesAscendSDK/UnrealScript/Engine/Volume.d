module UnrealScript.Engine.Volume;

import ScriptClasses;
import UnrealScript.Engine.SeqAct_Toggle;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.Brush;
import UnrealScript.Engine.HUD;

extern(C++) interface Volume : Brush
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.Volume")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mEncompasses;
			ScriptFunction mEncompassesPoint;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mDisplayDebug;
			ScriptFunction mOnToggle;
			ScriptFunction mCollisionChanged;
			ScriptFunction mProcessActorSetVolume;
		}
		public @property static final
		{
			ScriptFunction Encompasses() { return mEncompasses ? mEncompasses : (mEncompasses = ScriptObject.Find!(ScriptFunction)("Function Engine.Volume.Encompasses")); }
			ScriptFunction EncompassesPoint() { return mEncompassesPoint ? mEncompassesPoint : (mEncompassesPoint = ScriptObject.Find!(ScriptFunction)("Function Engine.Volume.EncompassesPoint")); }
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function Engine.Volume.PostBeginPlay")); }
			ScriptFunction DisplayDebug() { return mDisplayDebug ? mDisplayDebug : (mDisplayDebug = ScriptObject.Find!(ScriptFunction)("Function Engine.Volume.DisplayDebug")); }
			ScriptFunction OnToggle() { return mOnToggle ? mOnToggle : (mOnToggle = ScriptObject.Find!(ScriptFunction)("Function Engine.Volume.OnToggle")); }
			ScriptFunction CollisionChanged() { return mCollisionChanged ? mCollisionChanged : (mCollisionChanged = ScriptObject.Find!(ScriptFunction)("Function Engine.Volume.CollisionChanged")); }
			ScriptFunction ProcessActorSetVolume() { return mProcessActorSetVolume ? mProcessActorSetVolume : (mProcessActorSetVolume = ScriptObject.Find!(ScriptFunction)("Function Engine.Volume.ProcessActorSetVolume")); }
		}
	}
	@property final
	{
		@property final auto ref Actor AssociatedActor() { return *cast(Actor*)(cast(size_t)cast(void*)this + 512); }
		bool bProcessAllActors() { return (*cast(uint*)(cast(size_t)cast(void*)this + 516) & 0x2) != 0; }
		bool bProcessAllActors(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 516) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 516) &= ~0x2; } return val; }
		bool bForcePawnWalk() { return (*cast(uint*)(cast(size_t)cast(void*)this + 516) & 0x1) != 0; }
		bool bForcePawnWalk(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 516) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 516) &= ~0x1; } return val; }
	}
final:
	bool Encompasses(Actor Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.Encompasses, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool EncompassesPoint(Vector Loc)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = Loc;
		(cast(ScriptObject)this).ProcessEvent(Functions.EncompassesPoint, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void DisplayDebug(HUD pHUD, float* out_YL, float* out_YPos)
	{
		ubyte params[12];
		params[] = 0;
		*cast(HUD*)params.ptr = pHUD;
		*cast(float*)&params[4] = *out_YL;
		*cast(float*)&params[8] = *out_YPos;
		(cast(ScriptObject)this).ProcessEvent(Functions.DisplayDebug, params.ptr, cast(void*)0);
		*out_YL = *cast(float*)&params[4];
		*out_YPos = *cast(float*)&params[8];
	}
	void OnToggle(SeqAct_Toggle Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Toggle*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnToggle, params.ptr, cast(void*)0);
	}
	void CollisionChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CollisionChanged, cast(void*)0, cast(void*)0);
	}
	void ProcessActorSetVolume(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProcessActorSetVolume, params.ptr, cast(void*)0);
	}
}
