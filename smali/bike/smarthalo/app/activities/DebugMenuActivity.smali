.class public Lbike/smarthalo/app/activities/DebugMenuActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "DebugMenuActivity.java"

# interfaces
.implements Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;


# static fields
.field private static final STM_DFU_FILE_REQUEST_CODE:I = 0xce


# instance fields
.field private binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

.field private debugMenuItemMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;",
            "Llayout/DebugMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private debugMenuPresenter:Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$Presenter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;)V
    .locals 1

    const/4 v0, 0x0

    .line 231
    invoke-direct {p0, p1, p2, v0}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;Ljava/lang/Object;)V

    return-void
.end method

.method private initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;Ljava/lang/Object;)V
    .locals 0

    .line 235
    invoke-virtual {p2, p3}, Llayout/DebugMenuItem;->setAssociatedValue(Ljava/lang/Object;)V

    .line 236
    new-instance p3, Lbike/smarthalo/app/activities/-$$Lambda$DebugMenuActivity$9yoCdE7-KsC_Nr41XR18j_uK7FY;

    invoke-direct {p3, p0, p1}, Lbike/smarthalo/app/activities/-$$Lambda$DebugMenuActivity$9yoCdE7-KsC_Nr41XR18j_uK7FY;-><init>(Lbike/smarthalo/app/activities/DebugMenuActivity;Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;)V

    invoke-virtual {p2, p3}, Llayout/DebugMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    iget-object p3, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->debugMenuItemMap:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private initializeDebugItemMap()V
    .locals 6

    .line 71
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->StmDfuFromFile:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->sh2FirmwareTransfer:Llayout/DebugMenuItem;

    const-string v2, "Stm DFU from file"

    invoke-direct {p0, v0, v1, v2}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;Ljava/lang/Object;)V

    .line 72
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->ForceInstallGolden:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->sh2ForceInstallGolden:Llayout/DebugMenuItem;

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;)V

    .line 73
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->TouchTest:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->touchTest:Llayout/DebugMenuItem;

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;)V

    .line 74
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->EnterBootloader:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->enterBootloader:Llayout/DebugMenuItem;

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;)V

    .line 76
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->Intro:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->intro:Llayout/DebugMenuItem;

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;)V

    .line 77
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->Loop:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->loop:Llayout/DebugMenuItem;

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;)V

    .line 78
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->LedOff:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->turnOffAnimation:Llayout/DebugMenuItem;

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;)V

    .line 79
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->OledOff:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->turnOffOled:Llayout/DebugMenuItem;

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;)V

    .line 80
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->TurnOffEverything:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->turnOffEverything:Llayout/DebugMenuItem;

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;)V

    .line 81
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->OledOff:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->stopOled:Llayout/DebugMenuItem;

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;)V

    .line 82
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->BrightnessIncrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->incrementBrightness:Llayout/DebugMenuItem;

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v1, v3}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;Ljava/lang/Object;)V

    .line 83
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->BrightnessDecrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->decrementBrightness:Llayout/DebugMenuItem;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v1, v3}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;Ljava/lang/Object;)V

    .line 84
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->OledBrightnessIncrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->incrementOledBrightness:Llayout/DebugMenuItem;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v1, v3}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;Ljava/lang/Object;)V

    .line 85
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->OledBrightnessDecrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->decrementOledBrightness:Llayout/DebugMenuItem;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v1, v3}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;Ljava/lang/Object;)V

    .line 86
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->OledContrastIncrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->incrementOledContrast:Llayout/DebugMenuItem;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v1, v3}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;Ljava/lang/Object;)V

    .line 87
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->OledContrastDecrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->decrementOledContrast:Llayout/DebugMenuItem;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;Ljava/lang/Object;)V

    .line 89
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->TurnOffEverything:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->kickstarterTurnOff:Llayout/DebugMenuItem;

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;)V

    .line 90
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->KickstarterOffsetIncrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->kickstarterIncrementOffset:Llayout/DebugMenuItem;

    const-string v2, "0ms"

    invoke-direct {p0, v0, v1, v2}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;Ljava/lang/Object;)V

    .line 91
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->KickstarterOffsetDecrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->kickstarterDecrementOffset:Llayout/DebugMenuItem;

    const-string v2, "0ms"

    invoke-direct {p0, v0, v1, v2}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;Ljava/lang/Object;)V

    .line 92
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->SequenceIntro:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->kickstarterScene15:Llayout/DebugMenuItem;

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;)V

    .line 93
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->SequenceBeautyShot2:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->kickstarterScene16:Llayout/DebugMenuItem;

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;)V

    .line 94
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->SequenceAlarmWarning:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->kickstarterScene18:Llayout/DebugMenuItem;

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;)V

    .line 95
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->SequenceAlarmTrigger:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->kickstarterScene19:Llayout/DebugMenuItem;

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;)V

    .line 96
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->SequenceElmStreet:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->kickstarterScene22Nav:Llayout/DebugMenuItem;

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;)V

    .line 97
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->SequenceElmStreetIncrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->kickstarterScene22NavIncrement:Llayout/DebugMenuItem;

    const-string v2, "-60"

    invoke-direct {p0, v0, v1, v2}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;Ljava/lang/Object;)V

    .line 98
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->SequenceElmStreetDecrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->kickstarterScene22NavDecrement:Llayout/DebugMenuItem;

    const-string v2, "-60"

    invoke-direct {p0, v0, v1, v2}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;Ljava/lang/Object;)V

    .line 99
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->SequenceNightLight:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->kickstarterScene22Light:Llayout/DebugMenuItem;

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;)V

    .line 100
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->SequenceGoalProgress:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->kickstarterScene22Progress:Llayout/DebugMenuItem;

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;)V

    .line 101
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->SequenceAbbeyRoad:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->kickstarterScene25:Llayout/DebugMenuItem;

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;)V

    .line 102
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->SequenceAbbeyRoadIncrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->kickstarterScene25Increment:Llayout/DebugMenuItem;

    const-string v2, "45"

    invoke-direct {p0, v0, v1, v2}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;Ljava/lang/Object;)V

    .line 103
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->SequenceAbbeyRoadDecrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->kickstarterScene25Decrement:Llayout/DebugMenuItem;

    const-string v2, "45"

    invoke-direct {p0, v0, v1, v2}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;Ljava/lang/Object;)V

    .line 104
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->SequenceUTurn:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->kickstarterScene27:Llayout/DebugMenuItem;

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;)V

    .line 105
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->SequenceCompass:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->kickstarterScene29:Llayout/DebugMenuItem;

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;)V

    .line 106
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->SequenceDestination:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->kickstarterScene31:Llayout/DebugMenuItem;

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;)V

    .line 107
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->SequenceMetrics:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->kickstarterScene33:Llayout/DebugMenuItem;

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;)V

    .line 108
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->SequenceWeather:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->kickstarterScene35:Llayout/DebugMenuItem;

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;)V

    .line 109
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->SequenceCall:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->kickstarterScene36:Llayout/DebugMenuItem;

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;)V

    .line 110
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->SequenceIftt:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->kickstarterSceneIFTT:Llayout/DebugMenuItem;

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;)V

    .line 111
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->SequenceBattery:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->kickstarterSceneBattery:Llayout/DebugMenuItem;

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;)V

    .line 112
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->SequenceFunnyDestination:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->kickstarterSceneFunnyDestination:Llayout/DebugMenuItem;

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;)V

    .line 113
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->SequenceGoNavigation:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->kickstarterSceneGoNavigation:Llayout/DebugMenuItem;

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;)V

    .line 114
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->SequenceGoodbye:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->kickstarterSceneGoodbye:Llayout/DebugMenuItem;

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;)V

    .line 116
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->OledShow:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->showOled:Llayout/DebugMenuItem;

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;)V

    .line 117
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->OledOff:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->stopOled:Llayout/DebugMenuItem;

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;)V

    .line 118
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->OledShowNextScreen:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->showNextOled:Llayout/DebugMenuItem;

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;)V

    .line 119
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->OledShowPreviousScreen:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->showPreviousOled:Llayout/DebugMenuItem;

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;)V

    .line 120
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->OledScreenIncrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->incrementOled:Llayout/DebugMenuItem;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v1, v3}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;Ljava/lang/Object;)V

    .line 121
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->OledScreenDecrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->decrementOled:Llayout/DebugMenuItem;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v1, v3}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;Ljava/lang/Object;)V

    .line 122
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->OledSecondaryScreenIncrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->incrementSecondaryOled:Llayout/DebugMenuItem;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v1, v3}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;Ljava/lang/Object;)V

    .line 123
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->OledSecondaryScreenDecrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->decrementSecondaryOled:Llayout/DebugMenuItem;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v1, v3}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;Ljava/lang/Object;)V

    .line 124
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->OledAnimationType:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->oledAnimationDirection:Llayout/DebugMenuItem;

    sget-object v3, Lbike/smarthalo/sdk/models/OledAnimationType;->Right:Lbike/smarthalo/sdk/models/OledAnimationType;

    invoke-direct {p0, v0, v1, v3}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;Ljava/lang/Object;)V

    .line 125
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->OledAnimationTimeIncrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->incrementAnimationTimeOled:Llayout/DebugMenuItem;

    const/16 v3, 0x258

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v0, v1, v4}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;Ljava/lang/Object;)V

    .line 126
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->OledAnimationTimeDecrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->decrementAnimationTimeOled:Llayout/DebugMenuItem;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v1, v3}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;Ljava/lang/Object;)V

    .line 127
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->OledStatusBarIncrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->incrementStatusOled:Llayout/DebugMenuItem;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v1, v3}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;Ljava/lang/Object;)V

    .line 128
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->OledStatusBarDecrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->decrementStatusOled:Llayout/DebugMenuItem;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v1, v3}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;Ljava/lang/Object;)V

    .line 130
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->TurnOffEverything:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->oledCarouselTurnOff:Llayout/DebugMenuItem;

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;)V

    .line 131
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->OledCarouselTimingIncrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->oledCarouselTimingIncrement:Llayout/DebugMenuItem;

    const-string v3, "1000"

    invoke-direct {p0, v0, v1, v3}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;Ljava/lang/Object;)V

    .line 132
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->OledCarouselTimingDecrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->oledCarouselTimingDecrement:Llayout/DebugMenuItem;

    const-string v3, "1000"

    invoke-direct {p0, v0, v1, v3}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;Ljava/lang/Object;)V

    .line 133
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->OledCarouselShow:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->showCarousel:Llayout/DebugMenuItem;

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;)V

    .line 134
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->OledCarouselMode:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->setCarouselMode:Llayout/DebugMenuItem;

    const-string v3, "Carousel"

    invoke-direct {p0, v0, v1, v3}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;Ljava/lang/Object;)V

    .line 135
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->OledCarouselMetric:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->metricToShow:Llayout/DebugMenuItem;

    const-string v3, "Speed"

    invoke-direct {p0, v0, v1, v3}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;Ljava/lang/Object;)V

    .line 136
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->OledCarouselTimeSequence:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->setTimeCarousel:Llayout/DebugMenuItem;

    const-string v3, "0:28"

    invoke-direct {p0, v0, v1, v3}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;Ljava/lang/Object;)V

    .line 137
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->OledCarouselSpeedSequence:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->setSpeedCarousel:Llayout/DebugMenuItem;

    const-string v3, "18 to 24"

    invoke-direct {p0, v0, v1, v3}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;Ljava/lang/Object;)V

    .line 138
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->OledCarouselDistanceSequence:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->setDistanceCaroussel:Llayout/DebugMenuItem;

    const-string v3, "12.4 to 12.5"

    invoke-direct {p0, v0, v1, v3}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;Ljava/lang/Object;)V

    .line 139
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->OledCarouselClockSequence:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->setClockCarousel:Llayout/DebugMenuItem;

    const-string v3, "9:25pm"

    invoke-direct {p0, v0, v1, v3}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;Ljava/lang/Object;)V

    .line 141
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->SequenceIntro:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->pressTourIntro:Llayout/DebugMenuItem;

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;)V

    .line 142
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->TurnOffEverything:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->pressTourTurnOffEveryting:Llayout/DebugMenuItem;

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;)V

    .line 143
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->PressTourFeatureLoop:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->pressTourLoop:Llayout/DebugMenuItem;

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;)V

    .line 144
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->PressTourMetricsCarousel:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->pressTourCarousel:Llayout/DebugMenuItem;

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;)V

    .line 145
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->SequenceAbbeyRoad:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->pressTourAbbeyRoad:Llayout/DebugMenuItem;

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;)V

    .line 146
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->SequenceElmStreet:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->pressTourElmStreet:Llayout/DebugMenuItem;

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;)V

    .line 147
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->PressTourLightCycle:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->pressTourLightCycle:Llayout/DebugMenuItem;

    const-string v3, "Off"

    invoke-direct {p0, v0, v1, v3}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;Ljava/lang/Object;)V

    .line 148
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->SequenceWeather:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->pressTourWeather:Llayout/DebugMenuItem;

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;)V

    .line 149
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->PressTourAlarm:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->pressTourAlarm:Llayout/DebugMenuItem;

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;)V

    .line 150
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->SequenceCall:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->pressTourCallNotification:Llayout/DebugMenuItem;

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;)V

    .line 152
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->Turn:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->showTurn:Llayout/DebugMenuItem;

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;)V

    .line 153
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->StillOrDemo:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->turnAnimType:Llayout/DebugMenuItem;

    const-string v3, "still"

    invoke-direct {p0, v0, v1, v3}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;Ljava/lang/Object;)V

    .line 154
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->AngleOrQuick:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->turnType:Llayout/DebugMenuItem;

    const-string v3, "angle"

    invoke-direct {p0, v0, v1, v3}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;Ljava/lang/Object;)V

    .line 155
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->AngleTurnAngleIncrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->angleIncrement:Llayout/DebugMenuItem;

    const/16 v3, 0x5a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v0, v1, v4}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;Ljava/lang/Object;)V

    .line 156
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->AngleTurnAngleDecrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->angleDecrement:Llayout/DebugMenuItem;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v1, v3}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;Ljava/lang/Object;)V

    .line 157
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->AngleTurnProgressIncrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->turnProgressIncrement:Llayout/DebugMenuItem;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v1, v3}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;Ljava/lang/Object;)V

    .line 158
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->AngleTurnProgressDecrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->turnProgressDecrement:Llayout/DebugMenuItem;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v1, v3}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;Ljava/lang/Object;)V

    .line 159
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->QuickTurnAngleIncrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->secondAngleIncrement:Llayout/DebugMenuItem;

    const/16 v3, -0x5a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v0, v1, v4}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;Ljava/lang/Object;)V

    .line 160
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->QuickTurnAngleDecrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->secondAngleDecrement:Llayout/DebugMenuItem;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v1, v3}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;Ljava/lang/Object;)V

    .line 161
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->QuickTurnProgressIncrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->secondProgressIncrement:Llayout/DebugMenuItem;

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v0, v1, v4}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;Ljava/lang/Object;)V

    .line 162
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->QuickTurnProgressDecrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->secondProgressDecrement:Llayout/DebugMenuItem;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v0, v1, v4}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;Ljava/lang/Object;)V

    .line 164
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->PointerReset:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->showPointerStill:Llayout/DebugMenuItem;

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;)V

    .line 165
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->PointerAngleIncrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->pointerAngleIncrement:Llayout/DebugMenuItem;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v0, v1, v4}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;Ljava/lang/Object;)V

    .line 166
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->PointerAngleDecrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->pointerAngleDecrement:Llayout/DebugMenuItem;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v0, v1, v4}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;Ljava/lang/Object;)V

    .line 167
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->PointerProgressIncrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->pointerProgressIncrement:Llayout/DebugMenuItem;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v0, v1, v4}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;Ljava/lang/Object;)V

    .line 168
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->PointerProgressDecrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->pointerProgressDecrement:Llayout/DebugMenuItem;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v0, v1, v4}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;Ljava/lang/Object;)V

    .line 169
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->PointerStandby:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->showPointerStandby:Llayout/DebugMenuItem;

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;)V

    .line 171
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->Roundabout1:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->showRoundabout1:Llayout/DebugMenuItem;

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;)V

    .line 172
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->Roundabout2:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->showRoundabout2:Llayout/DebugMenuItem;

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;)V

    .line 173
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->RoundAboutBlinking:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->roundaboutBlinking:Llayout/DebugMenuItem;

    const-string v4, "not blinking"

    invoke-direct {p0, v0, v1, v4}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;Ljava/lang/Object;)V

    .line 174
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->RoundaboutMode:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->roundaboutMode:Llayout/DebugMenuItem;

    sget-object v4, Lbike/smarthalo/app/models/PresentationModels/RoundaboutMode;->Normal:Lbike/smarthalo/app/models/PresentationModels/RoundaboutMode;

    invoke-direct {p0, v0, v1, v4}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;Ljava/lang/Object;)V

    .line 176
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->DestinationStill:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->showDestinationStill:Llayout/DebugMenuItem;

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;)V

    .line 177
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->DestinationIncrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->destinationProgressIncrement:Llayout/DebugMenuItem;

    const/16 v4, 0x32

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v0, v1, v5}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;Ljava/lang/Object;)V

    .line 178
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->DestinationDecrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->destinationProgressDecrement:Llayout/DebugMenuItem;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v0, v1, v5}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;Ljava/lang/Object;)V

    .line 179
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->Destination:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->showDestinationDemo:Llayout/DebugMenuItem;

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;)V

    .line 180
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->UTurn:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->showUturn:Llayout/DebugMenuItem;

    const-string v5, "not blinking"

    invoke-direct {p0, v0, v1, v5}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;Ljava/lang/Object;)V

    .line 181
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->Reroute:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->showReroute:Llayout/DebugMenuItem;

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;)V

    .line 183
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->Speedometer:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->showSpeedometer:Llayout/DebugMenuItem;

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;)V

    .line 184
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->SpeedometerIncrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->speedometerProgressIncrement:Llayout/DebugMenuItem;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v0, v1, v5}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;Ljava/lang/Object;)V

    .line 185
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->SpeedometerDecrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->speedometerProgressDecrement:Llayout/DebugMenuItem;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v0, v1, v5}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;Ljava/lang/Object;)V

    .line 186
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->Progress:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->showFitnessProgress:Llayout/DebugMenuItem;

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;)V

    .line 187
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->ToggleFitnessMode:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->toggleFitnessMode:Llayout/DebugMenuItem;

    const-string v5, "fitness"

    invoke-direct {p0, v0, v1, v5}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;Ljava/lang/Object;)V

    .line 188
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->ProgressIncrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->fitnessProgressIncrement:Llayout/DebugMenuItem;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v0, v1, v5}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;Ljava/lang/Object;)V

    .line 189
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->ProgressDecrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->fitnessProgressDecrement:Llayout/DebugMenuItem;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v0, v1, v5}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;Ljava/lang/Object;)V

    .line 190
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->ToggleFitnessPreTracking:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->toggleFitnessPreTracking:Llayout/DebugMenuItem;

    const-string v5, "On"

    invoke-direct {p0, v0, v1, v5}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;Ljava/lang/Object;)V

    .line 192
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->BatteryLevel:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->showBatteryLevel:Llayout/DebugMenuItem;

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;)V

    .line 193
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->LowBattery:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->showLowBattery:Llayout/DebugMenuItem;

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;)V

    .line 194
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->Clock:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->showClock:Llayout/DebugMenuItem;

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;)V

    .line 195
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->Horn:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->playHorn:Llayout/DebugMenuItem;

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;)V

    .line 196
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->AssistantStill:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->showAssistantStill:Llayout/DebugMenuItem;

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;)V

    .line 197
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->SMSSoundOn:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->smsWithSound:Llayout/DebugMenuItem;

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;)V

    .line 198
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->SMSSoundOff:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->smsWithoutSound:Llayout/DebugMenuItem;

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;)V

    .line 199
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->CallSoundOn:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->callWithSound:Llayout/DebugMenuItem;

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;)V

    .line 200
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->CallSoundOff:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->callWithoutSound:Llayout/DebugMenuItem;

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;)V

    .line 202
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->LightToggle:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->toggleLightOn:Llayout/DebugMenuItem;

    const-string v5, "Off"

    invoke-direct {p0, v0, v1, v5}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;Ljava/lang/Object;)V

    .line 203
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->LightModeToggle:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->toggleLightMode:Llayout/DebugMenuItem;

    const-string v5, "Not Blinking"

    invoke-direct {p0, v0, v1, v5}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;Ljava/lang/Object;)V

    .line 204
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->LightBrightnessIncrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->lightBrightnessIncrement:Llayout/DebugMenuItem;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v0, v1, v5}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;Ljava/lang/Object;)V

    .line 205
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->LightBrightnessDecrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->lightBrightnessDecrement:Llayout/DebugMenuItem;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v0, v1, v4}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;Ljava/lang/Object;)V

    .line 207
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->AlarmArm:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->alarmArm:Llayout/DebugMenuItem;

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;)V

    .line 208
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->AlarmDisarm:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->alarmDisarm:Llayout/DebugMenuItem;

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;)V

    .line 209
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->AlarmWarning:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->alarmWarning:Llayout/DebugMenuItem;

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;)V

    .line 210
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->AlarmWarningIncrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->alarmWarningIncrement:Llayout/DebugMenuItem;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v0, v1, v4}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;Ljava/lang/Object;)V

    .line 211
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->AlarmWarningDecrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->alarmWarningDecrement:Llayout/DebugMenuItem;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v1, v3}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;Ljava/lang/Object;)V

    .line 212
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->AlarmTrigger:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->alarmTrigger:Llayout/DebugMenuItem;

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;)V

    .line 213
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->AlarmDemo:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->alarmDemo:Llayout/DebugMenuItem;

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;)V

    .line 214
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->AlarmOff:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->alarmOff:Llayout/DebugMenuItem;

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;)V

    .line 216
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->TapcodeAddShort:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->tapcodeAddShort:Llayout/DebugMenuItem;

    const-string v3, ""

    invoke-direct {p0, v0, v1, v3}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;Ljava/lang/Object;)V

    .line 217
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->TapcodeAddLong:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->tapcodeAddLong:Llayout/DebugMenuItem;

    const-string v3, ""

    invoke-direct {p0, v0, v1, v3}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;Ljava/lang/Object;)V

    .line 218
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->TapcodeRemoveLast:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->removeLastTapcode:Llayout/DebugMenuItem;

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;)V

    .line 219
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->TapcodeClear:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->clearTapcode:Llayout/DebugMenuItem;

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;)V

    .line 221
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->BleTasksInQueue:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->bleTasksInQueue:Llayout/DebugMenuItem;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v1, v3}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;Ljava/lang/Object;)V

    .line 222
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->BleAvgTaskSpeed:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->bleAvgTaskSpeed:Llayout/DebugMenuItem;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v1, v3}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;Ljava/lang/Object;)V

    .line 223
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->BleAvgTaskTimeInQueue:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->bleAvgTimeInQueue:Llayout/DebugMenuItem;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v1, v3}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;Ljava/lang/Object;)V

    .line 224
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->BleLastTaskSpeed:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->bleLastTaskSpeed:Llayout/DebugMenuItem;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v1, v3}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;Ljava/lang/Object;)V

    .line 225
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->BleLastTaskTimeInQueue:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->bleLastTaskTimeInQueue:Llayout/DebugMenuItem;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;Ljava/lang/Object;)V

    .line 227
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->TriggerCrash:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-object v1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;->triggerCrash:Llayout/DebugMenuItem;

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItem(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Llayout/DebugMenuItem;)V

    return-void
