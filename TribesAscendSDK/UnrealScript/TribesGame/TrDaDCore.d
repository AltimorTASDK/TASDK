module UnrealScript.TribesGame.TrDaDCore;

import ScriptClasses;
import UnrealScript.TribesGame.TrDaDCapacitor;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Canvas;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.PlayerController;
import UnrealScript.TribesGame.TrGameObjective;
import UnrealScript.TribesGame.TrDaDShell;
import UnrealScript.TribesGame.TrDaDCoreShield;

extern(C++) interface TrDaDCore : TrGameObjective
{
	public @property final auto ref TrDaDShell m_Shell() { return *cast(TrDaDShell*)(cast(size_t)cast(void*)this + 1392); }
	public @property final auto ref TrDaDCoreShield m_Shields() { return *cast(TrDaDCoreShield*)(cast(size_t)cast(void*)this + 1380); }
	public @property final auto ref TrDaDCapacitor m_Capacitors() { return *cast(TrDaDCapacitor*)(cast(size_t)cast(void*)this + 1368); }
	public @property final auto ref float m_fShieldBarPlacementY() { return *cast(float*)(cast(size_t)cast(void*)this + 1364); }
	public @property final auto ref MaterialInstanceConstant m_ShieldBarMIC() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 1360); }
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[79558], cast(void*)0, cast(void*)0);
	}
	final void SpawnShield(int ShieldIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = ShieldIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[79561], params.ptr, cast(void*)0);
	}
	final void OnCapacitorBlownUp(int CapacitorIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = CapacitorIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[79563], params.ptr, cast(void*)0);
	}
	final void OnCapacitorRestored(int CapacitorIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = CapacitorIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[79568], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[79570], params.ptr, cast(void*)0);
	}
	final void OnCoreDestroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[79585], cast(void*)0, cast(void*)0);
	}
	final void PostRenderFor(PlayerController PC, Canvas pCanvas, Vector CameraPosition, Vector CameraDir)
	{
		ubyte params[32];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(Vector*)&params[8] = CameraPosition;
		*cast(Vector*)&params[20] = CameraDir;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[79586], params.ptr, cast(void*)0);
	}
	final int GetCeilPctScore()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[79608], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
