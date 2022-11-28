.class public Llayout/FitnessMainViewFragment;
.super Llayout/StatusBarFragment;
.source "FitnessMainViewFragment.java"

# interfaces
.implements Llayout/StatusBarFragment$IHelpCardListener;
.implements Lbike/smarthalo/app/presenters/presenterContracts/FitnessMainViewContract$View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llayout/FitnessMainViewFragment$FitnessPagerAdapter;
    }
.end annotation


# static fields
.field private static final CURRENT_VIEW_FRAGMENT_TAG_KEY:Ljava/lang/String; = "CURRENT_VIEW_FRAGMENT_TAG_KEY"

.field private static final CURRENT_VIEW_INDEX:I = 0x0

.field private static final LIFETIME_VIEW_FRAGMENT_TAG_KEY:Ljava/lang/String; = "LIFETIME_VIEW_FRAGMENT_TAG_KEY"

.field private static final LIFETIME_VIEW_INDEX:I = 0x2

.field public static MINIMUM_RIDE_DISTANCE:F = 50.0f

.field private static final PAST_VIEW_FRAGMENT_TAG_KEY:Ljava/lang/String; = "PAST_VIEW_FRAGMENT_TAG_KEY"

.field private static final PAST_VIEW_INDEX:I = 0x1

.field static final TAG:Ljava/lang/String; = "FitnessMainViewFragment"

.field static final numTabs:I = 0x3


# instance fields
.field analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field appStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private currentViewFragment:Llayout/FitnessCurrentViewFragment;

.field private currentViewProcessingDialog:Landroid/app/ProgressDialog;

.field fitnessCloudManager:Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private fitnessEventListener:Llayout/statusBar/StatusBarSwitch$StatusBarSwitchEventListener;

.field fitnessStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private lifeTimeViewFragment:Llayout/FitnessLifeTimeViewFragment;

.field private pager:Landroidx/viewpager/widget/ViewPager;

.field private pagerSelectedIndex:I

.field private pastViewFragment:Llayout/FitnessPastViewFragment;

.field private presenter:Lbike/smarthalo/app/presenters/presenterContracts/FitnessMainViewContract$Presenter;

.field settingsStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private tabLayout:Lcom/google/android/material/tabs/TabLayout;

.field userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 91
    invoke-direct {p0}, Llayout/StatusBarFragment;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Llayout/FitnessMainViewFragment;->pagerSelectedIndex:I

    .line 255
    new-instance v0, Llayout/FitnessMainViewFragment$2;

    invoke-direct {v0, p0}, Llayout/FitnessMainViewFragment$2;-><init>(Llayout/FitnessMainViewFragment;)V

    iput-object v0, p0, Llayout/FitnessMainViewFragment;->fitnessEventListener:Llayout/statusBar/StatusBarSwitch$StatusBarSwitchEventListener;

    return-void
.end method

