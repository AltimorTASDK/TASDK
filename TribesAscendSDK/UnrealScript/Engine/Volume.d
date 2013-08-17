module UnrealScript.Engine.Volume;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SeqAct_Toggle;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.Brush;
import UnrealScript.Engine.HUD;

extern(C++) interface Volume : Brush
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.Volume")()); }
	private static __gshared Volume mDefaultProperties;
	@property final static Volume DefaultProperties() { mixin(MGDPC!(Volume, "Volume Engine.Default__Volume")()); }
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
			ScriptFunction Encompasses() { mixin(MGF!("mEncompasses", "Function Engine.Volume.Encompasses")()); }
			ScriptFunction EncompassesPoint() { mixin(MGF!("mEncompassesPoint", "Function Engine.Volume.EncompassesPoint")()); }
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function Engine.Volume.PostBeginPlay")()); }
			ScriptFunction DisplayDebug() { mixin(MGF!("mDisplayDebug", "Function Engine.Volume.DisplayDebug")()); }
			ScriptFunction OnToggle() { mixin(MGF!("mOnToggle", "Function Engine.Volume.OnToggle")()); }
			ScriptFunction CollisionChanged() { mixin(MGF!("mCollisionChanged", "Function Engine.Volume.CollisionChanged")()); }
			ScriptFunction ProcessActorSetVolume() { mixin(MGF!("mProcessActorSetVolume", "Function Engine.Volume.ProcessActorSetVolume")()); }
		}
	}
	static struct AssociatedTouch
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State Engine.Volume.AssociatedTouch")()); }
	}
	@property final
	{
		@property final auto ref Actor AssociatedActor() { mixin(MGPC!(Actor, 512)()); }
		bool bProcessAllActors() { mixin(MGBPC!(516, 0x2)()); }
		bool bProcessAllActors(bool val) { mixin(MSBPC!(516, 0x2)()); }
		bool bForcePawnWalk() { mixin(MGBPC!(516, 0x1)()); }
		bool bForcePawnWalk(bool val) { mixin(MSBPC!(516, 0x1)()); }
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
	void DisplayDebug(HUD pHUD, ref float out_YL, ref float out_YPos)
	{
		ubyte params[12];
		params[] = 0;
		*cast(HUD*)params.ptr = pHUD;
		*cast(float*)&params[4] = out_YL;
		*cast(float*)&params[8] = out_YPos;
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
