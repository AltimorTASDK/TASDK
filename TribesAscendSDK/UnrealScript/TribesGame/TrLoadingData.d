module UnrealScript.TribesGame.TrLoadingData;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface TrLoadingData : UObject
{
	public @property final auto ref ScriptArray!(ScriptString) CTFTips() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 204); }
	public @property final auto ref ScriptArray!(ScriptString) TDMTips() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 216); }
	public @property final auto ref ScriptArray!(ScriptString) RabbitTips() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 228); }
	public @property final auto ref ScriptArray!(ScriptString) ArenaTips() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 240); }
	public @property final auto ref ScriptArray!(ScriptString) GenericTips() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 252); }
	public @property final auto ref ScriptArray!(ScriptString) CaHTips() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 264); }
	public @property final auto ref ScriptString RulesForBlitz() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 192); }
	public @property final auto ref ScriptString RulesForCaH() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 180); }
	public @property final auto ref ScriptString RulesForDaD() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 168); }
	public @property final auto ref ScriptString RulesForArena() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 156); }
	public @property final auto ref ScriptString RulesForRabbit() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 144); }
	public @property final auto ref ScriptString RulesForTDM() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 132); }
	public @property final auto ref ScriptString RulesForCTF() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 120); }
	public @property final auto ref ScriptString GameType() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 108); }
	public @property final auto ref ScriptString MapName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 96); }
	public @property final auto ref ScriptString MapURL() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 84); }
	public @property final auto ref ScriptString Rules() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 72); }
	public @property final auto ref ScriptString Tip() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 60); }
	final ScriptString GetRandomTip(int GameIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = GameIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[98606], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	final void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[98609], cast(void*)0, cast(void*)0);
	}
	final void SetDataFields()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[98610], cast(void*)0, cast(void*)0);
	}
}
