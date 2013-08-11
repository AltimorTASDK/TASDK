module UnrealScript.Engine.CoverGroup;

import ScriptClasses;
import UnrealScript.Engine.SeqAct_Toggle;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.Info;

extern(C++) interface CoverGroup : Info
{
public extern(D):
	enum ECoverGroupFillAction : ubyte
	{
		CGFA_Overwrite = 0,
		CGFA_Add = 1,
		CGFA_Remove = 2,
		CGFA_Clear = 3,
		CGFA_Cylinder = 4,
		CGFA_MAX = 5,
	}
	@property final auto ref
	{
		ScriptArray!(Actor.ActorReference) CoverLinkRefs() { return *cast(ScriptArray!(Actor.ActorReference)*)(cast(size_t)cast(void*)this + 476); }
		float AutoSelectHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 492); }
		float AutoSelectRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 488); }
	}
final:
	void EnableGroup()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13102], cast(void*)0, cast(void*)0);
	}
	void DisableGroup()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13103], cast(void*)0, cast(void*)0);
	}
	void ToggleGroup()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13104], cast(void*)0, cast(void*)0);
	}
	void OnToggle(SeqAct_Toggle Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Toggle*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13105], params.ptr, cast(void*)0);
	}
}
