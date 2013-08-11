module UnrealScript.UTGame.UTCheatManager;

import ScriptClasses;
import UnrealScript.Engine.SpeechRecognition;
import UnrealScript.Engine.CheatManager;

extern(C++) interface UTCheatManager : CheatManager
{
	public @property final auto ref SpeechRecognition RecogObject() { return *cast(SpeechRecognition*)(cast(size_t)cast(void*)this + 96); }
	public @property final auto ref ScriptClass LMC() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 92); }
	final void ViewFlag()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43897], cast(void*)0, cast(void*)0);
	}
	final void Glow(float F)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = F;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43899], params.ptr, cast(void*)0);
	}
	final void LM(ScriptString MessageClassName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = MessageClassName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43902], params.ptr, cast(void*)0);
	}
	final void LMS(int Switch)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Switch;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43904], params.ptr, cast(void*)0);
	}
	final void SummonV(ScriptString ClassName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = ClassName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43906], params.ptr, cast(void*)0);
	}
	final void AllWeapons()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43910], cast(void*)0, cast(void*)0);
	}
	final void DoubleUp()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43911], cast(void*)0, cast(void*)0);
	}
	final void ChainGun()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43912], cast(void*)0, cast(void*)0);
	}
	final void AllAmmo()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43913], cast(void*)0, cast(void*)0);
	}
	final void Invisible(bool B)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43914], params.ptr, cast(void*)0);
	}
	final void FreeCamera()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43916], cast(void*)0, cast(void*)0);
	}
	final void ViewBot()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43917], cast(void*)0, cast(void*)0);
	}
	final void KillBadGuys()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43921], cast(void*)0, cast(void*)0);
	}
	final void RBGrav(float NewGravityScaling)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = NewGravityScaling;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43924], params.ptr, cast(void*)0);
	}
	final void SuicideBy(ScriptString Type, int DeathHealth)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Type;
		*cast(int*)&params[12] = DeathHealth;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43926], params.ptr, cast(void*)0);
	}
	final void EditWeapon(ScriptString WhichWeapon)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = WhichWeapon;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43930], params.ptr, cast(void*)0);
	}
	final void KillOtherBots()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43937], cast(void*)0, cast(void*)0);
	}
	final void SpawnABloodDecal()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43939], cast(void*)0, cast(void*)0);
	}
	final void LeaveADecal(Vector HitLoc, Vector HitNorm)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLoc;
		*cast(Vector*)&params[12] = HitNorm;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43940], params.ptr, cast(void*)0);
	}
	final void TiltIt(bool bActive)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bActive;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43943], params.ptr, cast(void*)0);
	}
	final void ShowStickBindings()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43945], cast(void*)0, cast(void*)0);
	}
	final void SetStickBind(float val)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = val;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43947], params.ptr, cast(void*)0);
	}
	final void KillAll(ScriptClass aClass)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = aClass;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43951], params.ptr, cast(void*)0);
	}
	final void KillAllPawns(ScriptClass aClass)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = aClass;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43955], params.ptr, cast(void*)0);
	}
}
