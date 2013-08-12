module UnrealScript.TribesGame.TrPerk_QuickDraw;

import ScriptClasses;
import UnrealScript.TribesGame.TrPerk;

extern(C++) interface TrPerk_QuickDraw : TrPerk
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrPerk_QuickDraw")); }
	private static __gshared TrPerk_QuickDraw mDefaultProperties;
	@property final static TrPerk_QuickDraw DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrPerk_QuickDraw)("TrPerk_QuickDraw TribesGame.Default__TrPerk_QuickDraw")); }
}
