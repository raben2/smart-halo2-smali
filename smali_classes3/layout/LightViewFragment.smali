.class public Llayout/LightViewFragment;
.super Llayout/StatusBarFragment;
.source "LightViewFragment.java"

# interfaces
.implements Llayout/StatusBarFragment$IHelpCardListener;
.implements Lbike/smarthalo/app/presenters/presenterContracts/LightViewContract$View;


# static fields
.field private static final TAG:Ljava/lang/String; = "LightViewFragment"


# instance fields
.field analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private lightModeSwitch:Llayout/SettingsSwitch;

.field private presenter:Lbike/smarthalo/app/presenters/presenterContracts/LightViewContract$Presenter;

.field private reactiveStorageContract:Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;

.field private statusBarSwitchEventListener:Llayout/statusBar/StatusBarSwitch$StatusBarSwitchEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Llayout/StatusBarFragment;-><init>()V

    .line 128
    new-instance v0, Llayout/LightViewFragment$3;

    invoke-direct {v0, p0}, Llayout/LightViewFragment$3;-><init>(Llayout/LightViewFragment;)V

    iput-object v0, p0, Llayout/LightViewFragment;->statusBarSwitchEventListener:Llayout/statusBar/StatusBarSwitch$StatusBarSwitchEventListener;

    return-void
.end method

.method static synthetic access$000(Llayout/LightViewFragment;Z)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Llayout/LightViewFragment;->onBlinkingModeChanged(Z)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 32
    sget-object v0, Llayout/LightViewFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Llayout/LightViewFragment;)Lbike/smarthalo/app/presenters/presenterContracts/LightViewContract$Presenter;
    .locals 0

    .line 32
    iget-object p0, p0, Llayout/LightViewFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/LightViewContract$Presenter;

    return-object p0
.end method

.method static synthetic access$300(Llayout/LightViewFragment;Z)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Llayout/LightViewFragment;->onNightLightChanged(Z)V

    return-void
.end method

.method private onBlinkingModeChanged(Z)V
    .locals 1

    .line 124
    iget-object v0, p0, Llayout/LightViewFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/LightViewContract$Presenter;

    invoke-interface {v0, p1}, Lbike/smarthalo/app/presenters/presenterContracts/LightViewContract$Presenter;->toggleIsBlinking(Z)V

    .line 125
    iget-object p1, p0, Llayout/LightViewFragment;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    sget-object v0, Lbike/smarthalo/app/analytics/light/LightConfigType;->Mode:Lbike/smarthalo/app/analytics/light/LightConfigType;

    invoke-static {v0}, Lbike/smarthalo/app/analytics/light/AnalyticsLight;->getLightConfigChangedEvent(Lbike/smarthalo/app/analytics/light/LightConfigType;)Lbike/smarthalo/app/analytics/AnalyticsEvent;

    move-result-object v0

    invoke-interface {p1, v0}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendAnalyticsEvent(Lbike/smarthalo/app/analytics/AnalyticsEvent;)V

    return-void
.end method

.method private onNightLightChanged(Z)V
    .locals 1

    .line 119
    iget-object v0, p0, Llayout/LightViewFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/LightViewContract$Presenter;

    invoke-interface {v0, p1}, Lbike/smarthalo/app/presenters/presenterContracts/LightViewContract$Presenter;->toggleAutoLight(Z)V

    .line 120
    iget-object p1, p0, Llayout/LightViewFragment;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    sget-object v0, Lbike/smarthalo/app/analytics/light/LightConfigType;->Setting:Lbike/smarthalo/app/analytics/light/LightConfigType;

    invoke-static {v0}, Lbike/smarthalo/app/analytics/light/AnalyticsLight;->getLightConfigChangedEvent(Lbike/smarthalo/app/analytics/light/LightConfigType;)Lbike/smarthalo/app/analytics/AnalyticsEvent;

    move-result-object v0

    invoke-interface {p1, v0}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendAnalyticsEvent(Lbike/smarthalo/app/analytics/AnalyticsEvent;)V

    return-void
.end method


