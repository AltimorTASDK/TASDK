module UnrealScript.TribesGame.TrProj_ArmoredClaymore;

import ScriptClasses;
import UnrealScript.TribesGame.TrProj_Mine;
import UnrealScript.Engine.Pawn;

extern(C++) interface TrProj_ArmoredClaymore : TrProj_Mine
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_ArmoredClaymore")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mMeetsDetonationRequirements;
		public @property static final ScriptFunction MeetsDetonationRequirements() { return mMeetsDetonationRequirements ? mMeetsDetonationRequirements : (mMeetsDetonationRequirements = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_ArmoredClaymore.MeetsDetonationRequirements")); }
	}
	@property final auto ref float DetonationSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 900); }
	final bool MeetsDetonationRequirements(Pawn Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.MeetsDetonationRequirements, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
