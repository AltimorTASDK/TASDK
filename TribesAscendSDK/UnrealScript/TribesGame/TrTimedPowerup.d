module UnrealScript.TribesGame.TrTimedPowerup;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Canvas;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.UIRoot;
import UnrealScript.TribesGame.TrInventory;
import UnrealScript.Engine.HUD;

extern(C++) interface TrTimedPowerup : TrInventory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrTimedPowerup")); }
	private static __gshared TrTimedPowerup mDefaultProperties;
	@property final static TrTimedPowerup DefaultProperties() { mixin(MGDPC("TrTimedPowerup", "TrTimedPowerup TribesGame.Default__TrTimedPowerup")); }
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
			ScriptFunction Tick() { mixin(MGF("mTick", "Function TribesGame.TrTimedPowerup.Tick")); }
			ScriptFunction GivenTo() { mixin(MGF("mGivenTo", "Function TribesGame.TrTimedPowerup.GivenTo")); }
			ScriptFunction ClientGivenTo() { mixin(MGF("mClientGivenTo", "Function TribesGame.TrTimedPowerup.ClientGivenTo")); }
			ScriptFunction AdjustPPEffects() { mixin(MGF("mAdjustPPEffects", "Function TribesGame.TrTimedPowerup.AdjustPPEffects")); }
			ScriptFunction ClientLostItem() { mixin(MGF("mClientLostItem", "Function TribesGame.TrTimedPowerup.ClientLostItem")); }
			ScriptFunction ClientSetTimeRemaining() { mixin(MGF("mClientSetTimeRemaining", "Function TribesGame.TrTimedPowerup.ClientSetTimeRemaining")); }
			ScriptFunction TimeRemaingUpdated() { mixin(MGF("mTimeRemaingUpdated", "Function TribesGame.TrTimedPowerup.TimeRemaingUpdated")); }
			ScriptFunction DisplayPowerup() { mixin(MGF("mDisplayPowerup", "Function TribesGame.TrTimedPowerup.DisplayPowerup")); }
			ScriptFunction DenyPickupQuery() { mixin(MGF("mDenyPickupQuery", "Function TribesGame.TrTimedPowerup.DenyPickupQuery")); }
			ScriptFunction TimeExpired() { mixin(MGF("mTimeExpired", "Function TribesGame.TrTimedPowerup.TimeExpired")); }
			ScriptFunction BotDesireability() { mixin(MGF("mBotDesireability", "Function TribesGame.TrTimedPowerup.BotDesireability")); }
			ScriptFunction DetourWeight() { mixin(MGF("mDetourWeight", "Function TribesGame.TrTimedPowerup.DetourWeight")); }
			ScriptFunction GetPowerupStatName() { mixin(MGF("mGetPowerupStatName", "Function TribesGame.TrTimedPowerup.GetPowerupStatName")); }
		}
	}
	@property final auto ref
	{
		float PP_Scene_Desaturation() { mixin(MGPC("float", 620)); }
		Vector PP_Scene_HighLights() { mixin(MGPC("Vector", 608)); }
		float WarningTime() { mixin(MGPC("float", 604)); }
		float TransitionDuration() { mixin(MGPC("float", 600)); }
		float TransitionTime() { mixin(MGPC("float", 596)); }
		UIRoot.TextureCoordinates IconCoords() { mixin(MGPC("UIRoot.TextureCoordinates", 580)); }
		ScriptName PowerupStatName() { mixin(MGPC("ScriptName", 572)); }
		SoundCue PowerupOverSound() { mixin(MGPC("SoundCue", 568)); }
		int HudIndex() { mixin(MGPC("int", 564)); }
		float TimeRemaining() { mixin(MGPC("float", 560)); }
	}
final:
	void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.Tick, params.ptr, cast(void*)0);
	}
	void GivenTo(Pawn NewOwner, bool* bDoNotActivate = null)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = NewOwner;
		if (bDoNotActivate !is null)
			*cast(bool*)&params[4] = *bDoNotActivate;
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
	void DisplayPowerup(Canvas pCanvas, HUD pHUD, float ResolutionScale, ref float YPos)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Canvas*)params.ptr = pCanvas;
		*cast(HUD*)&params[4] = pHUD;
		*cast(float*)&params[8] = ResolutionScale;
		*cast(float*)&params[12] = YPos;
		(cast(ScriptObject)this).ProcessEvent(Functions.DisplayPowerup, params.ptr, cast(void*)0);
		YPos = *cast(float*)&params[12];
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
