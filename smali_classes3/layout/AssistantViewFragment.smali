.class public Llayout/AssistantViewFragment;
.super Llayout/StatusBarFragment;
.source "AssistantViewFragment.java"

# interfaces
.implements Llayout/StatusBarFragment$IHelpCardListener;
.implements Lbike/smarthalo/app/presenters/presenterContracts/AssistantContract$View;


# static fields
.field private static final TAG:Ljava/lang/String; = "AssistantViewFragment"


# instance fields
.field analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private assistantEventListener:Llayout/statusBar/StatusBarSwitch$StatusBarSwitchEventListener;

.field private binding:Lbike/smarthalo/app/databinding/FragmentAssistantViewBinding;

.field private presenter:Lbike/smarthalo/app/presenters/presenterContracts/AssistantContract$Presenter;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Llayout/StatusBarFragment;-><init>()V

    .line 161
    new-instance v0, Llayout/AssistantViewFragment$3;

    invoke-direct {v0, p0}, Llayout/AssistantViewFragment$3;-><init>(Llayout/AssistantViewFragment;)V

    iput-object v0, p0, Llayout/AssistantViewFragment;->assistantEventListener:Llayout/statusBar/StatusBarSwitch$StatusBarSwitchEventListener;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 42
    sget-object v0, Llayout/AssistantViewFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Llayout/AssistantViewFragment;)Lbike/smarthalo/app/presenters/presenterContracts/AssistantContract$Presenter;
    .locals 0

    .line 42
    iget-object p0, p0, Llayout/AssistantViewFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/AssistantContract$Presenter;

    return-object p0
.end method

.method static synthetic access$200(Llayout/AssistantViewFragment;)Z
    .locals 0

    .line 42
    invoke-direct {p0}, Llayout/AssistantViewFragment;->onAssistantTurnedOn()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Llayout/AssistantViewFragment;)Z
    .locals 0

    .line 42
    invoke-direct {p0}, Llayout/AssistantViewFragment;->onAssistantTurnedOff()Z

    move-result p0

    return p0
.end method

.method private getAssistantSoundSwitchListeners()Llayout/SettingsSwitch$SettingButtonEventListener;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 121
    new-instance v0, Llayout/AssistantViewFragment$2;

    invoke-direct {v0, p0}, Llayout/AssistantViewFragment$2;-><init>(Llayout/AssistantViewFragment;)V

    return-object v0
.end method

.method private getVolumeSeekBarListener()Landroid/widget/SeekBar$OnSeekBarChangeListener;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 97
    new-instance v0, Llayout/AssistantViewFragment$1;

    invoke-direct {v0, p0}, Llayout/AssistantViewFragment$1;-><init>(Llayout/AssistantViewFragment;)V

    return-object v0
.end method

