.class public Llayout/MapDropMenuFragment;
.super Llayout/DropMenuFragment;
.source "MapDropMenuFragment.java"

# interfaces
.implements Lbike/smarthalo/app/presenters/presenterContracts/MapSettingsContract$View;


# static fields
.field private static TAG:Ljava/lang/String; = "MapDropMenuFragment"


# instance fields
.field private analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

.field navigationModeSwitch:Llayout/SettingsSwitch;

.field private presenter:Lbike/smarthalo/app/presenters/presenterContracts/MapSettingsContract$Presenter;

.field private reactiveStorageContract:Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Llayout/DropMenuFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 28
    sget-object v0, Llayout/MapDropMenuFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Llayout/MapDropMenuFragment;)Lbike/smarthalo/app/analytics/AnalyticsContract;
    .locals 0

    .line 28
    iget-object p0, p0, Llayout/MapDropMenuFragment;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    return-object p0
.end method

.method static synthetic access$200(Llayout/MapDropMenuFragment;)Lbike/smarthalo/app/presenters/presenterContracts/MapSettingsContract$Presenter;
    .locals 0

    .line 28
    iget-object p0, p0, Llayout/MapDropMenuFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/MapSettingsContract$Presenter;

    return-object p0
.end method

.method static synthetic access$300(Llayout/MapDropMenuFragment;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Llayout/MapDropMenuFragment;->onSelectTurnByTurnNav()V

    return-void
.end method

.method static synthetic access$400(Llayout/MapDropMenuFragment;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Llayout/MapDropMenuFragment;->onSelectCompassNav()V

    return-void
.end method

.method static synthetic access$500(Llayout/MapDropMenuFragment;Z)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Llayout/MapDropMenuFragment;->setDistanceMetric(Z)V

    return-void
.end method

.method static synthetic access$600(Llayout/MapDropMenuFragment;Z)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Llayout/MapDropMenuFragment;->setNavigationSounds(Z)V

    return-void
.end method

.method private onSelectCompassNav()V
    .locals 8

    .line 110
    iget-object v0, p0, Llayout/MapDropMenuFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/MapSettingsContract$Presenter;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lbike/smarthalo/app/presenters/presenterContracts/MapSettingsContract$Presenter;->toggleNavigationMode(Z)V

    .line 112
    iget-object v0, p0, Llayout/MapDropMenuFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/MapSettingsContract$Presenter;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/MapSettingsContract$Presenter;->shouldNeverRemindCompassModeTip()Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    invoke-virtual {p0}, Llayout/MapDropMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f11028a

    const v3, 0x7f110287

    const v4, 0x7f110289

    const v5, 0x7f110288

    const/4 v6, 0x0

    new-instance v7, Llayout/MapDropMenuFragment$3;

    invoke-direct {v7, p0}, Llayout/MapDropMenuFragment$3;-><init>(Llayout/MapDropMenuFragment;)V

    .line 113
    invoke-static/range {v1 .. v7}, Lbike/smarthalo/app/helpers/SHDialogHelper;->showConfirmationDialog(Landroid/content/Context;IIIILbike/smarthalo/app/helpers/SHDialogHelper$SHDialogOnClick;Lbike/smarthalo/app/helpers/SHDialogHelper$SHDialogOnClick;)V

    :cond_0
    return-void
.end method

.method private onSelectTurnByTurnNav()V
    .locals 2

    .line 130
    iget-object v0, p0, Llayout/MapDropMenuFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/MapSettingsContract$Presenter;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lbike/smarthalo/app/presenters/presenterContracts/MapSettingsContract$Presenter;->toggleNavigationMode(Z)V

    return-void
.end method

.method private setDistanceMetric(Z)V
    .locals 2

    .line 174
    iget-object v0, p0, Llayout/MapDropMenuFragment;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    sget-object v1, Lbike/smarthalo/app/analytics/navigation/NavigationConfigType;->Units:Lbike/smarthalo/app/analytics/navigation/NavigationConfigType;

    invoke-static {v1}, Lbike/smarthalo/app/analytics/navigation/AnalyticsNavigation;->getNavigationConfigChanged(Lbike/smarthalo/app/analytics/navigation/NavigationConfigType;)Lbike/smarthalo/app/analytics/AnalyticsEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendAnalyticsEvent(Lbike/smarthalo/app/analytics/AnalyticsEvent;)V

    .line 175
    iget-object v0, p0, Llayout/MapDropMenuFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/MapSettingsContract$Presenter;

    invoke-interface {v0, p1}, Lbike/smarthalo/app/presenters/presenterContracts/MapSettingsContract$Presenter;->updateUserUnit(Z)V

    return-void
.end method

.method private setNavigationSounds(Z)V
    .locals 2

    .line 169
    iget-object v0, p0, Llayout/MapDropMenuFragment;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    sget-object v1, Lbike/smarthalo/app/analytics/navigation/NavigationConfigType;->Sound:Lbike/smarthalo/app/analytics/navigation/NavigationConfigType;

    invoke-static {v1}, Lbike/smarthalo/app/analytics/navigation/AnalyticsNavigation;->getNavigationConfigChanged(Lbike/smarthalo/app/analytics/navigation/NavigationConfigType;)Lbike/smarthalo/app/analytics/AnalyticsEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendAnalyticsEvent(Lbike/smarthalo/app/analytics/AnalyticsEvent;)V

    .line 170
    iget-object v0, p0, Llayout/MapDropMenuFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/MapSettingsContract$Presenter;

    invoke-interface {v0, p1}, Lbike/smarthalo/app/presenters/presenterContracts/MapSettingsContract$Presenter;->toggleNavigationSound(Z)V

    return-void
.end method

.method private setupModeButton(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0a03a6

    .line 89
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v0, 0x7f0a039f

    .line 90
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Llayout/SettingsSwitch;

    iput-object p1, p0, Llayout/MapDropMenuFragment;->navigationModeSwitch:Llayout/SettingsSwitch;

    .line 92
    iget-object p1, p0, Llayout/MapDropMenuFragment;->navigationModeSwitch:Llayout/SettingsSwitch;

    iget-object v0, p0, Llayout/MapDropMenuFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/MapSettingsContract$Presenter;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/MapSettingsContract$Presenter;->getIsNavCompassMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Llayout/SettingsSwitch;->setIsLeft(Z)V

    .line 94
    iget-object p1, p0, Llayout/MapDropMenuFragment;->navigationModeSwitch:Llayout/SettingsSwitch;

    new-instance v0, Llayout/MapDropMenuFragment$2;

    invoke-direct {v0, p0}, Llayout/MapDropMenuFragment$2;-><init>(Llayout/MapDropMenuFragment;)V

    invoke-virtual {p1, v0}, Llayout/SettingsSwitch;->setListeners(Llayout/SettingsSwitch$SettingButtonEventListener;)V

    return-void
.end method

.method private setupSoundButton(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0a04cd

    .line 151
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Llayout/SettingsSwitch;

    .line 152
    iget-object v0, p0, Llayout/MapDropMenuFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/MapSettingsContract$Presenter;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/MapSettingsContract$Presenter;->getIsNavSoundOn()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Llayout/SettingsSwitch;->setIsLeft(Z)V

    .line 154
    new-instance v0, Llayout/MapDropMenuFragment$5;

    invoke-direct {v0, p0}, Llayout/MapDropMenuFragment$5;-><init>(Llayout/MapDropMenuFragment;)V

    invoke-virtual {p1, v0}, Llayout/SettingsSwitch;->setListeners(Llayout/SettingsSwitch$SettingButtonEventListener;)V

    return-void
.end method

.method private setupUnitsButton(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0a014e

    .line 134
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Llayout/SettingsSwitch;

    .line 135
    iget-object v0, p0, Llayout/MapDropMenuFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/MapSettingsContract$Presenter;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/MapSettingsContract$Presenter;->getIsMetric()Z

    move-result v0

    invoke-virtual {p1, v0}, Llayout/SettingsSwitch;->setIsLeft(Z)V

    .line 137
    new-instance v0, Llayout/MapDropMenuFragment$4;

    invoke-direct {v0, p0}, Llayout/MapDropMenuFragment$4;-><init>(Llayout/MapDropMenuFragment;)V

    invoke-virtual {p1, v0}, Llayout/SettingsSwitch;->setListeners(Llayout/SettingsSwitch$SettingButtonEventListener;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic closeSelf()V
    .locals 0

    .line 28
    invoke-super {p0}, Llayout/DropMenuFragment;->closeSelf()V

    return-void
.end method

.method public inject(Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;Llayout/DropMenuFragment$DropMenuInterface;Lbike/smarthalo/app/analytics/AnalyticsContract;)V
    .locals 0

    .line 83
    iput-object p1, p0, Llayout/MapDropMenuFragment;->reactiveStorageContract:Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;

    .line 84
    iput-object p3, p0, Llayout/MapDropMenuFragment;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    .line 85
    invoke-virtual {p0, p2}, Llayout/MapDropMenuFragment;->addSubscriber(Llayout/DropMenuFragment$DropMenuInterface;)V

    return-void
.end method

.method public bridge synthetic onAttach(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-super {p0, p1}, Llayout/DropMenuFragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 38
    invoke-super {p0, p1, p2, p3}, Llayout/DropMenuFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0a015a

    .line 39
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    const v1, 0x7f0d00ce

    .line 40
    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 42
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Llayout/MapDropMenuFragment;->reactiveStorageContract:Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;

    invoke-static {v1, p0, v2}, Lbike/smarthalo/app/presenters/MapSettingsPresenter;->buildPresenter(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/MapSettingsContract$View;Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;)Lbike/smarthalo/app/presenters/presenterContracts/MapSettingsContract$Presenter;

    move-result-object v1

    iput-object v1, p0, Llayout/MapDropMenuFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/MapSettingsContract$Presenter;

    .line 44
    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 46
    invoke-direct {p0, p1}, Llayout/MapDropMenuFragment;->setupModeButton(Landroid/view/View;)V

    .line 47
    invoke-direct {p0, p1}, Llayout/MapDropMenuFragment;->setupUnitsButton(Landroid/view/View;)V

    .line 48
    invoke-direct {p0, p1}, Llayout/MapDropMenuFragment;->setupSoundButton(Landroid/view/View;)V

    const p1, 0x7f0a03a8

    .line 50
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const p3, 0x7f0a03a7

    .line 51
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 52
    invoke-static {p1}, Lbike/smarthalo/app/helpers/SHDisplayHelper;->setIconWhite(Landroid/widget/ImageView;)V

    .line 53
    invoke-static {p3}, Lbike/smarthalo/app/helpers/SHDisplayHelper;->setIconWhite(Landroid/widget/ImageView;)V

    const p1, 0x7f0a03a2

    .line 54
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    .line 56
    iget-object p3, p0, Llayout/MapDropMenuFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/MapSettingsContract$Presenter;

    invoke-interface {p3}, Lbike/smarthalo/app/presenters/presenterContracts/MapSettingsContract$Presenter;->getNavigationVolume()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 57
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p0}, Llayout/MapDropMenuFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060128

    invoke-static {v1, v2, v0}, Landroidx/core/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p3, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 58
    new-instance p3, Llayout/MapDropMenuFragment$1;

    invoke-direct {p3, p0}, Llayout/MapDropMenuFragment$1;-><init>(Llayout/MapDropMenuFragment;)V

    invoke-virtual {p1, p3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-object p2
.end method

.method public bridge synthetic onDestroy()V
    .locals 0

    .line 28
    invoke-super {p0}, Llayout/DropMenuFragment;->onDestroy()V

    return-void
.end method

.method public onNavigationModeChanged(Z)V
    .locals 2

    .line 192
    invoke-virtual {p0}, Llayout/MapDropMenuFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f0a039f

    .line 194
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Llayout/SettingsSwitch;

    xor-int/lit8 p1, p1, 0x1

    const/4 v1, 0x0

    .line 195
    invoke-virtual {v0, p1, v1}, Llayout/SettingsSwitch;->setIsLeft(ZZ)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 186
    invoke-super {p0}, Llayout/DropMenuFragment;->onPause()V

    .line 187
    iget-object v0, p0, Llayout/MapDropMenuFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/MapSettingsContract$Presenter;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/MapSettingsContract$Presenter;->onViewPaused()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 180
    invoke-super {p0}, Llayout/DropMenuFragment;->onResume()V

    .line 181
    iget-object v0, p0, Llayout/MapDropMenuFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/MapSettingsContract$Presenter;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/MapSettingsContract$Presenter;->onViewResumed()V

    return-void
.end method

.method public bridge synthetic onStop()V
    .locals 0

    .line 28
    invoke-super {p0}, Llayout/DropMenuFragment;->onStop()V

    return-void
.end method

.method public toggleIsNavigationModeEnabled(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    .line 202
    iget-object p1, p0, Llayout/MapDropMenuFragment;->navigationModeSwitch:Llayout/SettingsSwitch;

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Llayout/SettingsSwitch;->enableSwitch(Z)V

    goto :goto_0

    .line 204
    :cond_0
    iget-object p1, p0, Llayout/MapDropMenuFragment;->navigationModeSwitch:Llayout/SettingsSwitch;

    invoke-virtual {p1}, Llayout/SettingsSwitch;->disableSwitch()V

    :goto_0
    return-void
.end method
