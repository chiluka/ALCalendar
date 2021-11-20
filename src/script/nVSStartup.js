job_D365BC = window.job_D365BC || {};

InitializeVSControlAddIn();

function InitializeVSControlAddIn() {
   'use strict';

    //console.log("InitializeVSControlAddIn");

    if (!job_D365BC.VSControlAddInInstance) {
        job_D365BC.VSControlAddInInstance = new job_D365BC.conrolAddIn();
    }
}

