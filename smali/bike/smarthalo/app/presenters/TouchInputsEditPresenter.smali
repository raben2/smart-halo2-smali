.class public Lbike/smarthalo/app/presenters/TouchInputsEditPresenter;
.super Lbike/smarthalo/app/presenters/BasePresenter;
.source "TouchInputsEditPresenter.java"

# interfaces
.implements Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsEditContract$Presenter;


# instance fields
.field private analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

.field private newItem:Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;

.field private selectedItem:Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;

.field private view:Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsEditContract$View;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsEditContract$View;Lbike/smarthalo/app/analytics/AnalyticsContract;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lbike/smarthalo/app/presenters/BasePresenter;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object p2, p0, Lbike/smarthalo/app/presenters/TouchInputsEditPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsEditContract$View;

    .line 30
    iput-object p3, p0, Lbike/smarthalo/app/presenters/TouchInputsEditPresenter;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    return-void
.end method

.method public static buildPresenter(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsEditContract$View;Lbike/smarthalo/app/analytics/AnalyticsContract;)Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsEditContract$Presenter;
    .locals 1

    .line 34
    new-instance v0, Lbike/smarthalo/app/presenters/TouchInputsEditPresenter;

    invoke-direct {v0, p0, p1, p2}, Lbike/smarthalo/app/presenters/TouchInputsEditPresenter;-><init>(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsEditContract$View;Lbike/smarthalo/app/analytics/AnalyticsContract;)V

    return-object v0
.end method

