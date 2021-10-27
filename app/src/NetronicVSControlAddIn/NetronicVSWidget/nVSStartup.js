netronic_D365BC = window.netronic_D365BC || {};

InitializeVSControlAddIn();

function InitializeVSControlAddIn() {
    'use strict';

    //console.log("InitializeVSControlAddIn");

    if (!netronic_D365BC.VSControlAddInInstance) {
        netronic_D365BC.VSControlAddInInstance = new netronic_D365BC.nVSControlAddIn();
    }
}
