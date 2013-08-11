module UnrealScript.UDKBase.UDKGameObjective;

import ScriptClasses;
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
	@property final
	{
		auto ref
		{
			ScriptArray!(NavigationPoint) ShootSpots() { return *cast(ScriptArray!(NavigationPoint)*)(cast(size_t)cast(void*)this + 692); }
			ubyte DefenderTeamIndex() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 740); }
			UIRoot.TextureCoordinates IconCoords() { return *cast(UIRoot.TextureCoordinates*)(cast(size_t)cast(void*)this + 724); }
			Texture2D IconHudTexture() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 720); }
			Vector HUDLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 708); }
		}
		bool bUnderAttack() { return (*cast(uint*)(cast(size_t)cast(void*)this + 704) & 0x2) != 0; }
		bool bUnderAttack(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 704) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 704) &= ~0x2; } return val; }
		bool bAllowOnlyShootable() { return (*cast(uint*)(cast(size_t)cast(void*)this + 704) & 0x1) != 0; }
		bool bAllowOnlyShootable(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 704) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 704) &= ~0x1; } return val; }
	}
final:
	void ObjectiveChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34876], cast(void*)0, cast(void*)0);
	}
	Actor GetBestViewTarget()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34877], params.ptr, cast(void*)0);
		return *cast(Actor*)params.ptr;
	}
	bool BotNearObjective(AIController C)
	{
		ubyte params[8];
		params[] = 0;
		*cast(AIController*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34879], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void TriggerFlagEvent(ScriptName EventType, Controller EventInstigator)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = EventType;
		*cast(Controller*)&params[8] = EventInstigator;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34882], params.ptr, cast(void*)0);
	}
	void SetHUDLocation(Vector NewHUDLocation)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = NewHUDLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34885], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34887], params.ptr, cast(void*)0);
	}
	ubyte GetTeamNum()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34894], params.ptr, cast(void*)0);
		return params[0];
	}
}