# virtual methods
.method public inject(Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;Llayout/statusBar/StatusBarLayout$IOnHelpCardVisibilityChanged;)V
    .locals 0

    .line 102
    iput-object p1, p0, Llayout/LightViewFragment;->reactiveStorageContract:Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;

    .line 103
    invoke-virtual {p0, p2}, Llayout/LightViewFragment;->setOnHelpCardVisibilityListener(Llayout/statusBar/StatusBarLayout$IOnHelpCardVisibilityChanged;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    const p3, 0x7f0d005f

    const/4 v0, 0x0

    .line 50
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lbike/smarthalo/app/dependencyManagement/InjectionHelper;->getCoreComponent(Landroid/content/Context;)Lbike/smarthalo/app/dependencyManagement/components/CoreComponent;

    move-result-object p2

    invoke-interface {p2, p0}, Lbike/smarthalo/app/dependencyManagement/components/CoreComponent;->inject(Llayout/LightViewFragment;)V

    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Llayout/LightViewFragment;->reactiveStorageContract:Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;

    invoke-static {p2, p0, p3}, Lbike/smarthalo/app/presenters/LightViewPresenter;->buildPresenter(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/LightViewContract$View;Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;)Lbike/smarthalo/app/presenters/presenterContracts/LightViewContract$Presenter;

    move-result-object p2

    iput-object p2, p0, Llayout/LightViewFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/LightViewContract$Presenter;

    .line 55
    iget-object v4, p0, Llayout/LightViewFragment;->statusBarSwitchEventListener:Llayout/statusBar/StatusBarSwitch$StatusBarSwitchEventListener;

    iget-object p2, p0, Llayout/LightViewFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/LightViewContract$Presenter;

    invoke-interface {p2}, Lbike/smarthalo/app/presenters/presenterContracts/LightViewContract$Presenter;->getIsLightAuto()Z

    move-result v5

    const v3, 0x7f0a035d

    move-object v1, p0

    move-object v2, p1

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Llayout/LightViewFragment;->initializeStatusBar(Landroid/view/View;ILlayout/statusBar/StatusBarSwitch$StatusBarSwitchEventListener;ZLlayout/StatusBarFragment$IHelpCardListener;)V

    const p2, 0x7f0a035b

    .line 57
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Llayout/SettingsSwitch;

    iput-object p2, p0, Llayout/LightViewFragment;->lightModeSwitch:Llayout/SettingsSwitch;

    .line 58
    iget-object p2, p0, Llayout/LightViewFragment;->lightModeSwitch:Llayout/SettingsSwitch;

    iget-object p3, p0, Llayout/LightViewFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/LightViewContract$Presenter;

    invoke-interface {p3}, Lbike/smarthalo/app/presenters/presenterContracts/LightViewContract$Presenter;->getIsLightBlinking()Z

    move-result p3

    invoke-virtual {p2, p3}, Llayout/SettingsSwitch;->setIsLeft(Z)V

    .line 60
    iget-object p2, p0, Llayout/LightViewFragment;->lightModeSwitch:Llayout/SettingsSwitch;

    new-instance p3, Llayout/LightViewFragment$1;

    invoke-direct {p3, p0}, Llayout/LightViewFragment$1;-><init>(Llayout/LightViewFragment;)V

    invoke-virtual {p2, p3}, Llayout/SettingsSwitch;->setListeners(Llayout/SettingsSwitch$SettingButtonEventListener;)V

    const p2, 0x7f0a00ae

    .line 72
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    invoke-static {p2}, Lbike/smarthalo/app/helpers/SHDisplayHelper;->setIconBlack(Landroid/widget/ImageView;)V

    const p2, 0x7f0a00ad

    .line 73
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    invoke-static {p2}, Lbike/smarthalo/app/helpers/SHDisplayHelper;->setIconBlack(Landroid/widget/ImageView;)V

    const p2, 0x7f0a00ac

    .line 74
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SeekBar;

    .line 75
    iget-object p3, p0, Llayout/LightViewFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/LightViewContract$Presenter;

    invoke-interface {p3}, Lbike/smarthalo/app/presenters/presenterContracts/LightViewContract$Presenter;->getLightBrightness()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 76
    invoke-virtual {p2}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p0}, Llayout/LightViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600ea

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroidx/core/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p3, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 77
    new-instance p3, Llayout/LightViewFragment$2;

    invoke-direct {p3, p0}, Llayout/LightViewFragment$2;-><init>(Llayout/LightViewFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-object p1
.end method

.method public onHelpCardClicked()V
    .locals 2

    .line 144
    iget-object v0, p0, Llayout/LightViewFragment;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    const-string v1, "LightHelp"

    invoke-interface {v0, v1}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendScreenViewEvent(Ljava/lang/String;)V

    return-void
.end method

.method public onLightSettingChanged(Z)V
    .locals 2

    .line 149
    iget-object v0, p0, Llayout/LightViewFragment;->lightModeSwitch:Llayout/SettingsSwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Llayout/SettingsSwitch;->setIsLeft(ZZ)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 114
    invoke-super {p0}, Llayout/StatusBarFragment;->onPause()V

    .line 115
    iget-object v0, p0, Llayout/LightViewFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/LightViewContract$Presenter;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/LightViewContract$Presenter;->onViewPaused()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 108
    invoke-super {p0}, Llayout/StatusBarFragment;->onResume()V

    .line 109
    iget-object v0, p0, Llayout/LightViewFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/LightViewContract$Presenter;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/LightViewContract$Presenter;->onViewResumed()V

    return-void
.end method
