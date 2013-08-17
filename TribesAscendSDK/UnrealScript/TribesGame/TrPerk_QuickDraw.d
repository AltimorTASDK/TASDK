module UnrealScript.TribesGame.TrPerk_QuickDraw;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrPerk;

extern(C++) interface TrPerk_QuickDraw : TrPerk
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrPerk_QuickDraw")()); }
	private static __gshared TrPerk_QuickDraw mDefaultProperties;
	@property final static TrPerk_QuickDraw DefaultProperties() { mixin(MGDPC!(TrPerk_QuickDraw, "TrPerk_QuickDraw TribesGame.Default__TrPerk_QuickDraw")()); }
}
