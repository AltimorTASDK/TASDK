module UnrealScript.UDKBase.UDKTeleporterBase;

import ScriptClasses;
import UnrealScript.Engine.Teleporter;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Engine.TextureRenderTarget2D;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.MaterialInterface;

extern(C++) interface UDKTeleporterBase : Teleporter
{
	public @property final auto ref SoundCue TeleportingSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 768); }
	public @property final auto ref ScriptName PortalTextureParameter() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 760); }
	public @property final auto ref MaterialInstanceConstant PortalMaterialInstance() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 756); }
	public @property final auto ref MaterialInterface PortalMaterial() { return *cast(MaterialInterface*)(cast(size_t)cast(void*)this + 752); }
	public @property final auto ref Actor PortalViewTarget() { return *cast(Actor*)(cast(size_t)cast(void*)this + 748); }
	public @property final auto ref int TextureResolutionY() { return *cast(int*)(cast(size_t)cast(void*)this + 744); }
	public @property final auto ref int TextureResolutionX() { return *cast(int*)(cast(size_t)cast(void*)this + 740); }
	public @property final auto ref TextureRenderTarget2D TextureTarget() { return *cast(TextureRenderTarget2D*)(cast(size_t)cast(void*)this + 736); }
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35537], cast(void*)0, cast(void*)0);
	}
	final void InitializePortalEffect(Actor Dest)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Dest;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35539], params.ptr, cast(void*)0);
	}
	final bool Accept(Actor Incoming, Actor Source)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Actor*)params.ptr = Incoming;
		*cast(Actor*)&params[4] = Source;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35542], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
}