.method static synthetic access$000(Llayout/FitnessMainViewFragment;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Llayout/FitnessMainViewFragment;->sendSelectedPageAnalyticsEvent(I)V

    return-void
.end method

.method static synthetic access$102(Llayout/FitnessMainViewFragment;I)I
    .locals 0

    .line 48
    iput p1, p0, Llayout/FitnessMainViewFragment;->pagerSelectedIndex:I

    return p1
.end method

.method static synthetic access$200(Llayout/FitnessMainViewFragment;Z)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Llayout/FitnessMainViewFragment;->setIsFitnessOn(Z)V

    return-void
.end method

.method static synthetic access$300(Llayout/FitnessMainViewFragment;)Lbike/smarthalo/app/presenters/presenterContracts/FitnessMainViewContract$Presenter;
    .locals 0

    .line 48
    iget-object p0, p0, Llayout/FitnessMainViewFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/FitnessMainViewContract$Presenter;

    return-object p0
.end method

.method static synthetic access$402(Llayout/FitnessMainViewFragment;Llayout/FitnessCurrentViewFragment;)Llayout/FitnessCurrentViewFragment;
    .locals 0

    .line 48
    iput-object p1, p0, Llayout/FitnessMainViewFragment;->currentViewFragment:Llayout/FitnessCurrentViewFragment;

    return-object p1
.end method

.method static synthetic access$502(Llayout/FitnessMainViewFragment;Llayout/FitnessPastViewFragment;)Llayout/FitnessPastViewFragment;
    .locals 0

    .line 48
    iput-object p1, p0, Llayout/FitnessMainViewFragment;->pastViewFragment:Llayout/FitnessPastViewFragment;

    return-object p1
.end method

.method static synthetic access$602(Llayout/FitnessMainViewFragment;Llayout/FitnessLifeTimeViewFragment;)Llayout/FitnessLifeTimeViewFragment;
    .locals 0

    .line 48
    iput-object p1, p0, Llayout/FitnessMainViewFragment;->lifeTimeViewFragment:Llayout/FitnessLifeTimeViewFragment;

    return-object p1
.end method

.method private clearCurrentViewProcessingDialog()V
    .locals 1

    .line 235
    iget-object v0, p0, Llayout/FitnessMainViewFragment;->currentViewProcessingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    .line 237
    iput-object v0, p0, Llayout/FitnessMainViewFragment;->currentViewProcessingDialog:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method

.method private getPagerOnPageChangedListener()Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
    .locals 1

    .line 159
    new-instance v0, Llayout/FitnessMainViewFragment$1;

    invoke-direct {v0, p0}, Llayout/FitnessMainViewFragment$1;-><init>(Llayout/FitnessMainViewFragment;)V

    return-object v0
.end method

.method private sendSelectedPageAnalyticsEvent(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 250
    :pswitch_0
    iget-object p1, p0, Llayout/FitnessMainViewFragment;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    const-string v0, "FitnessLifetime"

    invoke-interface {p1, v0}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendScreenViewEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 247
    :pswitch_1
    iget-object p1, p0, Llayout/FitnessMainViewFragment;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    const-string v0, "FitnessPast"

    invoke-interface {p1, v0}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendScreenViewEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 244
    :pswitch_2
    iget-object p1, p0, Llayout/FitnessMainViewFragment;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    const-string v0, "FitnessToday"

    invoke-interface {p1, v0}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendScreenViewEvent(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setIsFitnessOn(Z)V
    .locals 2

    .line 291
    iget-object v0, p0, Llayout/FitnessMainViewFragment;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    invoke-static {}, Lbike/smarthalo/app/analytics/fitness/AnalyticsFitness;->getFitnessSettingEvent()Lbike/smarthalo/app/analytics/AnalyticsEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendAnalyticsEvent(Lbike/smarthalo/app/analytics/AnalyticsEvent;)V

    .line 292
    iget-object v0, p0, Llayout/FitnessMainViewFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/FitnessMainViewContract$Presenter;

    invoke-interface {v0, p1}, Lbike/smarthalo/app/presenters/presenterContracts/FitnessMainViewContract$Presenter;->toggleFitness(Z)V

    return-void
.end method


# virtual methods
.method public givePastRidesToChildView(Ljava/util/List;Lbike/smarthalo/app/models/SHPastRide;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHPastRide;",
            ">;",
            "Lbike/smarthalo/app/models/SHPastRide;",
            ")V"
        }
    .end annotation

    .line 216
    invoke-direct {p0}, Llayout/FitnessMainViewFragment;->clearCurrentViewProcessingDialog()V

    .line 218
    iget-object v0, p0, Llayout/FitnessMainViewFragment;->pastViewFragment:Llayout/FitnessPastViewFragment;

    invoke-virtual {v0, p1}, Llayout/FitnessPastViewFragment;->updateOnNewPastRides(Ljava/util/List;)V

    .line 219
    iget-object v0, p0, Llayout/FitnessMainViewFragment;->lifeTimeViewFragment:Llayout/FitnessLifeTimeViewFragment;

    invoke-virtual {v0, p1}, Llayout/FitnessLifeTimeViewFragment;->updateOnNewPastRides(Ljava/util/List;)V

    .line 220
    iget-object p1, p0, Llayout/FitnessMainViewFragment;->currentViewFragment:Llayout/FitnessCurrentViewFragment;

    invoke-virtual {p1, p2}, Llayout/FitnessCurrentViewFragment;->updateCurrentRideWithLastRide(Lbike/smarthalo/app/models/SHPastRide;)V

    return-void
.end method

.method public inject(Llayout/statusBar/StatusBarLayout$IOnHelpCardVisibilityChanged;)V
    .locals 0

    .line 155
    invoke-virtual {p0, p1}, Llayout/FitnessMainViewFragment;->setOnHelpCardVisibilityListener(Llayout/statusBar/StatusBarLayout$IOnHelpCardVisibilityChanged;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 363
    invoke-super {p0, p1, p2, p3}, Llayout/StatusBarFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 365
    iget-object v0, p0, Llayout/FitnessMainViewFragment;->currentViewFragment:Llayout/FitnessCurrentViewFragment;

    if-eqz v0, :cond_0

    .line 366
    invoke-virtual {v0, p1, p2, p3}, Llayout/FitnessCurrentViewFragment;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .line 97
    invoke-super {p0, p1, p2, p3}, Llayout/StatusBarFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const v0, 0x7f0d0057

    const/4 v1, 0x0

    .line 98
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lbike/smarthalo/app/dependencyManagement/InjectionHelper;->getFitnessCloudManagerComponent(Landroid/content/Context;)Lbike/smarthalo/app/dependencyManagement/components/FitnessManagersComponent;

    move-result-object p2

    invoke-interface {p2, p0}, Lbike/smarthalo/app/dependencyManagement/components/FitnessManagersComponent;->inject(Llayout/FitnessMainViewFragment;)V

    const p2, 0x7f0a05c4

    .line 101
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/viewpager/widget/ViewPager;

    iput-object p2, p0, Llayout/FitnessMainViewFragment;->pager:Landroidx/viewpager/widget/ViewPager;

    .line 102
    new-instance p2, Llayout/FitnessMainViewFragment$FitnessPagerAdapter;

    invoke-virtual {p0}, Llayout/FitnessMainViewFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Llayout/FitnessMainViewFragment$FitnessPagerAdapter;-><init>(Llayout/FitnessMainViewFragment;Landroidx/fragment/app/FragmentManager;)V

    .line 103
    iget-object v0, p0, Llayout/FitnessMainViewFragment;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 104
    iget-object p2, p0, Llayout/FitnessMainViewFragment;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-direct {p0}, Llayout/FitnessMainViewFragment;->getPagerOnPageChangedListener()Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 105
    iget-object p2, p0, Llayout/FitnessMainViewFragment;->pager:Landroidx/viewpager/widget/ViewPager;

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 107
    invoke-virtual {p0, p3}, Llayout/FitnessMainViewFragment;->recoverPagerFragments(Landroid/os/Bundle;)V

    .line 108
    invoke-virtual {p0}, Llayout/FitnessMainViewFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Llayout/FitnessMainViewFragment;->fitnessCloudManager:Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;

    iget-object v4, p0, Llayout/FitnessMainViewFragment;->fitnessStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    iget-object v5, p0, Llayout/FitnessMainViewFragment;->settingsStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;

    iget-object v6, p0, Llayout/FitnessMainViewFragment;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    iget-object v7, p0, Llayout/FitnessMainViewFragment;->appStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;

    move-object v2, p0

    invoke-static/range {v1 .. v7}, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;->buildPresenter(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/FitnessMainViewContract$View;Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;)Lbike/smarthalo/app/presenters/presenterContracts/FitnessMainViewContract$Presenter;

    move-result-object p2

    iput-object p2, p0, Llayout/FitnessMainViewFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/FitnessMainViewContract$Presenter;

    const p2, 0x7f0a04b8

    .line 110
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/tabs/TabLayout;

    iput-object p2, p0, Llayout/FitnessMainViewFragment;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 111
    iget-object p2, p0, Llayout/FitnessMainViewFragment;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    iget-object p3, p0, Llayout/FitnessMainViewFragment;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p2, p3}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 113
    iget-object v5, p0, Llayout/FitnessMainViewFragment;->fitnessEventListener:Llayout/statusBar/StatusBarSwitch$StatusBarSwitchEventListener;

    iget-object p2, p0, Llayout/FitnessMainViewFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/FitnessMainViewContract$Presenter;

    invoke-interface {p2}, Lbike/smarthalo/app/presenters/presenterContracts/FitnessMainViewContract$Presenter;->getIsFitnessOn()Z

    move-result v6

    const v4, 0x7f0a01a4

    move-object v3, p1

    move-object v7, p0

    invoke-virtual/range {v2 .. v7}, Llayout/FitnessMainViewFragment;->initializeStatusBar(Landroid/view/View;ILlayout/statusBar/StatusBarSwitch$StatusBarSwitchEventListener;ZLlayout/StatusBarFragment$IHelpCardListener;)V

    return-object p1
.end method

.method public onFetchingNewRides()V
    .locals 3

    .line 225
    invoke-virtual {p0}, Llayout/FitnessMainViewFragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Llayout/FitnessMainViewFragment;->pagerSelectedIndex:I

    if-nez v0, :cond_0

    .line 227
    invoke-virtual {p0}, Llayout/FitnessMainViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Llayout/FitnessMainViewFragment;->currentViewProcessingDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 229
    invoke-virtual {p0}, Llayout/FitnessMainViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f11015f

    const/16 v2, 0x7d0

    invoke-static {v0, v1, v2}, Lbike/smarthalo/app/helpers/SHDialogHelper;->showLoading(Landroid/app/Activity;II)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Llayout/FitnessMainViewFragment;->currentViewProcessingDialog:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method

.method public onHelpCardClicked()V
    .locals 2

    .line 297
    iget-object v0, p0, Llayout/FitnessMainViewFragment;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    const-string v1, "FitnessHelp"

    invoke-interface {v0, v1}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendScreenViewEvent(Ljava/lang/String;)V

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 1

    .line 180
    iget-object v0, p0, Llayout/FitnessMainViewFragment;->pager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 181
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    invoke-direct {p0, p1}, Llayout/FitnessMainViewFragment;->sendSelectedPageAnalyticsEvent(I)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 198
    invoke-super {p0}, Llayout/StatusBarFragment;->onPause()V

    .line 199
    invoke-direct {p0}, Llayout/FitnessMainViewFragment;->clearCurrentViewProcessingDialog()V

    .line 200
    iget-object v0, p0, Llayout/FitnessMainViewFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/FitnessMainViewContract$Presenter;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/FitnessMainViewContract$Presenter;->onViewPaused()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 187
    invoke-super {p0}, Llayout/StatusBarFragment;->onResume()V

    .line 189
    iget-object v0, p0, Llayout/FitnessMainViewFragment;->pager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Llayout/FitnessMainViewFragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Llayout/FitnessMainViewFragment;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Llayout/FitnessMainViewFragment;->sendSelectedPageAnalyticsEvent(I)V

    .line 193
    :cond_0
    iget-object v0, p0, Llayout/FitnessMainViewFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/FitnessMainViewContract$Presenter;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/FitnessMainViewContract$Presenter;->onViewResumed()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 120
    iget-object v0, p0, Llayout/FitnessMainViewFragment;->currentViewFragment:Llayout/FitnessCurrentViewFragment;

    if-eqz v0, :cond_0

    const-string v1, "CURRENT_VIEW_FRAGMENT_TAG_KEY"

    .line 121
    invoke-virtual {v0}, Llayout/FitnessCurrentViewFragment;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_0
    iget-object v0, p0, Llayout/FitnessMainViewFragment;->pastViewFragment:Llayout/FitnessPastViewFragment;

    if-eqz v0, :cond_1

    const-string v1, "PAST_VIEW_FRAGMENT_TAG_KEY"

    .line 125
    invoke-virtual {v0}, Llayout/FitnessPastViewFragment;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :cond_1
    iget-object v0, p0, Llayout/FitnessMainViewFragment;->lifeTimeViewFragment:Llayout/FitnessLifeTimeViewFragment;

    if-eqz v0, :cond_2

    const-string v1, "LIFETIME_VIEW_FRAGMENT_TAG_KEY"

    .line 129
    invoke-virtual {v0}, Llayout/FitnessLifeTimeViewFragment;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_2
    invoke-super {p0, p1}, Llayout/StatusBarFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public recoverPagerFragments(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_2

    const-string v0, "CURRENT_VIEW_FRAGMENT_TAG_KEY"

    .line 137
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p0}, Llayout/FitnessMainViewFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Llayout/FitnessCurrentViewFragment;

    iput-object v0, p0, Llayout/FitnessMainViewFragment;->currentViewFragment:Llayout/FitnessCurrentViewFragment;

    :cond_0
    const-string v0, "PAST_VIEW_FRAGMENT_TAG_KEY"

    .line 142
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 144
    invoke-virtual {p0}, Llayout/FitnessMainViewFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Llayout/FitnessPastViewFragment;

    iput-object v0, p0, Llayout/FitnessMainViewFragment;->pastViewFragment:Llayout/FitnessPastViewFragment;

    :cond_1
    const-string v0, "LIFETIME_VIEW_FRAGMENT_TAG_KEY"

    .line 147
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 149
    invoke-virtual {p0}, Llayout/FitnessMainViewFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Llayout/FitnessLifeTimeViewFragment;

    iput-object p1, p0, Llayout/FitnessMainViewFragment;->lifeTimeViewFragment:Llayout/FitnessLifeTimeViewFragment;

    :cond_2
    return-void
.end method

.method public setCurrentTabTitle(Z)V
    .locals 2

    .line 204
    iget-object v0, p0, Llayout/FitnessMainViewFragment;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const p1, 0x7f11016b

    goto :goto_0

    :cond_0
    const p1, 0x7f11016c

    .line 206
    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    :cond_1
    return-void
.end method

.method public toggleFitnessSwitch(Z)V
    .locals 1

    .line 287
    iget-object p1, p0, Llayout/FitnessMainViewFragment;->statusBar:Llayout/statusBar/StatusBarLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Llayout/statusBar/StatusBarLayout;->setStatus(Z)V

    return-void
.end method
