module UnrealScript.TribesGame.TrDevice_AmmoPack;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_Pack;
import UnrealScript.TribesGame.TrDevice;

extern(C++) interface TrDevice_AmmoPack : TrDevice_Pack
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDevice_AmmoPack")()); }
	private static __gshared TrDevice_AmmoPack mDefaultProperties;
	@property final static TrDevice_AmmoPack DefaultProperties() { mixin(MGDPC!(TrDevice_AmmoPack, "TrDevice_AmmoPack TribesGame.Default__TrDevice_AmmoPack")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mAddAmmoBuff;
			ScriptFunction mApplyAmmoBuff;
		}
		public @property static final
		{
			ScriptFunction AddAmmoBuff() { mixin(MGF!("mAddAmmoBuff", "Function TribesGame.TrDevice_AmmoPack.AddAmmoBuff")()); }
			ScriptFunction ApplyAmmoBuff() { mixin(MGF!("mApplyAmmoBuff", "Function TribesGame.TrDevice_AmmoPack.ApplyAmmoBuff")()); }
		}
	}
	@property final auto ref
	{
		int m_nAmmoPackMultBelt() { mixin(MGPC!(int, 2176)()); }
		int m_nAmmoPackMultSecondary() { mixin(MGPC!(int, 2172)()); }
		int m_nAmmoPackMultPrimary() { mixin(MGPC!(int, 2168)()); }
	}
final:
	void AddAmmoBuff(TrDevice Dev, float Mult)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrDevice*)params.ptr = Dev;
		*cast(float*)&params[4] = Mult;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddAmmoBuff, params.ptr, cast(void*)0);
	}
	void ApplyAmmoBuff()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ApplyAmmoBuff, cast(void*)0, cast(void*)0);
	}
}
