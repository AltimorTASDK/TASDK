module UnrealScript.Engine.AnimNodeSequenceBlendByAim;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.AnimNodeSequenceBlendBase;

extern(C++) interface AnimNodeSequenceBlendByAim : AnimNodeSequenceBlendBase
{
public extern(D):
	@property final auto ref
	{
		ScriptName AnimName_RD() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 436); }
		ScriptName AnimName_RC() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 428); }
		ScriptName AnimName_RU() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 420); }
		ScriptName AnimName_CD() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 412); }
		ScriptName AnimName_CC() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 404); }
		ScriptName AnimName_CU() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 396); }
		ScriptName AnimName_LD() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 388); }
		ScriptName AnimName_LC() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 380); }
		ScriptName AnimName_LU() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 372); }
		UObject.Vector2D AngleOffset() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 364); }
		UObject.Vector2D VerticalRange() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 356); }
		UObject.Vector2D HorizontalRange() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 348); }
		UObject.Vector2D PreviousAim() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 340); }
		UObject.Vector2D Aim() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 332); }
	}
	final void CheckAnimsUpToDate()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11050], cast(void*)0, cast(void*)0);
	}
}
