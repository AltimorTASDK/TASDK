module UnrealScript.TribesGame.TrDaDCapacitor;

import ScriptClasses;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Canvas;
import UnrealScript.TribesGame.TrDaDCore;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.Texture2D;
import UnrealScript.TribesGame.TrGameObjective;

extern(C++) interface TrDaDCapacitor : TrGameObjective
{
	public @property final auto ref ScriptString StringC() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1404); }
	public @property final auto ref ScriptString StringB() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1392); }
	public @property final auto ref ScriptString StringA() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1380); }
	public @property final auto ref int m_CapacitorIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 1372); }
	public @property final auto ref TrDaDCore m_Core() { return *cast(TrDaDCore*)(cast(size_t)cast(void*)this + 1368); }
	public @property final auto ref float m_fShieldBarPlacementY() { return *cast(float*)(cast(size_t)cast(void*)this + 1364); }
	public @property final auto ref MaterialInstanceConstant m_ShieldBarMIC() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 1360); }
	final void Init(TrDaDCore Core, int Index)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrDaDCore*)params.ptr = Core;
		*cast(int*)&params[4] = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[79468], params.ptr, cast(void*)0);
	}
	final void TakeDamage(int DamageAmount, Controller EventInstigator, Vector HitLocation, Vector Momentum, ScriptClass DamageType, Actor.TraceHitInfo HitInfo, Actor DamageCauser)
	{
		ubyte params[68];
		params[] = 0;
		*cast(int*)params.ptr = DamageAmount;
		*cast(Controller*)&params[4] = EventInstigator;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = Momentum;
		*cast(ScriptClass*)&params[32] = DamageType;
		*cast(Actor.TraceHitInfo*)&params[36] = HitInfo;
		*cast(Actor*)&params[64] = DamageCauser;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[79471], params.ptr, cast(void*)0);
	}
	final ScriptString GetScreenName(PlayerController PC)
	{
		ubyte params[16];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[79486], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	final void PostRenderFor(PlayerController PC, Canvas pCanvas, Vector CameraPosition, Vector CameraDir)
	{
		ubyte params[32];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(Vector*)&params[8] = CameraPosition;
		*cast(Vector*)&params[20] = CameraDir;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[79490], params.ptr, cast(void*)0);
	}
	final Texture2D GetMarker()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[79508], params.ptr, cast(void*)0);
		return *cast(Texture2D*)params.ptr;
	}
}
