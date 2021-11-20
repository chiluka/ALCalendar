page 60111 "Job Schedule Tool Box"
{
    PageType = Card;
    Caption = ' Visual Scheduling Add-in Developer Toolbox Demo App';

    UsageCategory = Administration;
    ;
    ApplicationArea = All;

    layout

    {
        area(content)
        {
            usercontrol(conVSControlAddIn; JobControlAddIn)
            {
                ApplicationArea = All;



            }
        }
    }

    actions
    {
        area(processing)
        {
            group(Data)
            {
                action(Reload)
                {

                    trigger OnAction()
                    begin
                        LoadData();
                    end;
                }
            }
            group(View)
            {
                action(ActivityView)
                {
                    ToolTip = 'Executes the ActivityView action';
                    Image = "8ball";
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        SetView(goptViewType::ActivityView);
                    end;
                }
                action(ResourceView)
                {
                    ToolTip = 'Executes the ResourceView action';
                    Image = "8ball";
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        SetView(goptViewType::ResourceView);
                    end;
                }
            }
            group(ScrollTo)
            {
                action(ActionScrollToDate)
                {
                    ToolTip = 'Executes the ActionScrollToDate action';
                    Image = "8ball";
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        ScrollToDate();
                    end;
                }
                action(ActionScrollToResource)
                {
                    ToolTip = 'Executes the ActionScrollToResource action';
                    Image = "8ball";
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        ScrollToResource();
                    end;
                }
                action(ActionScrollToAllocation)
                {
                    ToolTip = 'Executes the ActionScrollToAllocation action';
                    Image = "8ball";
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        ScrollToAllocation();
                    end;
                }
                action(ActionScrollToEntity)
                {
                    ToolTip = 'Executes the ActionScrollToEntity action';
                    Image = "8ball";
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        ScrollToEntity();
                    end;
                }
                action(ActionScrollToActivity)
                {
                    ToolTip = 'Executes the ActionScrollToActivity action';
                    Image = "8ball";
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        ScrollToActivity();
                    end;
                }
            }
            group(Timeframe)
            {
                action(FitFullIntoView)
                {
                    ToolTip = 'Executes the FitFullIntoView action';
                    Image = "8ball";
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        CurrPage.conVSControlAddIn.FitFullTimeAreaIntoView();
                    end;
                }
                action(FitRangeIntoView)
                {
                    ToolTip = 'Executes the FitRangeIntoView action';
                    Image = "8ball";
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        CurrPage.conVSControlAddIn.FitTimeAreaIntoView(gdtconVSControlAddInStart, CREATEDATETIME(CALCDATE('<-7D>', DT2DATE(gdtconVSControlAddInEnd)), DT2TIME(gdtconVSControlAddInEnd)));
                    end;
                }
                action(PlusSevenDays)
                {
                    ToolTip = 'Executes the PlusSevenDays action';
                    Image = "8ball";
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        gdtconVSControlAddInStart := CREATEDATETIME(CALCDATE('<+7D>', DT2DATE(gdtconVSControlAddInStart)), DT2TIME(gdtconVSControlAddInStart));
                        gdtconVSControlAddInEnd := CREATEDATETIME(CALCDATE('<+7D>', DT2DATE(gdtconVSControlAddInEnd)), DT2TIME(gdtconVSControlAddInEnd));
                        LoadData();
                        SetconVSControlAddInSettings();
                    end;
                }
                action(MinusSevenDays)
                {
                    ToolTip = 'Executes the MinusSevenDays action';
                    Image = "8ball";
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        gdtconVSControlAddInStart := CREATEDATETIME(CALCDATE('<-7D>', DT2DATE(gdtconVSControlAddInStart)), DT2TIME(gdtconVSControlAddInStart));
                        gdtconVSControlAddInEnd := CREATEDATETIME(CALCDATE('<-7D>', DT2DATE(gdtconVSControlAddInEnd)), DT2TIME(gdtconVSControlAddInEnd));
                        LoadData();
                        SetconVSControlAddInSettings();
                    end;
                }
                action("Show/HideWorkfreePeriods")
                {
                    ToolTip = 'Executes the Show/HideWorkfreePeriods action';
                    Image = "8ball";
                    ApplicationArea = All;

                    trigger OnAction()
                    var
                        _settings: JsonObject;

                    begin
                        gbShowWorkfreePeriods := NOT gbShowWorkfreePeriods;

                        _settings.Add('NonworkingTimeVisible', gbShowWorkfreePeriods);

                        CurrPage.conVSControlAddIn.SetSettings(_settings);
                    end;
                }
            }

            group(Entities)
            {
                action("Show/HideEntities")
                {
                    ToolTip = 'Executes the Show/HideEntities action';
                    Image = "8ball";
                    ApplicationArea = All;

                    trigger OnAction()
                    var
                        _settings: JsonObject;

                    begin
                        gbShowEntities := NOT gbShowEntities;

                        _settings.Add('EntitiesTableVisible', gbShowEntities);

                        CurrPage.conVSControlAddIn.SetSettings(_settings);
                    end;
                }
            }
            group(Miscellaneous)
            {
                action("Save as PDF")
                {
                    ToolTip = 'Saves the complete chart as PDF file';
                    Image = "8ball";
                    ApplicationArea = All;

                    trigger OnAction()
                    var
                        _options: JsonObject;

                    begin

                        CurrPage.conVSControlAddIn.SaveAsPDF('VSCAI_SavedChart', _options);
                    end;
                }
                action("About")
                {
                    ToolTip = 'About Visual Scheduling Control Add-in';
                    Image = "8ball";
                    ApplicationArea = All;

                    trigger OnAction()

                    begin

                        CurrPage.conVSControlAddIn.About();
                    end;
                }
            }

        }
    }

    trigger OnInit()
    begin
        //Session Settings
        gbAddInInitialized := FALSE;
        gbAddInReady := FALSE;
        gbShowWorkfreePeriods := TRUE;
        gbShowEntities := FALSE;

        //conVSControlAddIn Settings
        gdtconVSControlAddInStart := CREATEDATETIME(DMY2DATE(1, 1, DATE2DMY(WORKDATE(), 3)), 0T);
        gdtconVSControlAddInEnd := CREATEDATETIME(DMY2DATE(1, 2, DATE2DMY(WORKDATE(), 3)), 0T);
        gdtconVSControlAddInWorkdate := CREATEDATETIME(WORKDATE(), 0T);
        gintconVSControlAddInViewType := goptViewType::ResourceView;
        gtxtconVSControlAddInTitleText := 'Resource View';
        gintconVSControlAddInTableWidth := 300;
        gintconVSControlAddInTableViewWidth := 250;
        gtxtconVSControlAddInEntitiesTitleText := 'Entities';
        gintconVSControlAddInEntitiesTableWidth := 250;
        gintconVSControlAddInEntitiesTableViewWidth := 250;
    end;

    var
        gRetVal: Boolean;
        gbAddInInitialized: Boolean;
        gbAddInReady: Boolean;
        // gcodconVSControlAddIn: Codeunit 60110;
        gtxtconVSControlAddInTitleText: Text[50];
        gintconVSControlAddInTableWidth: Integer;
        gintconVSControlAddInTableViewWidth: Integer;
        gdtconVSControlAddInStart: DateTime;
        gdtconVSControlAddInEnd: DateTime;
        gbShowWorkfreePeriods: Boolean;
        gbShowEntities: Boolean;
        gtxtconVSControlAddInEntitiesTitleText: Text[50];
        gintconVSControlAddInEntitiesTableWidth: Integer;
        gintconVSControlAddInEntitiesTableViewWidth: Integer;
        gintconVSControlAddInViewType: Integer;
        goptViewType: Option ActivityView,ResourceView;
        gdtconVSControlAddInWorkdate: DateTime;

        gSavedAllocation: JsonObject;
        gCompletionID: Text;

    local procedure SetconVSControlAddInSettings()
    var
        _settings: JsonObject;
        i: Integer;
    begin
        IF (gbAddInInitialized) THEN BEGIN
            _settings.Add('Start', gdtconVSControlAddInStart);
            _settings.Add('End', gdtconVSControlAddInEnd);
            _settings.Add('WorkDate', gdtconVSControlAddInWorkdate);
            _settings.Add('ViewType', gintconVSControlAddInViewType);
            _settings.Add('TitleText', gtxtconVSControlAddInTitleText);
            _settings.Add('TableWidth', gintconVSControlAddInTableWidth);
            _settings.Add('TableViewWidth', gintconVSControlAddInTableViewWidth);
            _settings.Add('EntitiesTitleText', gtxtconVSControlAddInEntitiesTitleText);
            _settings.Add('EntitiesTableWidth', gintconVSControlAddInEntitiesTableWidth);
            _settings.Add('EntitiesTableViewWidth', gintconVSControlAddInEntitiesTableViewWidth);
            _settings.Add('EntitiesTableVisible', gbShowEntities);
            _settings.Add('NonworkingTimeVisible', gbShowWorkfreePeriods);
            CurrPage.conVSControlAddIn.SetSettings(_settings);
        END;
    end;

    local procedure LoadData()
    var
        ldnResourcesJSON: JsonArray;
        ldnCalendarsJSON: JsonArray;
        ldnActivitiesJSON: JsonArray;
        ldnAllocationsJSON: JsonArray;
        ldnEntitiesJSON: JsonArray;
        ldnCurvesJSON: JsonArray;
        ldnContextMenusJSON: JsonArray;

        tempJsonToken: JsonToken;

    begin
        gbAddInReady := true;
        IF (gbAddInReady) THEN BEGIN
            CASE gintconVSControlAddInViewType OF
                goptViewType::ActivityView:
                    BEGIN
                        //ldnActivities := ldnActivities.List();
                        //  gcodconVSControlAddIn.LoadActivities(ldnActivitiesJSON, DT2DATE(gdtconVSControlAddInStart), DT2DATE(gdtconVSControlAddInEnd));

                        //ldnContextMenus := ldnContextMenus.List();
                        //gcodconVSControlAddIn.LoadContextMenus(ldnContextMenusJSON);

                        CurrPage.conVSControlAddIn.RemoveAll();
                        CurrPage.conVSControlAddIn.AddContextMenus(ldnContextMenusJSON);
                        CurrPage.conVSControlAddIn.AddActivities(ldnActivitiesJSON);
                        CurrPage.conVSControlAddIn.Render();
                    END;

                goptViewType::ResourceView:
                    BEGIN
                        //  gcodconVSControlAddIn.LoadCalendars(ldnCalendarsJSON, DT2DATE(gdtconVSControlAddInStart), DT2DATE(gdtconVSControlAddInEnd));

                        //gcodconVSControlAddIn.LoadResources(ldnResourcesJSON, ldnCurvesJSON, DT2DATE(gdtconVSControlAddInStart), DT2DATE(gdtconVSControlAddInEnd));

                        //gcodconVSControlAddIn.LoadAllocations(ldnActivitiesJSON, ldnAllocationsJSON, DT2DATE(gdtconVSControlAddInStart), DT2DATE(gdtconVSControlAddInEnd));

                        //gcodconVSControlAddIn.LoadEntities(ldnEntitiesJSON);

                        //gcodconVSControlAddIn.LoadContextMenus(ldnContextMenusJSON);

                        CurrPage.conVSControlAddIn.RemoveAll();
                        CurrPage.conVSControlAddIn.AddContextMenus(ldnContextMenusJSON);
                        CurrPage.conVSControlAddIn.AddCalendars(ldnCalendarsJSON);
                        CurrPage.conVSControlAddIn.AddCurves(ldnCurvesJSON);
                        CurrPage.conVSControlAddIn.AddResources(ldnResourcesJSON);
                        CurrPage.conVSControlAddIn.AddActivities(ldnActivitiesJSON);
                        CurrPage.conVSControlAddIn.AddAllocations(ldnAllocationsJSON);
                        CurrPage.conVSControlAddIn.AddEntities(ldnEntitiesJSON);
                        CurrPage.conVSControlAddIn.Render();

                        ldnAllocationsJSON.Get(0, tempJsonToken);
                        gSavedAllocation := tempJsonToken.AsObject();
                        gSavedAllocation.Get('ID', tempJsonToken);
                        Message(tempJsonToken.AsValue().AsText());
                    END;
            END;
        END;
    end;

    local procedure ScrollToActivity()
    var
        _jsonArray: JsonArray;

    begin
        if (gbAddInReady) then begin
            CurrPage.conVSControlAddIn.ScrollToObject(1, 'Act_SIL_SO000001_10000', 0, false);

            _jsonArray.Add('Act_SIL_SO000001_10000');
            CurrPage.conVSControlAddIn.SelectObjects(1, _jsonArray, 1);
        end;
    end;

    local procedure ScrollToResource()
    begin
        if (gbAddInReady) then begin
            CurrPage.conVSControlAddIn.ScrollToObject(5, 'R_TIMOTHY', 0, false);
        end;
    end;

    local procedure ScrollToAllocation()
    begin
        if (gbAddInReady) then begin
            CurrPage.conVSControlAddIn.ScrollToObject(2, 'SOA_16', 0, false);
        end;
    end;

    local procedure ScrollToEntity()
    begin
        if (gbAddInReady) then begin
            CurrPage.conVSControlAddIn.ScrollToObject(13, 'BA_Job_E_Task_2', 0, false);
        end;
    end;

    local procedure ScrollToDate()
    begin
        if (gbAddInReady) then begin
            CurrPage.conVSControlAddIn.ScrollToDate(CREATEDATETIME(WORKDATE(), 000000T));
        end;
    end;

    local procedure SetView(pViewType: Integer)
    begin
        CASE pViewType OF
            goptViewType::ActivityView:
                BEGIN
                    gintconVSControlAddInViewType := pViewType;
                    gtxtconVSControlAddInTitleText := 'Activity View';
                    SetconVSControlAddInSettings();
                    LoadData();
                END;

            goptViewType::ResourceView:
                BEGIN
                    gintconVSControlAddInViewType := pViewType;
                    gtxtconVSControlAddInTitleText := 'Resource View';
                    SetconVSControlAddInSettings();
                    LoadData();
                END;
        END;
    end;
}

