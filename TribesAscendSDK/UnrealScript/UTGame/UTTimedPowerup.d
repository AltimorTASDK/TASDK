module UnrealScript.UTGame.UTTimedPowerup;

import ScriptClasses;
import UnrealScript.Helpers;
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
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTTimedPowerup")()); }
	private static __gshared UTTimedPowerup mDefaultProperties;
	@property final static UTTimedPowerup DefaultProperties() { mixin(MGDPC!(UTTimedPowerup, "UTTimedPowerup UTGame.Default__UTTimedPowerup")()); }
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
			ScriptFunction Tick() { mixin(MGF!("mTick", "Function UTGame.UTTimedPowerup.Tick")()); }
			ScriptFunction GivenTo() { mixin(MGF!("mGivenTo", "Function UTGame.UTTimedPowerup.GivenTo")()); }
			ScriptFunction ClientGivenTo() { mixin(MGF!("mClientGivenTo", "Function UTGame.UTTimedPowerup.ClientGivenTo")()); }
			ScriptFunction AdjustPPEffects() { mixin(MGF!("mAdjustPPEffects", "Function UTGame.UTTimedPowerup.AdjustPPEffects")()); }
			ScriptFunction ClientLostItem() { mixin(MGF!("mClientLostItem", "Function UTGame.UTTimedPowerup.ClientLostItem")()); }
			ScriptFunction ClientSetTimeRemaining() { mixin(MGF!("mClientSetTimeRemaining", "Function UTGame.UTTimedPowerup.ClientSetTimeRemaining")()); }
			ScriptFunction TimeRemaingUpdated() { mixin(MGF!("mTimeRemaingUpdated", "Function UTGame.UTTimedPowerup.TimeRemaingUpdated")()); }
			ScriptFunction DisplayPowerup() { mixin(MGF!("mDisplayPowerup", "Function UTGame.UTTimedPowerup.DisplayPowerup")()); }
			ScriptFunction DenyPickupQuery() { mixin(MGF!("mDenyPickupQuery", "Function UTGame.UTTimedPowerup.DenyPickupQuery")()); }
			ScriptFunction TimeExpired() { mixin(MGF!("mTimeExpired", "Function UTGame.UTTimedPowerup.TimeExpired")()); }
			ScriptFunction BotDesireability() { mixin(MGF!("mBotDesireability", "Function UTGame.UTTimedPowerup.BotDesireability")()); }
			ScriptFunction DetourWeight() { mixin(MGF!("mDetourWeight", "Function UTGame.UTTimedPowerup.DetourWeight")()); }
			ScriptFunction GetPowerupStatName() { mixin(MGF!("mGetPowerupStatName", "Function UTGame.UTTimedPowerup.GetPowerupStatName")()); }
		}
	}
	@property final auto ref
	{
		float PP_Scene_Desaturation() { mixin(MGPC!(float, 616)()); }
		Vector PP_Scene_HighLights() { mixin(MGPC!(Vector, 604)()); }
		float WarningTime() { mixin(MGPC!(float, 600)()); }
		float TransitionDuration() { mixin(MGPC!(float, 596)()); }
		float TransitionTime() { mixin(MGPC!(float, 592)()); }
		UIRoot.TextureCoordinates IconCoords() { mixin(MGPC!(UIRoot.TextureCoordinates, 576)()); }
		ScriptName PowerupStatName() { mixin(MGPC!(ScriptName, 568)()); }
		SoundCue PowerupOverSound() { mixin(MGPC!(SoundCue, 564)()); }
		int HudIndex() { mixin(MGPC!(int, 560)()); }
		float TimeRemaining() { mixin(MGPC!(float, 556)()); }
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
	void DisplayPowerup(Canvas pCanvas, UTHUD pHUD, float ResolutionScale, ref float YPos)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Canvas*)params.ptr = pCanvas;
		*cast(UTHUD*)&params[4] = pHUD;
		*cast(float*)&params[8] = ResolutionScale;
		*cast(float*)&params[12] = YPos;
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
