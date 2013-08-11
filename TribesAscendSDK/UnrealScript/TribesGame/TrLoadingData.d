module UnrealScript.TribesGame.TrLoadingData;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface TrLoadingData : UObject
{
public extern(D):
	@property final auto ref
	{
		ScriptArray!(ScriptString) CTFTips() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 204); }
		ScriptArray!(ScriptString) TDMTips() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 216); }
		ScriptArray!(ScriptString) RabbitTips() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 228); }
		ScriptArray!(ScriptString) ArenaTips() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 240); }
		ScriptArray!(ScriptString) GenericTips() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 252); }
		ScriptArray!(ScriptString) CaHTips() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 264); }
		ScriptString RulesForBlitz() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 192); }
		ScriptString RulesForCaH() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 180); }
		ScriptString RulesForDaD() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 168); }
		ScriptString RulesForArena() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 156); }
		ScriptString RulesForRabbit() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 144); }
		ScriptString RulesForTDM() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 132); }
		ScriptString RulesForCTF() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 120); }
		ScriptString GameType() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 108); }
		ScriptString MapName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 96); }
		ScriptString MapURL() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 84); }
		ScriptString Rules() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 72); }
		ScriptString Tip() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 60); }
	}
final:
	ScriptString GetRandomTip(int GameIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = GameIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[98606], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[98609], cast(void*)0, cast(void*)0);
	}
	void SetDataFields()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[98610], cast(void*)0, cast(void*)0);
	}
}
