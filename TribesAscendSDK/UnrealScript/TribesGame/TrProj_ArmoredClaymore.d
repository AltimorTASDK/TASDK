module UnrealScript.TribesGame.TrProj_ArmoredClaymore;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProj_Mine;
import UnrealScript.Engine.Pawn;

extern(C++) interface TrProj_ArmoredClaymore : TrProj_Mine
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrProj_ArmoredClaymore")()); }
	private static __gshared TrProj_ArmoredClaymore mDefaultProperties;
	@property final static TrProj_ArmoredClaymore DefaultProperties() { mixin(MGDPC!(TrProj_ArmoredClaymore, "TrProj_ArmoredClaymore TribesGame.Default__TrProj_ArmoredClaymore")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mMeetsDetonationRequirements;
		public @property static final ScriptFunction MeetsDetonationRequirements() { mixin(MGF!("mMeetsDetonationRequirements", "Function TribesGame.TrProj_ArmoredClaymore.MeetsDetonationRequirements")()); }
	}
	@property final auto ref float DetonationSpeed() { mixin(MGPC!(float, 900)()); }
	final bool MeetsDetonationRequirements(Pawn Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.MeetsDetonationRequirements, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