.method public static synthetic lambda$onCreateView$0(Llayout/AssistantViewFragment;Landroid/view/View;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Llayout/AssistantViewFragment;->showTouchInputPage()V

    return-void
.end method

.method public static synthetic lambda$onCreateView$1(Llayout/AssistantViewFragment;Landroid/view/View;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Llayout/AssistantViewFragment;->showAssistantNotificationsPage()V

    return-void
.end method

.method private onAssistantTurnedOff()Z
    .locals 3

    .line 154
    iget-object v0, p0, Llayout/AssistantViewFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/AssistantContract$Presenter;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lbike/smarthalo/app/presenters/presenterContracts/AssistantContract$Presenter;->toggleIsAssistingGlobal(Z)V

    .line 156
    iget-object v0, p0, Llayout/AssistantViewFragment;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    sget-object v2, Lbike/smarthalo/app/analytics/assistant/AssistantConfigType;->Setting:Lbike/smarthalo/app/analytics/assistant/AssistantConfigType;

    invoke-static {v2}, Lbike/smarthalo/app/analytics/assistant/AnalyticsAssistant;->getAssistantConfigChangedEvent(Lbike/smarthalo/app/analytics/assistant/AssistantConfigType;)Lbike/smarthalo/app/analytics/AnalyticsEvent;

    move-result-object v2

    invoke-interface {v0, v2}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendAnalyticsEvent(Lbike/smarthalo/app/analytics/AnalyticsEvent;)V

    return v1
.end method

.method private onAssistantTurnedOn()Z
    .locals 3

    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 137
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 139
    iget-object v1, p0, Llayout/AssistantViewFragment;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    sget-object v2, Lbike/smarthalo/app/analytics/assistant/AssistantConfigType;->Setting:Lbike/smarthalo/app/analytics/assistant/AssistantConfigType;

    invoke-static {v2}, Lbike/smarthalo/app/analytics/assistant/AnalyticsAssistant;->getAssistantConfigChangedEvent(Lbike/smarthalo/app/analytics/assistant/AssistantConfigType;)Lbike/smarthalo/app/analytics/AnalyticsEvent;

    move-result-object v2

    invoke-interface {v1, v2}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendAnalyticsEvent(Lbike/smarthalo/app/analytics/AnalyticsEvent;)V

    .line 141
    invoke-virtual {p0}, Llayout/AssistantViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lbike/smarthalo/app/helpers/SHPermissionsHelper;->checkPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Llayout/AssistantViewFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/AssistantContract$Presenter;

    invoke-interface {v0, v1}, Lbike/smarthalo/app/presenters/presenterContracts/AssistantContract$Presenter;->toggleIsAssistingGlobal(Z)V

    const/4 v0, 0x0

    return v0

    .line 145
    :cond_0
    invoke-virtual {p0}, Llayout/AssistantViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 147
    invoke-virtual {p0}, Llayout/AssistantViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/SettingsStorageStaticManager;->getUserSettings()Lbike/smarthalo/app/models/SHSettings;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lbike/smarthalo/app/helpers/SHPermissionsHelper;->requestCallPermissions(Landroid/app/Activity;Lbike/smarthalo/app/models/SHSettings;Z)V

    :cond_1
    return v1
.end method

.method private showAssistantNotificationsPage()V
    .locals 3

    .line 89
    invoke-virtual {p0}, Llayout/AssistantViewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lbike/smarthalo/app/activities/AssistantNotificationsActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Llayout/AssistantViewFragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private showTouchInputPage()V
    .locals 3

    .line 82
    invoke-virtual {p0}, Llayout/AssistantViewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lbike/smarthalo/app/activities/TouchInputsActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public inject(Llayout/statusBar/StatusBarLayout$IOnHelpCardVisibilityChanged;)V
    .locals 0

    .line 78
    invoke-virtual {p0, p1}, Llayout/AssistantViewFragment;->setOnHelpCardVisibilityListener(Llayout/statusBar/StatusBarLayout$IOnHelpCardVisibilityChanged;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const/4 p3, 0x0

    .line 57
    invoke-static {p1, p2, p3}, Lbike/smarthalo/app/databinding/FragmentAssistantViewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lbike/smarthalo/app/databinding/FragmentAssistantViewBinding;

    move-result-object p1

    iput-object p1, p0, Llayout/AssistantViewFragment;->binding:Lbike/smarthalo/app/databinding/FragmentAssistantViewBinding;

    .line 58
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lbike/smarthalo/app/dependencyManagement/InjectionHelper;->getCoreComponent(Landroid/content/Context;)Lbike/smarthalo/app/dependencyManagement/components/CoreComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lbike/smarthalo/app/dependencyManagement/components/CoreComponent;->inject(Llayout/AssistantViewFragment;)V

    .line 59
    invoke-virtual {p0}, Llayout/AssistantViewFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0}, Lbike/smarthalo/app/presenters/AssistantPresenter;->buildPresenter(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/AssistantContract$View;)Lbike/smarthalo/app/presenters/presenterContracts/AssistantContract$Presenter;

    move-result-object p1

    iput-object p1, p0, Llayout/AssistantViewFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/AssistantContract$Presenter;

    .line 60
    iget-object p1, p0, Llayout/AssistantViewFragment;->binding:Lbike/smarthalo/app/databinding/FragmentAssistantViewBinding;

    invoke-virtual {p1}, Lbike/smarthalo/app/databinding/FragmentAssistantViewBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    .line 62
    iget-object v3, p0, Llayout/AssistantViewFragment;->assistantEventListener:Llayout/statusBar/StatusBarSwitch$StatusBarSwitchEventListener;

    iget-object p2, p0, Llayout/AssistantViewFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/AssistantContract$Presenter;

    invoke-interface {p2}, Lbike/smarthalo/app/presenters/presenterContracts/AssistantContract$Presenter;->getIsAssistingGlobal()Z

    move-result v4

    const v2, 0x7f0a006f

    move-object v0, p0

    move-object v1, p1

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Llayout/AssistantViewFragment;->initializeStatusBar(Landroid/view/View;ILlayout/statusBar/StatusBarSwitch$StatusBarSwitchEventListener;ZLlayout/StatusBarFragment$IHelpCardListener;)V

    .line 64
    iget-object p2, p0, Llayout/AssistantViewFragment;->binding:Lbike/smarthalo/app/databinding/FragmentAssistantViewBinding;

    iget-object p2, p2, Lbike/smarthalo/app/databinding/FragmentAssistantViewBinding;->assistantSoundsSwitch:Llayout/SettingsSwitch;

    iget-object p3, p0, Llayout/AssistantViewFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/AssistantContract$Presenter;

    invoke-interface {p3}, Lbike/smarthalo/app/presenters/presenterContracts/AssistantContract$Presenter;->getIsAssistantSoundOn()Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    invoke-virtual {p2, p3}, Llayout/SettingsSwitch;->setIsLeft(Z)V

    .line 65
    iget-object p2, p0, Llayout/AssistantViewFragment;->binding:Lbike/smarthalo/app/databinding/FragmentAssistantViewBinding;

    iget-object p2, p2, Lbike/smarthalo/app/databinding/FragmentAssistantViewBinding;->assistantSoundsSwitch:Llayout/SettingsSwitch;

    invoke-direct {p0}, Llayout/AssistantViewFragment;->getAssistantSoundSwitchListeners()Llayout/SettingsSwitch$SettingButtonEventListener;

    move-result-object p3

    invoke-virtual {p2, p3}, Llayout/SettingsSwitch;->setListeners(Llayout/SettingsSwitch$SettingButtonEventListener;)V

    .line 67
    iget-object p2, p0, Llayout/AssistantViewFragment;->binding:Lbike/smarthalo/app/databinding/FragmentAssistantViewBinding;

    iget-object p2, p2, Lbike/smarthalo/app/databinding/FragmentAssistantViewBinding;->assistantVolume:Landroid/widget/SeekBar;

    iget-object p3, p0, Llayout/AssistantViewFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/AssistantContract$Presenter;

    invoke-interface {p3}, Lbike/smarthalo/app/presenters/presenterContracts/AssistantContract$Presenter;->getAssistantVolume()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 68
    iget-object p2, p0, Llayout/AssistantViewFragment;->binding:Lbike/smarthalo/app/databinding/FragmentAssistantViewBinding;

    iget-object p2, p2, Lbike/smarthalo/app/databinding/FragmentAssistantViewBinding;->assistantVolume:Landroid/widget/SeekBar;

    invoke-virtual {p2}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0}, Llayout/AssistantViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f060020

    const/4 v1, 0x0

    invoke-static {p3, v0, v1}, Landroidx/core/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result p3

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, p3, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 69
    iget-object p2, p0, Llayout/AssistantViewFragment;->binding:Lbike/smarthalo/app/databinding/FragmentAssistantViewBinding;

    iget-object p2, p2, Lbike/smarthalo/app/databinding/FragmentAssistantViewBinding;->assistantVolume:Landroid/widget/SeekBar;

    invoke-direct {p0}, Llayout/AssistantViewFragment;->getVolumeSeekBarListener()Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 71
    iget-object p2, p0, Llayout/AssistantViewFragment;->binding:Lbike/smarthalo/app/databinding/FragmentAssistantViewBinding;

    iget-object p2, p2, Lbike/smarthalo/app/databinding/FragmentAssistantViewBinding;->touchInputPageButton:Landroid/widget/RelativeLayout;

    new-instance p3, Llayout/-$$Lambda$AssistantViewFragment$2jwB-W82VjccP_mNa8-J70AR6SU;

    invoke-direct {p3, p0}, Llayout/-$$Lambda$AssistantViewFragment$2jwB-W82VjccP_mNa8-J70AR6SU;-><init>(Llayout/AssistantViewFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object p2, p0, Llayout/AssistantViewFragment;->binding:Lbike/smarthalo/app/databinding/FragmentAssistantViewBinding;

    iget-object p2, p2, Lbike/smarthalo/app/databinding/FragmentAssistantViewBinding;->assistantNotificationsPageButton:Landroid/widget/RelativeLayout;

    new-instance p3, Llayout/-$$Lambda$AssistantViewFragment$2CfjSFoJ8uCSFMYWTYMpoophwQo;

    invoke-direct {p3, p0}, Llayout/-$$Lambda$AssistantViewFragment$2CfjSFoJ8uCSFMYWTYMpoophwQo;-><init>(Llayout/AssistantViewFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onHelpCardClicked()V
    .locals 2

    .line 184
    iget-object v0, p0, Llayout/AssistantViewFragment;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    const-string v1, "AssistantHelp"

    invoke-interface {v0, v1}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendScreenViewEvent(Ljava/lang/String;)V

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 1

    .line 175
    invoke-super {p0, p1}, Llayout/StatusBarFragment;->onHiddenChanged(Z)V

    if-nez p1, :cond_0

    .line 178
    iget-object p1, p0, Llayout/AssistantViewFragment;->statusBar:Llayout/statusBar/StatusBarLayout;

    iget-object v0, p0, Llayout/AssistantViewFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/AssistantContract$Presenter;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/AssistantContract$Presenter;->getIsAssistingGlobal()Z

    move-result v0

    invoke-virtual {p1, v0}, Llayout/statusBar/StatusBarLayout;->setStatus(Z)V

    :cond_0
    return-void
.end method
