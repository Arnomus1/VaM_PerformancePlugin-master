using System.Diagnostics.CodeAnalysis;

namespace VaM_PerformancePlugin.VaM;

[SuppressMessage("ReSharper", "InconsistentNaming")]
public class SuperControllerPatch
{
    // [HarmonyPatch(typeof(SuperController), "CreateDynamicUIElement")]
    // [HarmonyPrefix]
    // public static bool CreateDynamicUIElement(ref RectTransform __result, ref RectTransform parent, ref RectTransform prefab)
    // {
    //     __result = Object.Instantiate(prefab, parent, false);
    //     return false;
    // }
}