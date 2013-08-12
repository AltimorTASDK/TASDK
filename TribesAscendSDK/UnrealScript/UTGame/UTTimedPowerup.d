module UnrealScript.UTGame.UTTimedPowerup;

import ScriptClasses;
import UnrealScript.UTGame.UTInventory;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Canvas;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.UIRoot;
import UnrealScript.UTGame.UTHUD;

extern(C++) interface UTTimedPowerup : UTInventory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTTimedPowerup")); }
	private static __gshared UTTimedPowerup mDefaultProperties;
	@property final static UTTimedPowerup DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTTimedPowerup)("UTTimedPowerup UTGame.Default__UTTimedPowerup")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mTick;
			ScriptFunction mGivenTo;
			ScriptFunction mClientGivenTo;
			ScriptFunction mAdjustPPEffects;
			ScriptFunction mClientLostItem;
			ScriptFunction mClientSetTimeRemaining;
			ScriptFunction mTimeRemaingUpdated;
			ScriptFunction mDisplayPowerup;
			ScriptFunction mDenyPickupQuery;
			ScriptFunction mTimeExpired;
			ScriptFunction mBotDesireability;
			ScriptFunction mDetourWeight;
			ScriptFunction mGetPowerupStatName;
		}
		public @property static final
		{
			ScriptFunction Tick() { return mTick ? mTick : (mTick = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTimedPowerup.Tick")); }
			ScriptFunction GivenTo() { return mGivenTo ? mGivenTo : (mGivenTo = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTimedPowerup.GivenTo")); }
			ScriptFunction ClientGivenTo() { return mClientGivenTo ? mClientGivenTo : (mClientGivenTo = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTimedPowerup.ClientGivenTo")); }
			ScriptFunction AdjustPPEffects() { return mAdjustPPEffects ? mAdjustPPEffects : (mAdjustPPEffects = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTimedPowerup.AdjustPPEffects")); }
			ScriptFunction ClientLostItem() { return mClientLostItem ? mClientLostItem : (mClientLostItem = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTimedPowerup.ClientLostItem")); }
			ScriptFunction ClientSetTimeRemaining() { return mClientSetTimeRemaining ? mClientSetTimeRemaining : (mClientSetTimeRemaining = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTimedPowerup.ClientSetTimeRemaining")); }
			ScriptFunction TimeRemaingUpdated() { return mTimeRemaingUpdated ? mTimeRemaingUpdated : (mTimeRemaingUpdated = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTimedPowerup.TimeRemaingUpdated")); }
			ScriptFunction DisplayPowerup() { return mDisplayPowerup ? mDisplayPowerup : (mDisplayPowerup = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTimedPowerup.DisplayPowerup")); }
			ScriptFunction DenyPickupQuery() { return mDenyPickupQuery ? mDenyPickupQuery : (mDenyPickupQuery = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTimedPowerup.DenyPickupQuery")); }
			ScriptFunction TimeExpired() { return mTimeExpired ? mTimeExpired : (mTimeExpired = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTimedPowerup.TimeExpired")); }
			ScriptFunction BotDesireability() { return mBotDesireability ? mBotDesireability : (mBotDesireability = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTimedPowerup.BotDesireability")); }
			ScriptFunction DetourWeight() { return mDetourWeight ? mDetourWeight : (mDetourWeight = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTimedPowerup.DetourWeight")); }
			ScriptFunction GetPowerupStatName() { return mGetPowerupStatName ? mGetPowerupStatName : (mGetPowerupStatName = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTimedPowerup.GetPowerupStatName")); }
		}
	}
	@property final auto ref
	{
		float PP_Scene_Desaturation() { return *cast(float*)(cast(size_t)cast(void*)this + 616); }
		Vector PP_Scene_HighLights() { return *cast(Vector*)(cast(size_t)cast(void*)this + 604); }
		float WarningTime() { return *cast(float*)(cast(size_t)cast(void*)this + 600); }
		float TransitionDuration() { return *cast(float*)(cast(size_t)cast(void*)this + 596); }
		float TransitionTime() { return *cast(float*)(cast(size_t)cast(void*)this + 592); }
		UIRoot.TextureCoordinates IconCoords() { return *cast(UIRoot.TextureCoordinates*)(cast(size_t)cast(void*)this + 576); }
		ScriptName PowerupStatName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 568); }
		SoundCue PowerupOverSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 564); }
		int HudIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 560); }
		float TimeRemaining() { return *cast(float*)(cast(size_t)cast(void*)this + 556); }
	}
final:
	void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.Tick, params.ptr, cast(void*)0);
	}
	void GivenTo(Pawn NewOwner, bool bDoNotActivate)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = NewOwner;
		*cast(bool*)&params[4] = bDoNotActivate;
		(cast(ScriptObject)this).ProcessEvent(Functions.GivenTo, params.ptr, cast(void*)0);
	}
	void ClientGivenTo(Pawn NewOwner, bool bDoNotActivate)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = NewOwner;
		*cast(bool*)&params[4] = bDoNotActivate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientGivenTo, params.ptr, cast(void*)0);
	}
	void AdjustPPEffects(Pawn P, bool bRemove)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		*cast(bool*)&params[4] = bRemove;
		(cast(ScriptObject)this).ProcessEvent(Functions.AdjustPPEffects, params.ptr, cast(void*)0);
	}
	void ClientLostItem()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientLostItem, cast(void*)0, cast(void*)0);
	}
	void ClientSetTimeRemaining(float NewTimeRemaining)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = NewTimeRemaining;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientSetTimeRemaining, params.ptr, cast(void*)0);
	}
	void TimeRemaingUpdated()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.TimeRemaingUpdated, cast(void*)0, cast(void*)0);
	}
	void DisplayPowerup(Canvas pCanvas, UTHUD pHUD, float ResolutionScale, float* YPos)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Canvas*)params.ptr = pCanvas;
		*cast(UTHUD*)&params[4] = pHUD;
		*cast(float*)&params[8] = ResolutionScale;
		*cast(float*)&params[12] = *YPos;
		(cast(ScriptObject)this).ProcessEvent(Functions.DisplayPowerup, params.ptr, cast(void*)0);
		*YPos = *cast(float*)&params[12];
	}
	bool DenyPickupQuery(ScriptClass ItemClass, Actor Pickup)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = ItemClass;
		*cast(Actor*)&params[4] = Pickup;
		(cast(ScriptObject)this).ProcessEvent(Functions.DenyPickupQuery, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void TimeExpired()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.TimeExpired, cast(void*)0, cast(void*)0);
	}
	static float BotDesireability(Actor PickupHolder, Pawn P, Controller C)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Actor*)params.ptr = PickupHolder;
		*cast(Pawn*)&params[4] = P;
		*cast(Controller*)&params[8] = C;
		StaticClass.ProcessEvent(Functions.BotDesireability, params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
	static float DetourWeight(Pawn Other, float PathWeight)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		*cast(float*)&params[4] = PathWeight;
		StaticClass.ProcessEvent(Functions.DetourWeight, params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	ScriptName GetPowerupStatName()
	{
		ubyte params[8];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPowerupStatName, params.ptr, cast(void*)0);
		return *cast(ScriptName*)params.ptr;
	}
}
