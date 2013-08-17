module UnrealScript.UDKBase.UDKGameObjective;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.NavigationPoint;
import UnrealScript.Engine.AIController;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Canvas;
import UnrealScript.UDKBase.UDKPlayerController;
import UnrealScript.Engine.Texture2D;
import UnrealScript.Engine.Actor;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.UIRoot;

extern(C++) interface UDKGameObjective : NavigationPoint
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UDKBase.UDKGameObjective")()); }
	private static __gshared UDKGameObjective mDefaultProperties;
	@property final static UDKGameObjective DefaultProperties() { mixin(MGDPC!(UDKGameObjective, "UDKGameObjective UDKBase.Default__UDKGameObjective")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mObjectiveChanged;
			ScriptFunction mGetBestViewTarget;
			ScriptFunction mBotNearObjective;
			ScriptFunction mTriggerFlagEvent;
			ScriptFunction mSetHUDLocation;
			ScriptFunction mDrawIcon;
			ScriptFunction mGetTeamNum;
		}
		public @property static final
		{
			ScriptFunction ObjectiveChanged() { mixin(MGF!("mObjectiveChanged", "Function UDKBase.UDKGameObjective.ObjectiveChanged")()); }
			ScriptFunction GetBestViewTarget() { mixin(MGF!("mGetBestViewTarget", "Function UDKBase.UDKGameObjective.GetBestViewTarget")()); }
			ScriptFunction BotNearObjective() { mixin(MGF!("mBotNearObjective", "Function UDKBase.UDKGameObjective.BotNearObjective")()); }
			ScriptFunction TriggerFlagEvent() { mixin(MGF!("mTriggerFlagEvent", "Function UDKBase.UDKGameObjective.TriggerFlagEvent")()); }
			ScriptFunction SetHUDLocation() { mixin(MGF!("mSetHUDLocation", "Function UDKBase.UDKGameObjective.SetHUDLocation")()); }
			ScriptFunction DrawIcon() { mixin(MGF!("mDrawIcon", "Function UDKBase.UDKGameObjective.DrawIcon")()); }
			ScriptFunction GetTeamNum() { mixin(MGF!("mGetTeamNum", "Function UDKBase.UDKGameObjective.GetTeamNum")()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(NavigationPoint) ShootSpots() { mixin(MGPC!(ScriptArray!(NavigationPoint), 692)()); }
			ubyte DefenderTeamIndex() { mixin(MGPC!(ubyte, 740)()); }
			UIRoot.TextureCoordinates IconCoords() { mixin(MGPC!(UIRoot.TextureCoordinates, 724)()); }
			Texture2D IconHudTexture() { mixin(MGPC!(Texture2D, 720)()); }
			Vector HUDLocation() { mixin(MGPC!(Vector, 708)()); }
		}
		bool bUnderAttack() { mixin(MGBPC!(704, 0x2)()); }
		bool bUnderAttack(bool val) { mixin(MSBPC!(704, 0x2)()); }
		bool bAllowOnlyShootable() { mixin(MGBPC!(704, 0x1)()); }
		bool bAllowOnlyShootable(bool val) { mixin(MSBPC!(704, 0x1)()); }
	}
final:
	void ObjectiveChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ObjectiveChanged, cast(void*)0, cast(void*)0);
	}
	Actor GetBestViewTarget()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetBestViewTarget, params.ptr, cast(void*)0);
		return *cast(Actor*)params.ptr;
	}
	bool BotNearObjective(AIController C)
	{
		ubyte params[8];
		params[] = 0;
		*cast(AIController*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(Functions.BotNearObjective, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void TriggerFlagEvent(ScriptName EventType, Controller EventInstigator)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = EventType;
		*cast(Controller*)&params[8] = EventInstigator;
		(cast(ScriptObject)this).ProcessEvent(Functions.TriggerFlagEvent, params.ptr, cast(void*)0);
	}
	void SetHUDLocation(Vector NewHUDLocation)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = NewHUDLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetHUDLocation, params.ptr, cast(void*)0);
	}
	void DrawIcon(Canvas pCanvas, Vector IconLocation, float IconWidth, float IconAlpha, UDKPlayerController PlayerOwner, UObject.LinearColor DrawColor)
	{
		ubyte params[44];
		params[] = 0;
		*cast(Canvas*)params.ptr = pCanvas;
		*cast(Vector*)&params[4] = IconLocation;
		*cast(float*)&params[16] = IconWidth;
		*cast(float*)&params[20] = IconAlpha;
		*cast(UDKPlayerController*)&params[24] = PlayerOwner;
		*cast(UObject.LinearColor*)&params[28] = DrawColor;
		(cast(ScriptObject)this).ProcessEvent(Functions.DrawIcon, params.ptr, cast(void*)0);
	}
	ubyte GetTeamNum()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetTeamNum, params.ptr, cast(void*)0);
		return params[0];
	}
}