.end method

.method public static synthetic lambda$initializeDebugItem$0(Lbike/smarthalo/app/activities/DebugMenuActivity;Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Landroid/view/View;)V
    .locals 0

    .line 236
    iget-object p2, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->debugMenuPresenter:Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$Presenter;

    invoke-interface {p2, p1}, Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$Presenter;->debugItemClicked(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;)V

    return-void
.end method

.method private setAssociatedValue(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Ljava/lang/Object;)V
    .locals 1

    .line 241
    iget-object v0, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->debugMenuItemMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Llayout/DebugMenuItem;

    if-eqz p1, :cond_0

    .line 243
    invoke-virtual {p1, p2}, Llayout/DebugMenuItem;->setAssociatedValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 537
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0xce

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    if-eqz p3, :cond_0

    .line 540
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 541
    iget-object p2, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->debugMenuPresenter:Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$Presenter;

    invoke-interface {p2, p1}, Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$Presenter;->processSelectedStmDfuFile(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 40
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d001f

    .line 41
    invoke-static {p0, p1}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    iput-object p1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->binding:Lbike/smarthalo/app/databinding/ActivityDebugMenuBinding;

    const-string p1, "Debug Menu"

    .line 42
    invoke-static {p0, p1}, Lbike/smarthalo/app/helpers/SHToolbarHelper;->initToolbar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)V

    .line 43
    invoke-static {p0}, Lbike/smarthalo/app/helpers/ActivityHelper;->initializeStatusBar(Landroid/app/Activity;)V

    .line 44
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->debugMenuItemMap:Ljava/util/Map;

    .line 46
    invoke-static {p0, p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->buildPresenter(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;)Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$Presenter;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->debugMenuPresenter:Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$Presenter;

    .line 47
    iget-object p1, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->debugMenuPresenter:Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$Presenter;

    invoke-interface {p1}, Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$Presenter;->onViewCreated()V

    .line 49
    invoke-direct {p0}, Lbike/smarthalo/app/activities/DebugMenuActivity;->initializeDebugItemMap()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 66
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 67
    iget-object v0, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->debugMenuPresenter:Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$Presenter;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$Presenter;->onViewDestroyed()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 60
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 61
    iget-object v0, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->debugMenuPresenter:Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$Presenter;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$Presenter;->onViewPaused()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 54
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 55
    iget-object v0, p0, Lbike/smarthalo/app/activities/DebugMenuActivity;->debugMenuPresenter:Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$Presenter;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$Presenter;->onViewResumed()V

    return-void
.end method

.method public setAbbeyRoadAngle(I)V
    .locals 2

    .line 435
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->SequenceAbbeyRoadIncrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->setAssociatedValue(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Ljava/lang/Object;)V

    .line 436
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->SequenceAbbeyRoadDecrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->setAssociatedValue(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Ljava/lang/Object;)V

    return-void
.end method

.method public setAlarmWarning(I)V
    .locals 2

    .line 410
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->AlarmWarningIncrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->setAssociatedValue(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Ljava/lang/Object;)V

    .line 411
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->AlarmWarningDecrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->setAssociatedValue(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Ljava/lang/Object;)V

    return-void
.end method

.method public setBleMetrics(Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMetrics;)V
    .locals 3

    .line 283
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->BleTasksInQueue:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-wide v1, p1, Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMetrics;->currentQueueSize:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->setAssociatedValue(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Ljava/lang/Object;)V

    .line 284
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->BleAvgTaskSpeed:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-wide v1, p1, Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMetrics;->averageTaskSpeed:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->setAssociatedValue(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Ljava/lang/Object;)V

    .line 285
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->BleAvgTaskTimeInQueue:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-wide v1, p1, Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMetrics;->averageTaskTimeSpentInQueue:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->setAssociatedValue(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Ljava/lang/Object;)V

    .line 286
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->BleLastTaskSpeed:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-wide v1, p1, Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMetrics;->lastTaskSpeed:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->setAssociatedValue(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Ljava/lang/Object;)V

    .line 287
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->BleLastTaskTimeInQueue:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    iget-wide v1, p1, Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMetrics;->lastTaskTimeSpentInQueue:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->setAssociatedValue(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Ljava/lang/Object;)V

    return-void
.end method

.method public setCarouselDelay(I)V
    .locals 2

    .line 505
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->OledCarouselTimingIncrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->setAssociatedValue(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Ljava/lang/Object;)V

    .line 506
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->OledCarouselTimingDecrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->setAssociatedValue(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Ljava/lang/Object;)V

    return-void
.end method

.method public setCarouselMetric(Lbike/smarthalo/app/models/PresentationModels/MetricType;)V
    .locals 1

    .line 500
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->OledCarouselMetric:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/PresentationModels/MetricType;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->setAssociatedValue(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Ljava/lang/Object;)V

    return-void
.end method

.method public setCarouselMode(Z)V
    .locals 1

    .line 495
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->OledCarouselMode:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eqz p1, :cond_0

    const-string p1, "Carousel"

    goto :goto_0

    :cond_0
    const-string p1, "Metric only"

    :goto_0
    invoke-direct {p0, v0, p1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->setAssociatedValue(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Ljava/lang/Object;)V

    return-void
.end method

.method public setClockSequence(I)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "9:25 pm"

    goto :goto_0

    :cond_0
    const-string p1, "3:28 pm"

    .line 449
    :goto_0
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->OledCarouselClockSequence:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    invoke-direct {p0, v0, p1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->setAssociatedValue(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Ljava/lang/Object;)V

    return-void
.end method

.method public setDestinationProgress(I)V
    .locals 2

    .line 302
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->DestinationIncrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->setAssociatedValue(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Ljava/lang/Object;)V

    .line 303
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->DestinationDecrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->setAssociatedValue(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Ljava/lang/Object;)V

    return-void
.end method

.method public setDistanceSequence(I)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "12.4 - 12.5"

    goto :goto_0

    :cond_0
    const-string p1, "6.8 - 6.9"

    .line 477
    :goto_0
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->OledCarouselDistanceSequence:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    invoke-direct {p0, v0, p1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->setAssociatedValue(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Ljava/lang/Object;)V

    return-void
.end method

.method public setElmStreetAngle(I)V
    .locals 2

    .line 429
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->SequenceElmStreetIncrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->setAssociatedValue(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Ljava/lang/Object;)V

    .line 430
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->SequenceElmStreetDecrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->setAssociatedValue(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Ljava/lang/Object;)V

    return-void
.end method

.method public setFitnessMode(Z)V
    .locals 1

    .line 273
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->ToggleFitnessMode:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eqz p1, :cond_0

    const-string p1, "Fitness"

    goto :goto_0

    :cond_0
    const-string p1, "Progress"

    :goto_0
    invoke-direct {p0, v0, p1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->setAssociatedValue(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Ljava/lang/Object;)V

    return-void
.end method

.method public setFitnessProgressPercentage(I)V
    .locals 2

    .line 267
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->ProgressIncrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->setAssociatedValue(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Ljava/lang/Object;)V

    .line 268
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->ProgressDecrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->setAssociatedValue(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Ljava/lang/Object;)V

    return-void
.end method

.method public setIsFitnessPreTrackingOn(Z)V
    .locals 1

    .line 278
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->ToggleFitnessPreTracking:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eqz p1, :cond_0

    const-string p1, "On"

    goto :goto_0

    :cond_0
    const-string p1, "Off"

    :goto_0
    invoke-direct {p0, v0, p1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->setAssociatedValue(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Ljava/lang/Object;)V

    return-void
.end method

.method public setIsLightOn(Z)V
    .locals 1

    .line 394
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->LightToggle:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eqz p1, :cond_0

    const-string p1, "On"

    goto :goto_0

    :cond_0
    const-string p1, "Off"

    :goto_0
    invoke-direct {p0, v0, p1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->setAssociatedValue(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Ljava/lang/Object;)V

    return-void
.end method

.method public setIsQuickTurn(Z)V
    .locals 1

    .line 318
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->AngleOrQuick:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eqz p1, :cond_0

    const-string p1, "Quick"

    goto :goto_0

    :cond_0
    const-string p1, "Angle"

    :goto_0
    invoke-direct {p0, v0, p1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->setAssociatedValue(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Ljava/lang/Object;)V

    return-void
.end method

.method public setIsTurnDemo(Z)V
    .locals 1

    .line 313
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->StillOrDemo:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eqz p1, :cond_0

    const-string p1, "Demo"

    goto :goto_0

    :cond_0
    const-string p1, "Still"

    :goto_0
    invoke-direct {p0, v0, p1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->setAssociatedValue(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Ljava/lang/Object;)V

    return-void
.end method

.method public setKickstarterOffset(I)V
    .locals 3

    .line 423
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->KickstarterOffsetIncrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->setAssociatedValue(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Ljava/lang/Object;)V

    .line 424
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->KickstarterOffsetDecrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->setAssociatedValue(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Ljava/lang/Object;)V

    return-void
.end method

.method public setLedBrightness(I)V
    .locals 2

    .line 347
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->BrightnessIncrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->setAssociatedValue(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Ljava/lang/Object;)V

    .line 348
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->BrightnessDecrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->setAssociatedValue(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Ljava/lang/Object;)V

    return-void
.end method

.method public setLightBrightness(I)V
    .locals 2

    .line 399
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->LightBrightnessIncrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->setAssociatedValue(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Ljava/lang/Object;)V

    .line 400
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->LightBrightnessDecrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->setAssociatedValue(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Ljava/lang/Object;)V

    return-void
.end method

.method public setLightMode(Z)V
    .locals 1

    .line 405
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->LightModeToggle:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eqz p1, :cond_0

    const-string p1, "Blinking"

    goto :goto_0

    :cond_0
    const-string p1, "Not blinking"

    :goto_0
    invoke-direct {p0, v0, p1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->setAssociatedValue(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Ljava/lang/Object;)V

    return-void
.end method

.method public setOledAnimationTime(I)V
    .locals 2

    .line 382
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->OledAnimationTimeIncrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->setAssociatedValue(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Ljava/lang/Object;)V

    .line 383
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->OledAnimationTimeDecrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->setAssociatedValue(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Ljava/lang/Object;)V

    return-void
.end method

.method public setOledAnimationType(Lbike/smarthalo/sdk/models/OledAnimationType;)V
    .locals 1

    .line 377
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->OledAnimationType:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    invoke-direct {p0, v0, p1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->setAssociatedValue(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Ljava/lang/Object;)V

    return-void
.end method

.method public setOledBrightness(I)V
    .locals 2

    .line 353
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->OledBrightnessIncrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->setAssociatedValue(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Ljava/lang/Object;)V

    .line 354
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->OledBrightnessDecrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->setAssociatedValue(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Ljava/lang/Object;)V

    return-void
.end method

.method public setOledContrast(I)V
    .locals 2

    .line 359
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->OledContrastIncrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->setAssociatedValue(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Ljava/lang/Object;)V

    .line 360
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->OledContrastDecrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->setAssociatedValue(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Ljava/lang/Object;)V

    return-void
.end method

.method public setOledScreen(I)V
    .locals 2

    .line 365
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->OledScreenIncrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->setAssociatedValue(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Ljava/lang/Object;)V

    .line 366
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->OledScreenDecrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->setAssociatedValue(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Ljava/lang/Object;)V

    return-void
.end method

.method public setPointerAngle(I)V
    .locals 2

    .line 255
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->PointerAngleIncrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->setAssociatedValue(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Ljava/lang/Object;)V

    .line 256
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->PointerAngleDecrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->setAssociatedValue(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Ljava/lang/Object;)V

    return-void
.end method

.method public setPointerProgress(I)V
    .locals 2

    .line 249
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->PointerProgressIncrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->setAssociatedValue(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Ljava/lang/Object;)V

    .line 250
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->PointerProgressDecrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->setAssociatedValue(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Ljava/lang/Object;)V

    return-void
.end method

.method public setPressTourLightCycle(ZZ)V
    .locals 1

    const-string v0, "Off"

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    const-string v0, "On"

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "Blinking"

    .line 519
    :cond_1
    :goto_0
    sget-object p1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->PressTourLightCycle:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    invoke-direct {p0, p1, v0}, Lbike/smarthalo/app/activities/DebugMenuActivity;->setAssociatedValue(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Ljava/lang/Object;)V

    return-void
.end method

.method public setQuickTurnAngle(I)V
    .locals 2

    .line 335
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->QuickTurnAngleIncrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->setAssociatedValue(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Ljava/lang/Object;)V

    .line 336
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->QuickTurnAngleDecrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->setAssociatedValue(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Ljava/lang/Object;)V

    return-void
.end method

.method public setQuickTurnProgress(I)V
    .locals 2

    .line 341
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->QuickTurnProgressIncrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->setAssociatedValue(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Ljava/lang/Object;)V

    .line 342
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->QuickTurnProgressDecrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->setAssociatedValue(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Ljava/lang/Object;)V

    return-void
.end method

.method public setRoundAboutBlinking(Z)V
    .locals 1

    .line 297
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->RoundAboutBlinking:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eqz p1, :cond_0

    const-string p1, "blinking"

    goto :goto_0

    :cond_0
    const-string p1, "not blinking"

    :goto_0
    invoke-direct {p0, v0, p1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->setAssociatedValue(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Ljava/lang/Object;)V

    return-void
.end method

.method public setRoundAboutMode(Lbike/smarthalo/app/models/PresentationModels/RoundaboutMode;)V
    .locals 1

    .line 292
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->RoundaboutMode:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    invoke-direct {p0, v0, p1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->setAssociatedValue(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Ljava/lang/Object;)V

    return-void
.end method

.method public setSecondaryOledScreen(I)V
    .locals 2

    .line 371
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->OledSecondaryScreenIncrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->setAssociatedValue(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Ljava/lang/Object;)V

    .line 372
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->OledSecondaryScreenDecrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->setAssociatedValue(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Ljava/lang/Object;)V

    return-void
.end method

.method public setSpeedSequence(I)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "18 to 24"

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-string p1, "18 to 13"

    goto :goto_0

    :cond_1
    const-string p1, "0 to 8"

    .line 464
    :goto_0
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->OledCarouselSpeedSequence:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    invoke-direct {p0, v0, p1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->setAssociatedValue(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Ljava/lang/Object;)V

    return-void
.end method

.method public setSpeedometerPercentage(I)V
    .locals 2

    .line 261
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->SpeedometerIncrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->setAssociatedValue(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Ljava/lang/Object;)V

    .line 262
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->SpeedometerDecrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->setAssociatedValue(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Ljava/lang/Object;)V

    return-void
.end method

.method public setStatusBarIndex(I)V
    .locals 2

    .line 388
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->OledStatusBarIncrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->setAssociatedValue(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Ljava/lang/Object;)V

    .line 389
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->OledStatusBarDecrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->setAssociatedValue(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Ljava/lang/Object;)V

    return-void
.end method

.method public setStmDfuTransferText(Ljava/lang/String;)V
    .locals 1

    .line 524
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->StmDfuFromFile:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    invoke-direct {p0, v0, p1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->setAssociatedValue(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Ljava/lang/Object;)V

    return-void
.end method

.method public setTapcode(Ljava/lang/String;)V
    .locals 2

    .line 416
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 417
    :goto_0
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->TapcodeAddLong:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    invoke-direct {p0, v0, p1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->setAssociatedValue(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Ljava/lang/Object;)V

    .line 418
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->TapcodeAddShort:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    invoke-direct {p0, v0, p1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->setAssociatedValue(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Ljava/lang/Object;)V

    return-void
.end method

.method public setTimeSequence(I)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "0:28"

    goto :goto_0

    :cond_0
    const-string p1, "0:33"

    .line 490
    :goto_0
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->OledCarouselTimeSequence:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    invoke-direct {p0, v0, p1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->setAssociatedValue(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Ljava/lang/Object;)V

    return-void
.end method

.method public setTurnAngle(I)V
    .locals 2

    .line 323
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->AngleTurnAngleIncrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->setAssociatedValue(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Ljava/lang/Object;)V

    .line 324
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->AngleTurnAngleDecrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->setAssociatedValue(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Ljava/lang/Object;)V

    return-void
.end method

.method public setTurnProgress(I)V
    .locals 2

    .line 329
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->AngleTurnProgressIncrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->setAssociatedValue(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Ljava/lang/Object;)V

    .line 330
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->AngleTurnProgressDecrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->setAssociatedValue(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Ljava/lang/Object;)V

    return-void
.end method

.method public setUturnlinking(Z)V
    .locals 1

    .line 308
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->UTurn:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eqz p1, :cond_0

    const-string p1, "blinking"

    goto :goto_0

    :cond_0
    const-string p1, "not blinking"

    :goto_0
    invoke-direct {p0, v0, p1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->setAssociatedValue(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Ljava/lang/Object;)V

    return-void
.end method

.method public showStmDfuFilePicker()V
    .locals 2

    .line 529
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.OPENABLE"

    .line 530
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "*/*"

    .line 531
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0xce

    .line 532
    invoke-virtual {p0, v0, v1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