.method private deleteSelectedTouchInput()V
    .locals 2

    .line 142
    iget-object v0, p0, Lbike/smarthalo/app/presenters/TouchInputsEditPresenter;->selectedItem:Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;

    if-eqz v0, :cond_0

    .line 143
    sget-object v0, Lbike/smarthalo/app/presenters/TouchInputsEditPresenter$1;->$SwitchMap$bike$smarthalo$app$models$TouchInputItemType:[I

    iget-object v1, p0, Lbike/smarthalo/app/presenters/TouchInputsEditPresenter;->selectedItem:Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;

    iget-object v1, v1, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;->type:Lbike/smarthalo/app/models/TouchInputItemType;

    invoke-virtual {v1}, Lbike/smarthalo/app/models/TouchInputItemType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "clockTouchCode"

    const-string v1, ""

    .line 172
    invoke-virtual {p0, v0, v1}, Lbike/smarthalo/app/presenters/TouchInputsEditPresenter;->updateSetting(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "hornTouchCode"

    const-string v1, ""

    .line 169
    invoke-virtual {p0, v0, v1}, Lbike/smarthalo/app/presenters/TouchInputsEditPresenter;->updateSetting(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string v0, "lightModeCycleTouchCode"

    const-string v1, ""

    .line 163
    invoke-virtual {p0, v0, v1}, Lbike/smarthalo/app/presenters/TouchInputsEditPresenter;->updateSetting(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string v0, "lightStateTouchCode"

    const-string v1, ""

    .line 166
    invoke-virtual {p0, v0, v1}, Lbike/smarthalo/app/presenters/TouchInputsEditPresenter;->updateSetting(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    const-string v0, "lightModeTouchCode"

    const-string v1, ""

    .line 160
    invoke-virtual {p0, v0, v1}, Lbike/smarthalo/app/presenters/TouchInputsEditPresenter;->updateSetting(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    const-string v0, "progressToDestinationTouchCode"

    const-string v1, ""

    .line 157
    invoke-virtual {p0, v0, v1}, Lbike/smarthalo/app/presenters/TouchInputsEditPresenter;->updateSetting(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_6
    const-string v0, "navModeTouchCode"

    const-string v1, ""

    .line 154
    invoke-virtual {p0, v0, v1}, Lbike/smarthalo/app/presenters/TouchInputsEditPresenter;->updateSetting(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_7
    const-string v0, "navWorkTouchCode"

    const-string v1, ""

    .line 151
    invoke-virtual {p0, v0, v1}, Lbike/smarthalo/app/presenters/TouchInputsEditPresenter;->updateSetting(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_8
    const-string v0, "navHomeTouchCode"

    const-string v1, ""

    .line 148
    invoke-virtual {p0, v0, v1}, Lbike/smarthalo/app/presenters/TouchInputsEditPresenter;->updateSetting(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_9
    const-string v0, "navStopTouchCode"

    const-string v1, ""

    .line 145
    invoke-virtual {p0, v0, v1}, Lbike/smarthalo/app/presenters/TouchInputsEditPresenter;->updateSetting(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public clearSelectionState()V
    .locals 1

    const/4 v0, 0x0

    .line 198
    iput-object v0, p0, Lbike/smarthalo/app/presenters/TouchInputsEditPresenter;->selectedItem:Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;

    .line 199
    iput-object v0, p0, Lbike/smarthalo/app/presenters/TouchInputsEditPresenter;->newItem:Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;

    return-void
.end method

.method public getNewItem()Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;
    .locals 1

    .line 187
    iget-object v0, p0, Lbike/smarthalo/app/presenters/TouchInputsEditPresenter;->newItem:Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;

    return-object v0
.end method

.method public getSelectedItem()Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;
    .locals 1

    .line 182
    iget-object v0, p0, Lbike/smarthalo/app/presenters/TouchInputsEditPresenter;->selectedItem:Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;

    return-object v0
.end method

.method public isUserTester()Z
    .locals 1

    .line 192
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/UserStorageStaticManager;->getUser()Lbike/smarthalo/app/models/SHUser;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHUser;->isTester()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onFeatureSelected(Lbike/smarthalo/app/models/TouchInputItemType;Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;Z)V
    .locals 2

    .line 44
    iget-object v0, p0, Lbike/smarthalo/app/presenters/TouchInputsEditPresenter;->selectedItem:Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;->type:Lbike/smarthalo/app/models/TouchInputItemType;

    if-ne v0, p1, :cond_0

    goto/16 :goto_1

    .line 50
    :cond_0
    iget-object v0, p0, Lbike/smarthalo/app/presenters/TouchInputsEditPresenter;->selectedItem:Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;

    iget-object v0, v0, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;->type:Lbike/smarthalo/app/models/TouchInputItemType;

    sget-object v1, Lbike/smarthalo/app/models/TouchInputItemType;->Light:Lbike/smarthalo/app/models/TouchInputItemType;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lbike/smarthalo/app/presenters/TouchInputsEditPresenter;->selectedItem:Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;

    iget-object v0, v0, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;->type:Lbike/smarthalo/app/models/TouchInputItemType;

    sget-object v1, Lbike/smarthalo/app/models/TouchInputItemType;->LightModeCycle:Lbike/smarthalo/app/models/TouchInputItemType;

    if-ne v0, v1, :cond_2

    :cond_1
    sget-object v0, Lbike/smarthalo/app/models/TouchInputItemType;->Light:Lbike/smarthalo/app/models/TouchInputItemType;

    if-eq p1, v0, :cond_2

    sget-object v0, Lbike/smarthalo/app/models/TouchInputItemType;->LightModeCycle:Lbike/smarthalo/app/models/TouchInputItemType;

    if-eq p1, v0, :cond_2

    .line 54
    iget-object p1, p0, Lbike/smarthalo/app/presenters/TouchInputsEditPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsEditContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsEditContract$View;->showCannotOverrideLightPrompt()V

    return-void

    .line 59
    :cond_2
    sget-object v0, Lbike/smarthalo/app/models/TouchInputItemType;->Light:Lbike/smarthalo/app/models/TouchInputItemType;

    if-eq p1, v0, :cond_3

    sget-object v0, Lbike/smarthalo/app/models/TouchInputItemType;->LightModeCycle:Lbike/smarthalo/app/models/TouchInputItemType;

    if-ne p1, v0, :cond_4

    :cond_3
    iget-object v0, p0, Lbike/smarthalo/app/presenters/TouchInputsEditPresenter;->selectedItem:Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;

    iget-object v0, v0, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;->type:Lbike/smarthalo/app/models/TouchInputItemType;

    sget-object v1, Lbike/smarthalo/app/models/TouchInputItemType;->Light:Lbike/smarthalo/app/models/TouchInputItemType;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lbike/smarthalo/app/presenters/TouchInputsEditPresenter;->selectedItem:Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;

    iget-object v0, v0, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;->type:Lbike/smarthalo/app/models/TouchInputItemType;

    sget-object v1, Lbike/smarthalo/app/models/TouchInputItemType;->LightModeCycle:Lbike/smarthalo/app/models/TouchInputItemType;

    if-eq v0, v1, :cond_4

    .line 63
    iget-object p1, p0, Lbike/smarthalo/app/presenters/TouchInputsEditPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsEditContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsEditContract$View;->showOnlyTwoTapsForLightPrompt()V

    return-void

    :cond_4
    if-eqz p3, :cond_5

    if-eqz p2, :cond_5

    .line 67
    iget-object p3, p2, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;->type:Lbike/smarthalo/app/models/TouchInputItemType;

    sget-object v0, Lbike/smarthalo/app/models/TouchInputItemType;->None:Lbike/smarthalo/app/models/TouchInputItemType;

    if-eq p3, v0, :cond_5

    sget-object p3, Lbike/smarthalo/app/models/TouchInputItemType;->Light:Lbike/smarthalo/app/models/TouchInputItemType;

    if-eq p1, p3, :cond_5

    sget-object p3, Lbike/smarthalo/app/models/TouchInputItemType;->LightModeCycle:Lbike/smarthalo/app/models/TouchInputItemType;

    if-eq p1, p3, :cond_5

    .line 72
    iget-object p3, p0, Lbike/smarthalo/app/presenters/TouchInputsEditPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsEditContract$View;

    invoke-interface {p3, p2, p1}, Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsEditContract$View;->showOverrideConfirmationPrompt(Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;Lbike/smarthalo/app/models/TouchInputItemType;)V

    return-void

    .line 77
    :cond_5
    iget-object p2, p0, Lbike/smarthalo/app/presenters/TouchInputsEditPresenter;->selectedItem:Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;

    iget-object p2, p2, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;->type:Lbike/smarthalo/app/models/TouchInputItemType;

    sget-object p3, Lbike/smarthalo/app/models/TouchInputItemType;->None:Lbike/smarthalo/app/models/TouchInputItemType;

    if-eq p2, p3, :cond_6

    .line 78
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/TouchInputsEditPresenter;->deleteSelectedTouchInput()V

    :cond_6
    const/4 p2, 0x0

    .line 83
    sget-object p3, Lbike/smarthalo/app/presenters/TouchInputsEditPresenter$1;->$SwitchMap$bike$smarthalo$app$models$TouchInputItemType:[I

    invoke-virtual {p1}, Lbike/smarthalo/app/models/TouchInputItemType;->ordinal()I

    move-result v0

    aget p3, p3, v0

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const p2, 0x7f110388

    goto/16 :goto_0

    :pswitch_1
    const-string p2, "clockTouchCode"

    .line 121
    iget-object p3, p0, Lbike/smarthalo/app/presenters/TouchInputsEditPresenter;->selectedItem:Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;

    iget-object p3, p3, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;->tapcode:Ljava/lang/String;

    invoke-virtual {p0, p2, p3}, Lbike/smarthalo/app/presenters/TouchInputsEditPresenter;->updateSetting(Ljava/lang/String;Ljava/lang/String;)V

    const p2, 0x7f110379

    goto/16 :goto_0

    :pswitch_2
    const-string p2, "hornTouchCode"

    .line 117
    iget-object p3, p0, Lbike/smarthalo/app/presenters/TouchInputsEditPresenter;->selectedItem:Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;

    iget-object p3, p3, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;->tapcode:Ljava/lang/String;

    invoke-virtual {p0, p2, p3}, Lbike/smarthalo/app/presenters/TouchInputsEditPresenter;->updateSetting(Ljava/lang/String;Ljava/lang/String;)V

    const p2, 0x7f110380

    goto :goto_0

    :pswitch_3
    const-string p2, "lightModeCycleTouchCode"

    .line 113
    iget-object p3, p0, Lbike/smarthalo/app/presenters/TouchInputsEditPresenter;->selectedItem:Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;

    iget-object p3, p3, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;->tapcode:Ljava/lang/String;

    invoke-virtual {p0, p2, p3}, Lbike/smarthalo/app/presenters/TouchInputsEditPresenter;->updateSetting(Ljava/lang/String;Ljava/lang/String;)V

    const p2, 0x7f11037b

    goto :goto_0

    :pswitch_4
    const-string p2, "lightStateTouchCode"

    .line 109
    iget-object p3, p0, Lbike/smarthalo/app/presenters/TouchInputsEditPresenter;->selectedItem:Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;

    iget-object p3, p3, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;->tapcode:Ljava/lang/String;

    invoke-virtual {p0, p2, p3}, Lbike/smarthalo/app/presenters/TouchInputsEditPresenter;->updateSetting(Ljava/lang/String;Ljava/lang/String;)V

    const p2, 0x7f110381

    goto :goto_0

    :pswitch_5
    const-string p2, "lightModeTouchCode"

    .line 105
    iget-object p3, p0, Lbike/smarthalo/app/presenters/TouchInputsEditPresenter;->selectedItem:Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;

    iget-object p3, p3, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;->tapcode:Ljava/lang/String;

    invoke-virtual {p0, p2, p3}, Lbike/smarthalo/app/presenters/TouchInputsEditPresenter;->updateSetting(Ljava/lang/String;Ljava/lang/String;)V

    const p2, 0x7f110382

    goto :goto_0

    :pswitch_6
    const-string p2, "progressToDestinationTouchCode"

    .line 101
    iget-object p3, p0, Lbike/smarthalo/app/presenters/TouchInputsEditPresenter;->selectedItem:Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;

    iget-object p3, p3, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;->tapcode:Ljava/lang/String;

    invoke-virtual {p0, p2, p3}, Lbike/smarthalo/app/presenters/TouchInputsEditPresenter;->updateSetting(Ljava/lang/String;Ljava/lang/String;)V

    const p2, 0x7f110390

    goto :goto_0

    :pswitch_7
    const-string p2, "navModeTouchCode"

    .line 97
    iget-object p3, p0, Lbike/smarthalo/app/presenters/TouchInputsEditPresenter;->selectedItem:Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;

    iget-object p3, p3, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;->tapcode:Ljava/lang/String;

    invoke-virtual {p0, p2, p3}, Lbike/smarthalo/app/presenters/TouchInputsEditPresenter;->updateSetting(Ljava/lang/String;Ljava/lang/String;)V

    const p2, 0x7f110386

    goto :goto_0

    :pswitch_8
    const-string p2, "navWorkTouchCode"

    .line 93
    iget-object p3, p0, Lbike/smarthalo/app/presenters/TouchInputsEditPresenter;->selectedItem:Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;

    iget-object p3, p3, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;->tapcode:Ljava/lang/String;

    invoke-virtual {p0, p2, p3}, Lbike/smarthalo/app/presenters/TouchInputsEditPresenter;->updateSetting(Ljava/lang/String;Ljava/lang/String;)V

    const p2, 0x7f110385

    goto :goto_0

    :pswitch_9
    const-string p2, "navHomeTouchCode"

    .line 89
    iget-object p3, p0, Lbike/smarthalo/app/presenters/TouchInputsEditPresenter;->selectedItem:Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;

    iget-object p3, p3, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;->tapcode:Ljava/lang/String;

    invoke-virtual {p0, p2, p3}, Lbike/smarthalo/app/presenters/TouchInputsEditPresenter;->updateSetting(Ljava/lang/String;Ljava/lang/String;)V

    const p2, 0x7f110384

    goto :goto_0

    :pswitch_a
    const-string p2, "navStopTouchCode"

    .line 85
    iget-object p3, p0, Lbike/smarthalo/app/presenters/TouchInputsEditPresenter;->selectedItem:Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;

    iget-object p3, p3, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;->tapcode:Ljava/lang/String;

    invoke-virtual {p0, p2, p3}, Lbike/smarthalo/app/presenters/TouchInputsEditPresenter;->updateSetting(Ljava/lang/String;Ljava/lang/String;)V

    const p2, 0x7f110393

    .line 129
    :goto_0
    new-instance p3, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;

    iget-object v0, p0, Lbike/smarthalo/app/presenters/TouchInputsEditPresenter;->selectedItem:Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;

    invoke-direct {p3, v0}, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;-><init>(Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;)V

    iput-object p3, p0, Lbike/smarthalo/app/presenters/TouchInputsEditPresenter;->newItem:Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;

    .line 130
    iget-object p3, p0, Lbike/smarthalo/app/presenters/TouchInputsEditPresenter;->newItem:Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;

    iput-object p1, p3, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;->type:Lbike/smarthalo/app/models/TouchInputItemType;

    .line 131
    iget-object v0, p0, Lbike/smarthalo/app/presenters/TouchInputsEditPresenter;->context:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p3, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;->description:Ljava/lang/String;

    .line 132
    iget-object p2, p0, Lbike/smarthalo/app/presenters/TouchInputsEditPresenter;->selectedItem:Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;

    sget-object p3, Lbike/smarthalo/app/models/TouchInputItemType;->None:Lbike/smarthalo/app/models/TouchInputItemType;

    iput-object p3, p2, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;->type:Lbike/smarthalo/app/models/TouchInputItemType;

    .line 133
    iget-object p2, p0, Lbike/smarthalo/app/presenters/TouchInputsEditPresenter;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    iget-object p3, p0, Lbike/smarthalo/app/presenters/TouchInputsEditPresenter;->selectedItem:Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;

    iget-object p3, p3, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;->tapcode:Ljava/lang/String;

    invoke-static {p3}, Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;->fromString(Ljava/lang/String;)Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;

    move-result-object p3

    invoke-static {p1, p3}, Lbike/smarthalo/app/analytics/assistant/AnalyticsAssistant;->getTouchInputChangedEvent(Lbike/smarthalo/app/models/TouchInputItemType;Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;)Lbike/smarthalo/app/analytics/AnalyticsEvent;

    move-result-object p1

    invoke-interface {p2, p1}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendAnalyticsEvent(Lbike/smarthalo/app/analytics/AnalyticsEvent;)V

    .line 135
    iget-object p1, p0, Lbike/smarthalo/app/presenters/TouchInputsEditPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsEditContract$View;

    iget-object p2, p0, Lbike/smarthalo/app/presenters/TouchInputsEditPresenter;->newItem:Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;

    iget-object p3, p0, Lbike/smarthalo/app/presenters/TouchInputsEditPresenter;->selectedItem:Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;

    invoke-interface {p1, p2, p3}, Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsEditContract$View;->onTouchInputSetSuccess(Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;)V

    return-void

    :cond_7
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchInputSelected(Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lbike/smarthalo/app/presenters/TouchInputsEditPresenter;->selectedItem:Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;

    return-void
.end method
