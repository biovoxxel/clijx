package net.haesleinhuepf.clijx.tilor.implementations;

import net.haesleinhuepf.clij.macro.CLIJMacroPlugin;
import net.haesleinhuepf.clij2.AbstractCLIJ2Plugin;
import org.scijava.plugin.Plugin;

@Plugin(type = CLIJMacroPlugin.class, name = "CLIJxt_applyAutoContextWekaModel")
public class ApplyAutoContextWekaModel extends AbstractTileWiseProcessableCLIJ2Plugin {

    public ApplyAutoContextWekaModel() {
        master = new net.haesleinhuepf.clijx.weka.autocontext.ApplyAutoContextWekaModel();
    }
}