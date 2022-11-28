.class public Lbike/smarthalo/app/activities/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"

# interfaces
.implements Llayout/MainToolbarLayout$MainToolbarInterface;
.implements Llayout/ConnectionStatusLayout$ConnectionStatusViewInterface;
.implements Llayout/ViewContracts/SearchConsumerContract;
.implements Llayout/ViewContracts/MapConsumerContract;
.implements Lbike/smarthalo/app/presenters/presenterContracts/MainPresenterContract$View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbike/smarthalo/app/activities/MainActivity$IFirmwareUpdateContract;
    }
.end annotation


# static fields
.field public static final ALARM_FRAGMENT:Ljava/lang/String; = "alarm"

.field public static final ASSISTANT_FRAGMENT:Ljava/lang/String; = "assistant"

.field public static final BROADCAST_UNIT_OF_MEASUREMENT_CHANGED:Ljava/lang/String; = "bike.smarthalo.app.BROADCAST_UNIT_OF_MEASUREMENT_CHANGED"

.field public static final FITNESS_FRAGMENT:Ljava/lang/String; = "fitness"

.field public static final LIGHT_FRAGMENT:Ljava/lang/String; = "light"

.field public static final MAP_FRAGMENT:Ljava/lang/String; = "map"

.field public static final NAVIGATION_SETTINGS:Ljava/lang/String; = "nav_settings"

.field public static final SEARCH_FRAGMENT:Ljava/lang/String; = "search"

.field public static final TAG:Ljava/lang/String; = "MainActivity"


# instance fields
.field private alarmViewFragment:Llayout/AlarmViewFragment;

.field analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private assistantViewFragment:Llayout/AssistantViewFragment;

.field private connectionStatusLayout:Llayout/ConnectionStatusLayout;

.field private currentSectionName:Ljava/lang/String;

.field private favouritesController:Lbike/smarthalo/app/coordinators/FavouritesController;

.field private firmwareAlertDialog:Landroidx/appcompat/app/AlertDialog;

.field private firmwareUpdateContract:Lbike/smarthalo/app/activities/MainActivity$IFirmwareUpdateContract;

.field private fitnessViewFragment:Llayout/FitnessMainViewFragment;

.field private grayOverlay:Landroid/widget/FrameLayout;

.field private hasAskedBluetoothPermissions:Z

.field private leftDrawerLayout:Llayout/LeftDrawerLayout;

.field private lifecycleAwareServiceLauncher:Lbike/smarthalo/app/managers/LifecycleAwareServiceLauncher;

.field private lightViewFragment:Llayout/LightViewFragment;

.field private mainToolbarLayout:Llayout/MainToolbarLayout;

.field private mapDropMenuFragment:Llayout/MapDropMenuFragment;

.field private mapDropMenuInterface:Llayout/DropMenuFragment$DropMenuInterface;

.field private mapLoadingDialog:Landroid/app/ProgressDialog;

.field private mapViewFragment:Llayout/MapViewFragment;

.field private newFeaturesWebView:Landroid/webkit/WebView;

.field okHttpClient:Lokhttp3/OkHttpClient;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private onHelpCardVisibilityChanged:Llayout/statusBar/StatusBarLayout$IOnHelpCardVisibilityChanged;

.field private onTabSelectedListener:Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;

.field powerSavingManager:Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManagerContract;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private presenter:Lbike/smarthalo/app/presenters/presenterContracts/MainPresenterContract$Presenter;

.field private reactiveStorageManager:Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;

.field private rightDrawerLayout:Llayout/RightDrawerLayout;

.field private searchFragment:Llayout/SearchFragment;

.field userCloudManager:Lbike/smarthalo/app/managers/contracts/IUserCloudManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private webViewContainer:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 106
    iput-boolean v0, p0, Lbike/smarthalo/app/activities/MainActivity;->hasAskedBluetoothPermissions:Z

    .line 347
    new-instance v0, Lbike/smarthalo/app/activities/MainActivity$1;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/activities/MainActivity$1;-><init>(Lbike/smarthalo/app/activities/MainActivity;)V

    iput-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->firmwareUpdateContract:Lbike/smarthalo/app/activities/MainActivity$IFirmwareUpdateContract;

    .line 384
    new-instance v0, Lbike/smarthalo/app/activities/MainActivity$2;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/activities/MainActivity$2;-><init>(Lbike/smarthalo/app/activities/MainActivity;)V

    iput-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->mapDropMenuInterface:Llayout/DropMenuFragment$DropMenuInterface;

    .line 729
    new-instance v0, Lbike/smarthalo/app/activities/MainActivity$3;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/activities/MainActivity$3;-><init>(Lbike/smarthalo/app/activities/MainActivity;)V

    iput-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->onTabSelectedListener:Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;

    .line 785
    new-instance v0, Lbike/smarthalo/app/activities/MainActivity$4;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/activities/MainActivity$4;-><init>(Lbike/smarthalo/app/activities/MainActivity;)V

    iput-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->onHelpCardVisibilityChanged:Llayout/statusBar/StatusBarLayout$IOnHelpCardVisibilityChanged;

    return-void
.end method

.method static synthetic access$000(Lbike/smarthalo/app/activities/MainActivity;)Llayout/RightDrawerLayout;
    .locals 0

    .line 71
    iget-object p0, p0, Lbike/smarthalo/app/activities/MainActivity;->rightDrawerLayout:Llayout/RightDrawerLayout;

    return-object p0
.end method

.method static synthetic access$100(Lbike/smarthalo/app/activities/MainActivity;Lbike/smarthalo/app/models/dfu/DfuAvailability;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lbike/smarthalo/app/activities/MainActivity;->launchDFU(Lbike/smarthalo/app/models/dfu/DfuAvailability;)V

    return-void
.end method

.method static synthetic access$200(Lbike/smarthalo/app/activities/MainActivity;)Llayout/MapViewFragment;
    .locals 0

    .line 71
    iget-object p0, p0, Lbike/smarthalo/app/activities/MainActivity;->mapViewFragment:Llayout/MapViewFragment;

    return-object p0
.end method

.method static synthetic access$300(Lbike/smarthalo/app/activities/MainActivity;Ljava/lang/String;Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Lbike/smarthalo/app/activities/MainActivity;->setView(Ljava/lang/String;Lcom/google/android/material/tabs/TabLayout$Tab;)V

    return-void
.end method

.method static synthetic access$400(Lbike/smarthalo/app/activities/MainActivity;)Llayout/MainToolbarLayout;
    .locals 0

    .line 71
    iget-object p0, p0, Lbike/smarthalo/app/activities/MainActivity;->mainToolbarLayout:Llayout/MainToolbarLayout;

    return-object p0
.end method

.method static synthetic access$500(Lbike/smarthalo/app/activities/MainActivity;)Lbike/smarthalo/app/presenters/presenterContracts/MainPresenterContract$Presenter;
    .locals 0

    .line 71
    iget-object p0, p0, Lbike/smarthalo/app/activities/MainActivity;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/MainPresenterContract$Presenter;

    return-object p0
.end method

.method static synthetic access$600(Lbike/smarthalo/app/activities/MainActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 71
    iget-object p0, p0, Lbike/smarthalo/app/activities/MainActivity;->grayOverlay:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$700(Lbike/smarthalo/app/activities/MainActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 71
    iget-object p0, p0, Lbike/smarthalo/app/activities/MainActivity;->webViewContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method private cleanFragmentView(Ljava/lang/String;)V
    .locals 3

    .line 707
    invoke-virtual {p0}, Lbike/smarthalo/app/activities/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 709
    iget-object v1, p0, Lbike/smarthalo/app/activities/MainActivity;->mapViewFragment:Llayout/MapViewFragment;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Llayout/MapViewFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "map"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 710
    iget-object v1, p0, Lbike/smarthalo/app/activities/MainActivity;->mapViewFragment:Llayout/MapViewFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Llayout/MapViewFragment;->showMapOverlay(Z)V

    .line 711
    iget-object v1, p0, Lbike/smarthalo/app/activities/MainActivity;->mapViewFragment:Llayout/MapViewFragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 713
    :cond_0
    iget-object v1, p0, Lbike/smarthalo/app/activities/MainActivity;->lightViewFragment:Llayout/LightViewFragment;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Llayout/LightViewFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "light"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 714
    iget-object v1, p0, Lbike/smarthalo/app/activities/MainActivity;->lightViewFragment:Llayout/LightViewFragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 716
    :cond_1
    iget-object v1, p0, Lbike/smarthalo/app/activities/MainActivity;->alarmViewFragment:Llayout/AlarmViewFragment;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Llayout/AlarmViewFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "alarm"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 717
    iget-object v1, p0, Lbike/smarthalo/app/activities/MainActivity;->alarmViewFragment:Llayout/AlarmViewFragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 719
    :cond_2
    iget-object v1, p0, Lbike/smarthalo/app/activities/MainActivity;->fitnessViewFragment:Llayout/FitnessMainViewFragment;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Llayout/FitnessMainViewFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "fitness"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 720
    iget-object v1, p0, Lbike/smarthalo/app/activities/MainActivity;->fitnessViewFragment:Llayout/FitnessMainViewFragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 722
    :cond_3
    iget-object v1, p0, Lbike/smarthalo/app/activities/MainActivity;->assistantViewFragment:Llayout/AssistantViewFragment;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Llayout/AssistantViewFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "assistant"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 723
    iget-object p1, p0, Lbike/smarthalo/app/activities/MainActivity;->assistantViewFragment:Llayout/AssistantViewFragment;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 726
    :cond_4
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method private dismissFirmwareAlertDialog()V
    .locals 1

    .line 871
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->firmwareAlertDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 872
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->firmwareAlertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 873
    iput-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->firmwareAlertDialog:Landroidx/appcompat/app/AlertDialog;

    :cond_0
    return-void
.end method

.method private hideHelpCard(Z)V
    .locals 1

    .line 450
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->currentSectionName:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lbike/smarthalo/app/activities/MainActivity;->hideHelpCard(ZLjava/lang/String;)V

    return-void
.end method

.method private hideHelpCard(ZLjava/lang/String;)V
    .locals 1

    .line 462
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "assistant"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x4

    goto :goto_1

    :sswitch_1
    const-string v0, "light"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_1

    :sswitch_2
    const-string v0, "alarm"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    goto :goto_1

    :sswitch_3
    const-string v0, "map"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_1

    :sswitch_4
    const-string v0, "fitness"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p2, -0x1

    :goto_1
    packed-switch p2, :pswitch_data_0

    goto :goto_2

    .line 484
    :pswitch_0
    iget-object p2, p0, Lbike/smarthalo/app/activities/MainActivity;->assistantViewFragment:Llayout/AssistantViewFragment;

    if-eqz p2, :cond_1

    .line 485
    invoke-virtual {p2, p1}, Llayout/AssistantViewFragment;->hideHelpCard(Z)V

    goto :goto_2

    .line 479
    :pswitch_1
    iget-object p2, p0, Lbike/smarthalo/app/activities/MainActivity;->fitnessViewFragment:Llayout/FitnessMainViewFragment;

    if-eqz p2, :cond_1

    .line 480
    invoke-virtual {p2, p1}, Llayout/FitnessMainViewFragment;->hideHelpCard(Z)V

    goto :goto_2

    .line 474
    :pswitch_2
    iget-object p2, p0, Lbike/smarthalo/app/activities/MainActivity;->alarmViewFragment:Llayout/AlarmViewFragment;

    if-eqz p2, :cond_1

    .line 475
    invoke-virtual {p2, p1}, Llayout/AlarmViewFragment;->hideHelpCard(Z)V

    goto :goto_2

    .line 469
    :pswitch_3
    iget-object p2, p0, Lbike/smarthalo/app/activities/MainActivity;->lightViewFragment:Llayout/LightViewFragment;

    if-eqz p2, :cond_1

    .line 470
    invoke-virtual {p2, p1}, Llayout/LightViewFragment;->hideHelpCard(Z)V

    goto :goto_2

    .line 464
    :pswitch_4
    iget-object p2, p0, Lbike/smarthalo/app/activities/MainActivity;->mapViewFragment:Llayout/MapViewFragment;

    if-eqz p2, :cond_1

    .line 465
    invoke-virtual {p2, p1}, Llayout/MapViewFragment;->hideHelpCard(Z)V

    :cond_1
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x32815a18 -> :sswitch_4
        0x1a55c -> :sswitch_3
        0x5897a51 -> :sswitch_2
        0x6233516 -> :sswitch_1
        0x553972de -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private hideSearchFragment()V
    .locals 2

    .line 454
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->searchFragment:Llayout/SearchFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Llayout/SearchFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    invoke-virtual {p0}, Lbike/smarthalo/app/activities/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 456
    iget-object v1, p0, Lbike/smarthalo/app/activities/MainActivity;->searchFragment:Llayout/SearchFragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 457
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method

.method private initBottomNavigation()V
    .locals 2

    const v0, 0x7f0a00aa

    .line 563
    invoke-virtual {p0, v0}, Lbike/smarthalo/app/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    .line 564
    iget-object v1, p0, Lbike/smarthalo/app/activities/MainActivity;->onTabSelectedListener:Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    const/4 v1, 0x0

    .line 565
    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    const v1, 0x7f0801d3

    .line 566
    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setIcon(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    return-void
.end method

.method private initToolbar()V
    .locals 1

    const v0, 0x7f0a0372

    .line 377
    invoke-virtual {p0, v0}, Lbike/smarthalo/app/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Llayout/MainToolbarLayout;

    iput-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->mainToolbarLayout:Llayout/MainToolbarLayout;

    .line 378
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->mainToolbarLayout:Llayout/MainToolbarLayout;

    invoke-virtual {v0, p0}, Llayout/MainToolbarLayout;->setSubscriber(Llayout/MainToolbarLayout$MainToolbarInterface;)V

    const v0, 0x7f0a0108

    .line 380
    invoke-virtual {p0, v0}, Lbike/smarthalo/app/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Llayout/ConnectionStatusLayout;

    iput-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->connectionStatusLayout:Llayout/ConnectionStatusLayout;

    .line 381
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->connectionStatusLayout:Llayout/ConnectionStatusLayout;

    invoke-virtual {v0, p0}, Llayout/ConnectionStatusLayout;->setSubscriber(Llayout/ConnectionStatusLayout$ConnectionStatusViewInterface;)V

    return-void
.end method

.method private initializeDependencies()V
    .locals 9

    .line 140
    invoke-static {p0}, Lbike/smarthalo/app/dependencyManagement/InjectionHelper;->getUserCloudManagerComponent(Landroid/app/Activity;)Lbike/smarthalo/app/dependencyManagement/components/UserManagersComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lbike/smarthalo/app/dependencyManagement/components/UserManagersComponent;->inject(Lbike/smarthalo/app/activities/MainActivity;)V

    .line 142
    invoke-static {p0}, Lbike/smarthalo/app/managers/storageManagers/ReactiveStorageManager;->buildManager(Landroid/content/Context;)Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->reactiveStorageManager:Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;

    .line 143
    new-instance v0, Lbike/smarthalo/app/coordinators/FavouritesController;

    iget-object v1, p0, Lbike/smarthalo/app/activities/MainActivity;->userCloudManager:Lbike/smarthalo/app/managers/contracts/IUserCloudManager;

    iget-object v2, p0, Lbike/smarthalo/app/activities/MainActivity;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    invoke-direct {v0, v1, p0, v2}, Lbike/smarthalo/app/coordinators/FavouritesController;-><init>(Lbike/smarthalo/app/managers/contracts/IUserCloudManager;Landroid/app/Activity;Lbike/smarthalo/app/analytics/AnalyticsContract;)V

    iput-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->favouritesController:Lbike/smarthalo/app/coordinators/FavouritesController;

    .line 144
    new-instance v0, Lbike/smarthalo/app/managers/LifecycleAwareServiceLauncher;

    invoke-virtual {p0}, Lbike/smarthalo/app/activities/MainActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    invoke-direct {v0, v1}, Lbike/smarthalo/app/managers/LifecycleAwareServiceLauncher;-><init>(Landroidx/lifecycle/Lifecycle;)V

    iput-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->lifecycleAwareServiceLauncher:Lbike/smarthalo/app/managers/LifecycleAwareServiceLauncher;

    .line 146
    invoke-virtual {p0}, Lbike/smarthalo/app/activities/MainActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v2

    iget-object v5, p0, Lbike/smarthalo/app/activities/MainActivity;->okHttpClient:Lokhttp3/OkHttpClient;

    iget-object v6, p0, Lbike/smarthalo/app/activities/MainActivity;->lifecycleAwareServiceLauncher:Lbike/smarthalo/app/managers/LifecycleAwareServiceLauncher;

    iget-object v7, p0, Lbike/smarthalo/app/activities/MainActivity;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    iget-object v8, p0, Lbike/smarthalo/app/activities/MainActivity;->powerSavingManager:Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManagerContract;

    move-object v3, p0

    move-object v4, p0

    invoke-static/range {v2 .. v8}, Lbike/smarthalo/app/presenters/MainPresenter;->buildPresenter(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/MainPresenterContract$View;Lokhttp3/OkHttpClient;Lbike/smarthalo/app/managers/LifecycleAwareServiceLauncher;Lbike/smarthalo/app/analytics/AnalyticsContract;Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManagerContract;)Lbike/smarthalo/app/presenters/presenterContracts/MainPresenterContract$Presenter;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/MainPresenterContract$Presenter;

    return-void
.end method

.method private initializeSubscriptions()V
    .locals 2

    .line 207
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->rightDrawerLayout:Llayout/RightDrawerLayout;

    iget-object v1, p0, Lbike/smarthalo/app/activities/MainActivity;->firmwareUpdateContract:Lbike/smarthalo/app/activities/MainActivity$IFirmwareUpdateContract;

    invoke-virtual {v0, v1}, Llayout/RightDrawerLayout;->addFirmwareUpdateSubscriber(Lbike/smarthalo/app/activities/MainActivity$IFirmwareUpdateContract;)V

    return-void
.end method

.method private initializeView()V
    .locals 5

    const v0, 0x7f0a044e

    .line 187
    invoke-virtual {p0, v0}, Lbike/smarthalo/app/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Llayout/RightDrawerLayout;

    iput-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->rightDrawerLayout:Llayout/RightDrawerLayout;

    .line 188
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->rightDrawerLayout:Llayout/RightDrawerLayout;

    iget-object v1, p0, Lbike/smarthalo/app/activities/MainActivity;->firmwareUpdateContract:Lbike/smarthalo/app/activities/MainActivity$IFirmwareUpdateContract;

    iget-object v2, p0, Lbike/smarthalo/app/activities/MainActivity;->reactiveStorageManager:Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;

    iget-object v3, p0, Lbike/smarthalo/app/activities/MainActivity;->userCloudManager:Lbike/smarthalo/app/managers/contracts/IUserCloudManager;

    iget-object v4, p0, Lbike/smarthalo/app/activities/MainActivity;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    invoke-virtual {v0, v1, v2, v3, v4}, Llayout/RightDrawerLayout;->inject(Lbike/smarthalo/app/activities/MainActivity$IFirmwareUpdateContract;Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;Lbike/smarthalo/app/managers/contracts/IUserCloudManager;Lbike/smarthalo/app/analytics/AnalyticsContract;)V

    .line 189
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->rightDrawerLayout:Llayout/RightDrawerLayout;

    invoke-virtual {v0, p0}, Llayout/RightDrawerLayout;->onActivityCreated(Landroid/app/Activity;)V

    const v0, 0x7f0a034c

    .line 191
    invoke-virtual {p0, v0}, Lbike/smarthalo/app/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Llayout/LeftDrawerLayout;

    iput-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->leftDrawerLayout:Llayout/LeftDrawerLayout;

    .line 192
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->leftDrawerLayout:Llayout/LeftDrawerLayout;

    invoke-virtual {v0, p0}, Llayout/LeftDrawerLayout;->onActivityCreated(Landroid/app/Activity;)V

    const v0, 0x7f0a03b0

    .line 194
    invoke-virtual {p0, v0}, Lbike/smarthalo/app/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->webViewContainer:Landroid/widget/FrameLayout;

    const v0, 0x7f0a01cc

    .line 195
    invoke-virtual {p0, v0}, Lbike/smarthalo/app/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->grayOverlay:Landroid/widget/FrameLayout;

    const v0, 0x7f0a03ae

    .line 196
    invoke-virtual {p0, v0}, Lbike/smarthalo/app/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->newFeaturesWebView:Landroid/webkit/WebView;

    const v0, 0x7f0a03af

    .line 197
    invoke-virtual {p0, v0}, Lbike/smarthalo/app/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 198
    new-instance v1, Lbike/smarthalo/app/activities/-$$Lambda$MainActivity$GEYte958fAGLG4hgaY4WLNERng0;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/activities/-$$Lambda$MainActivity$GEYte958fAGLG4hgaY4WLNERng0;-><init>(Lbike/smarthalo/app/activities/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    invoke-direct {p0}, Lbike/smarthalo/app/activities/MainActivity;->initToolbar()V

    const-string v0, "map"

    const/4 v1, 0x0

    .line 202
    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/MainActivity;->setView(Ljava/lang/String;Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 203
    invoke-direct {p0}, Lbike/smarthalo/app/activities/MainActivity;->initBottomNavigation()V

    return-void
.end method

.method public static synthetic lambda$initializeView$0(Lbike/smarthalo/app/activities/MainActivity;Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 198
    invoke-virtual {p0, p1}, Lbike/smarthalo/app/activities/MainActivity;->toggleNewFeaturesPageVisibility(Z)V

    return-void
.end method

.method public static synthetic lambda$onDFUStateChanged$7(Lbike/smarthalo/app/activities/MainActivity;Lbike/smarthalo/app/models/dfu/DfuState;)V
    .locals 0

    .line 862
    iget-object p1, p1, Lbike/smarthalo/app/models/dfu/DfuState;->availability:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    invoke-direct {p0, p1}, Lbike/smarthalo/app/activities/MainActivity;->launchDFU(Lbike/smarthalo/app/models/dfu/DfuAvailability;)V

    return-void
.end method

.method public static synthetic lambda$onDFUStateChanged$8(Lbike/smarthalo/app/activities/MainActivity;)V
    .locals 1

    .line 863
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/MainPresenterContract$Presenter;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/MainPresenterContract$Presenter;->postponeFirmwareUpdate()V

    return-void
.end method

.method public static synthetic lambda$onNewIntent$1(Lbike/smarthalo/app/activities/MainActivity;)V
    .locals 2

    .line 262
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->fitnessViewFragment:Llayout/FitnessMainViewFragment;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {v0, v1}, Llayout/FitnessMainViewFragment;->toggleFitnessSwitch(Z)V

    goto :goto_0

    .line 265
    :cond_0
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/MainPresenterContract$Presenter;

    invoke-interface {v0, v1}, Lbike/smarthalo/app/presenters/presenterContracts/MainPresenterContract$Presenter;->toggleFitnessTracking(Z)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$onNewIntent$2(Lbike/smarthalo/app/activities/MainActivity;)V
    .locals 1

    .line 267
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/MainPresenterContract$Presenter;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/MainPresenterContract$Presenter;->dontRemindMeFitnessOff()V

    return-void
.end method

.method public static synthetic lambda$showLocationOffPrompt$5(Lbike/smarthalo/app/activities/MainActivity;)V
    .locals 0

    .line 286
    invoke-static {p0}, Lbike/smarthalo/app/helpers/ActivityHelper;->startLocationSettingsActivity(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic lambda$showLocationOffPrompt$6(Lbike/smarthalo/app/activities/MainActivity;)V
    .locals 1

    .line 287
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/MainPresenterContract$Presenter;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/MainPresenterContract$Presenter;->dontRemindLocationOff()V

    return-void
.end method

.method public static synthetic lambda$showPowerSavingPrompt$3(Lbike/smarthalo/app/activities/MainActivity;)V
    .locals 0

    .line 278
    invoke-static {p0}, Lbike/smarthalo/app/helpers/ActivityHelper;->startPowerSavingsActivity(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic lambda$showPowerSavingPrompt$4(Lbike/smarthalo/app/activities/MainActivity;)V
    .locals 1

    .line 279
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/MainPresenterContract$Presenter;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/MainPresenterContract$Presenter;->dontRemindMePowerSavingOn()V

    return-void
.end method

.method private launchDFU(Lbike/smarthalo/app/models/dfu/DfuAvailability;)V
    .locals 1

    .line 363
    invoke-direct {p0}, Lbike/smarthalo/app/activities/MainActivity;->dismissFirmwareAlertDialog()V

    .line 364
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/MainPresenterContract$Presenter;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/MainPresenterContract$Presenter;->postponeFirmwareUpdate()V

    .line 365
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/MainPresenterContract$Presenter;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/MainPresenterContract$Presenter;->getLatestDfuState()Lbike/smarthalo/app/models/dfu/DfuState;

    move-result-object v0

    .line 366
    invoke-static {p0, v0}, Lbike/smarthalo/app/activities/DFUActivity;->startDFUActivity(Landroid/content/Context;Lbike/smarthalo/app/models/dfu/DfuState;)V

    .line 368
    sget-object v0, Lbike/smarthalo/app/models/dfu/DfuAvailability;->Required:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    if-eq p1, v0, :cond_0

    sget-object v0, Lbike/smarthalo/app/models/dfu/DfuAvailability;->RequiredForTester:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    if-eq p1, v0, :cond_0

    sget-object v0, Lbike/smarthalo/app/models/dfu/DfuAvailability;->RequiredGolden:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    if-ne p1, v0, :cond_1

    .line 371
    :cond_0
    invoke-virtual {p0}, Lbike/smarthalo/app/activities/MainActivity;->finish()V

    :cond_1
    return-void
.end method

.method private recoverChildFragments(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 177
    invoke-virtual {p0}, Lbike/smarthalo/app/activities/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "map"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Llayout/MapViewFragment;

    iput-object p1, p0, Lbike/smarthalo/app/activities/MainActivity;->mapViewFragment:Llayout/MapViewFragment;

    .line 178
    invoke-virtual {p0}, Lbike/smarthalo/app/activities/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "light"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Llayout/LightViewFragment;

    iput-object p1, p0, Lbike/smarthalo/app/activities/MainActivity;->lightViewFragment:Llayout/LightViewFragment;

    .line 179
    invoke-virtual {p0}, Lbike/smarthalo/app/activities/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Llayout/AlarmViewFragment;

    iput-object p1, p0, Lbike/smarthalo/app/activities/MainActivity;->alarmViewFragment:Llayout/AlarmViewFragment;

    .line 180
    invoke-virtual {p0}, Lbike/smarthalo/app/activities/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "fitness"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Llayout/FitnessMainViewFragment;

    iput-object p1, p0, Lbike/smarthalo/app/activities/MainActivity;->fitnessViewFragment:Llayout/FitnessMainViewFragment;

    .line 181
    invoke-virtual {p0}, Lbike/smarthalo/app/activities/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "assistant"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Llayout/AssistantViewFragment;

    iput-object p1, p0, Lbike/smarthalo/app/activities/MainActivity;->assistantViewFragment:Llayout/AssistantViewFragment;

    .line 182
    invoke-virtual {p0}, Lbike/smarthalo/app/activities/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "nav_settings"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Llayout/MapDropMenuFragment;

    iput-object p1, p0, Lbike/smarthalo/app/activities/MainActivity;->mapDropMenuFragment:Llayout/MapDropMenuFragment;

    :cond_0
    return-void
.end method

.method private recoverChildrenDependencies()V
    .locals 4

    .line 150
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->mapViewFragment:Llayout/MapViewFragment;

    if-eqz v0, :cond_0

    .line 151
    iget-object v1, p0, Lbike/smarthalo/app/activities/MainActivity;->favouritesController:Lbike/smarthalo/app/coordinators/FavouritesController;

    iget-object v2, p0, Lbike/smarthalo/app/activities/MainActivity;->onHelpCardVisibilityChanged:Llayout/statusBar/StatusBarLayout$IOnHelpCardVisibilityChanged;

    invoke-virtual {v0, p0, v1, v2}, Llayout/MapViewFragment;->inject(Llayout/ViewContracts/MapConsumerContract;Lbike/smarthalo/app/coordinators/FavouritesController;Llayout/statusBar/StatusBarLayout$IOnHelpCardVisibilityChanged;)V

    .line 154
    :cond_0
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->lightViewFragment:Llayout/LightViewFragment;

    if-eqz v0, :cond_1

    .line 155
    iget-object v1, p0, Lbike/smarthalo/app/activities/MainActivity;->reactiveStorageManager:Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;

    iget-object v2, p0, Lbike/smarthalo/app/activities/MainActivity;->onHelpCardVisibilityChanged:Llayout/statusBar/StatusBarLayout$IOnHelpCardVisibilityChanged;

    invoke-virtual {v0, v1, v2}, Llayout/LightViewFragment;->inject(Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;Llayout/statusBar/StatusBarLayout$IOnHelpCardVisibilityChanged;)V

    .line 158
    :cond_1
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->alarmViewFragment:Llayout/AlarmViewFragment;

    if-eqz v0, :cond_2

    .line 159
    iget-object v1, p0, Lbike/smarthalo/app/activities/MainActivity;->firmwareUpdateContract:Lbike/smarthalo/app/activities/MainActivity$IFirmwareUpdateContract;

    iget-object v2, p0, Lbike/smarthalo/app/activities/MainActivity;->onHelpCardVisibilityChanged:Llayout/statusBar/StatusBarLayout$IOnHelpCardVisibilityChanged;

    invoke-virtual {v0, v1, v2}, Llayout/AlarmViewFragment;->inject(Lbike/smarthalo/app/activities/MainActivity$IFirmwareUpdateContract;Llayout/statusBar/StatusBarLayout$IOnHelpCardVisibilityChanged;)V

    .line 162
    :cond_2
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->fitnessViewFragment:Llayout/FitnessMainViewFragment;

    if-eqz v0, :cond_3

    .line 163
    iget-object v1, p0, Lbike/smarthalo/app/activities/MainActivity;->onHelpCardVisibilityChanged:Llayout/statusBar/StatusBarLayout$IOnHelpCardVisibilityChanged;

    invoke-virtual {v0, v1}, Llayout/FitnessMainViewFragment;->inject(Llayout/statusBar/StatusBarLayout$IOnHelpCardVisibilityChanged;)V

    .line 166
    :cond_3
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->assistantViewFragment:Llayout/AssistantViewFragment;

    if-eqz v0, :cond_4

    .line 167
    iget-object v1, p0, Lbike/smarthalo/app/activities/MainActivity;->onHelpCardVisibilityChanged:Llayout/statusBar/StatusBarLayout$IOnHelpCardVisibilityChanged;

    invoke-virtual {v0, v1}, Llayout/AssistantViewFragment;->inject(Llayout/statusBar/StatusBarLayout$IOnHelpCardVisibilityChanged;)V

    .line 170
    :cond_4
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->mapDropMenuFragment:Llayout/MapDropMenuFragment;

    if-eqz v0, :cond_5

    .line 171
    iget-object v1, p0, Lbike/smarthalo/app/activities/MainActivity;->reactiveStorageManager:Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;

    iget-object v2, p0, Lbike/smarthalo/app/activities/MainActivity;->mapDropMenuInterface:Llayout/DropMenuFragment$DropMenuInterface;

    iget-object v3, p0, Lbike/smarthalo/app/activities/MainActivity;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    invoke-virtual {v0, v1, v2, v3}, Llayout/MapDropMenuFragment;->inject(Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;Llayout/DropMenuFragment$DropMenuInterface;Lbike/smarthalo/app/analytics/AnalyticsContract;)V

    :cond_5
    return-void
.end method

.method private recoverSearchFragment()V
    .locals 2

    .line 698
    invoke-virtual {p0}, Lbike/smarthalo/app/activities/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "search"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 700
    check-cast v0, Llayout/SearchFragment;

    iput-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->searchFragment:Llayout/SearchFragment;

    .line 701
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->searchFragment:Llayout/SearchFragment;

    invoke-virtual {v0, p0}, Llayout/SearchFragment;->setConsumer(Llayout/ViewContracts/SearchConsumerContract;)V

    .line 702
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->searchFragment:Llayout/SearchFragment;

    iget-object v1, p0, Lbike/smarthalo/app/activities/MainActivity;->favouritesController:Lbike/smarthalo/app/coordinators/FavouritesController;

    invoke-virtual {v0, v1}, Llayout/SearchFragment;->setFavouritesController(Lbike/smarthalo/app/coordinators/FavouritesController;)V

    :cond_0
    return-void
.end method

.method private setView(Ljava/lang/String;Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 595
    :cond_0
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->currentSectionName:Ljava/lang/String;

    const/4 v1, 0x0

    .line 599
    iput-object p1, p0, Lbike/smarthalo/app/activities/MainActivity;->currentSectionName:Ljava/lang/String;

    .line 601
    iget-object v2, p0, Lbike/smarthalo/app/activities/MainActivity;->mainToolbarLayout:Llayout/MainToolbarLayout;

    iget-object v3, p0, Lbike/smarthalo/app/activities/MainActivity;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/MainPresenterContract$Presenter;

    invoke-interface {v3}, Lbike/smarthalo/app/presenters/presenterContracts/MainPresenterContract$Presenter;->getIsNavigating()Z

    move-result v3

    invoke-virtual {v2, p1, v3}, Llayout/MainToolbarLayout;->setSection(Ljava/lang/String;Z)V

    const/4 v2, -0x1

    .line 603
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "assistant"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :sswitch_1
    const-string v3, "light"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v3, "alarm"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string v3, "map"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :sswitch_4
    const-string v3, "fitness"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x3

    :cond_1
    :goto_0
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1

    .line 651
    :pswitch_0
    iget-object v1, p0, Lbike/smarthalo/app/activities/MainActivity;->assistantViewFragment:Llayout/AssistantViewFragment;

    if-nez v1, :cond_2

    .line 652
    new-instance v1, Llayout/AssistantViewFragment;

    invoke-direct {v1}, Llayout/AssistantViewFragment;-><init>()V

    iput-object v1, p0, Lbike/smarthalo/app/activities/MainActivity;->assistantViewFragment:Llayout/AssistantViewFragment;

    .line 653
    iget-object v1, p0, Lbike/smarthalo/app/activities/MainActivity;->assistantViewFragment:Llayout/AssistantViewFragment;

    iget-object v2, p0, Lbike/smarthalo/app/activities/MainActivity;->onHelpCardVisibilityChanged:Llayout/statusBar/StatusBarLayout$IOnHelpCardVisibilityChanged;

    invoke-virtual {v1, v2}, Llayout/AssistantViewFragment;->inject(Llayout/statusBar/StatusBarLayout$IOnHelpCardVisibilityChanged;)V

    .line 655
    :cond_2
    iget-object v1, p0, Lbike/smarthalo/app/activities/MainActivity;->assistantViewFragment:Llayout/AssistantViewFragment;

    iget-object v2, p0, Lbike/smarthalo/app/activities/MainActivity;->onHelpCardVisibilityChanged:Llayout/statusBar/StatusBarLayout$IOnHelpCardVisibilityChanged;

    invoke-virtual {v1, v2}, Llayout/AssistantViewFragment;->setOnHelpCardVisibilityListener(Llayout/statusBar/StatusBarLayout$IOnHelpCardVisibilityChanged;)V

    .line 656
    iget-object v1, p0, Lbike/smarthalo/app/activities/MainActivity;->assistantViewFragment:Llayout/AssistantViewFragment;

    if-eqz p2, :cond_3

    const v2, 0x7f080082

    .line 658
    invoke-virtual {p2, v2}, Lcom/google/android/material/tabs/TabLayout$Tab;->setIcon(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 660
    :cond_3
    iget-object p2, p0, Lbike/smarthalo/app/activities/MainActivity;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    const-string v2, "AssistantMain"

    invoke-interface {p2, v2}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendScreenViewEvent(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 641
    :pswitch_1
    iget-object v1, p0, Lbike/smarthalo/app/activities/MainActivity;->fitnessViewFragment:Llayout/FitnessMainViewFragment;

    if-nez v1, :cond_4

    .line 642
    new-instance v1, Llayout/FitnessMainViewFragment;

    invoke-direct {v1}, Llayout/FitnessMainViewFragment;-><init>()V

    iput-object v1, p0, Lbike/smarthalo/app/activities/MainActivity;->fitnessViewFragment:Llayout/FitnessMainViewFragment;

    .line 643
    iget-object v1, p0, Lbike/smarthalo/app/activities/MainActivity;->fitnessViewFragment:Llayout/FitnessMainViewFragment;

    iget-object v2, p0, Lbike/smarthalo/app/activities/MainActivity;->onHelpCardVisibilityChanged:Llayout/statusBar/StatusBarLayout$IOnHelpCardVisibilityChanged;

    invoke-virtual {v1, v2}, Llayout/FitnessMainViewFragment;->inject(Llayout/statusBar/StatusBarLayout$IOnHelpCardVisibilityChanged;)V

    .line 645
    :cond_4
    iget-object v1, p0, Lbike/smarthalo/app/activities/MainActivity;->fitnessViewFragment:Llayout/FitnessMainViewFragment;

    if-eqz p2, :cond_b

    const v2, 0x7f0800f0

    .line 647
    invoke-virtual {p2, v2}, Lcom/google/android/material/tabs/TabLayout$Tab;->setIcon(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    goto/16 :goto_1

    .line 629
    :pswitch_2
    iget-object v1, p0, Lbike/smarthalo/app/activities/MainActivity;->alarmViewFragment:Llayout/AlarmViewFragment;

    if-nez v1, :cond_5

    .line 630
    new-instance v1, Llayout/AlarmViewFragment;

    invoke-direct {v1}, Llayout/AlarmViewFragment;-><init>()V

    iput-object v1, p0, Lbike/smarthalo/app/activities/MainActivity;->alarmViewFragment:Llayout/AlarmViewFragment;

    .line 631
    iget-object v1, p0, Lbike/smarthalo/app/activities/MainActivity;->alarmViewFragment:Llayout/AlarmViewFragment;

    iget-object v2, p0, Lbike/smarthalo/app/activities/MainActivity;->firmwareUpdateContract:Lbike/smarthalo/app/activities/MainActivity$IFirmwareUpdateContract;

    iget-object v3, p0, Lbike/smarthalo/app/activities/MainActivity;->onHelpCardVisibilityChanged:Llayout/statusBar/StatusBarLayout$IOnHelpCardVisibilityChanged;

    invoke-virtual {v1, v2, v3}, Llayout/AlarmViewFragment;->inject(Lbike/smarthalo/app/activities/MainActivity$IFirmwareUpdateContract;Llayout/statusBar/StatusBarLayout$IOnHelpCardVisibilityChanged;)V

    .line 634
    :cond_5
    iget-object v1, p0, Lbike/smarthalo/app/activities/MainActivity;->alarmViewFragment:Llayout/AlarmViewFragment;

    if-eqz p2, :cond_6

    const v2, 0x7f080063

    .line 636
    invoke-virtual {p2, v2}, Lcom/google/android/material/tabs/TabLayout$Tab;->setIcon(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 638
    :cond_6
    iget-object p2, p0, Lbike/smarthalo/app/activities/MainActivity;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    const-string v2, "AlarmMain"

    invoke-interface {p2, v2}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendScreenViewEvent(Ljava/lang/String;)V

    goto :goto_1

    .line 618
    :pswitch_3
    iget-object v1, p0, Lbike/smarthalo/app/activities/MainActivity;->lightViewFragment:Llayout/LightViewFragment;

    if-nez v1, :cond_7

    .line 619
    new-instance v1, Llayout/LightViewFragment;

    invoke-direct {v1}, Llayout/LightViewFragment;-><init>()V

    iput-object v1, p0, Lbike/smarthalo/app/activities/MainActivity;->lightViewFragment:Llayout/LightViewFragment;

    .line 620
    iget-object v1, p0, Lbike/smarthalo/app/activities/MainActivity;->lightViewFragment:Llayout/LightViewFragment;

    iget-object v2, p0, Lbike/smarthalo/app/activities/MainActivity;->reactiveStorageManager:Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;

    iget-object v3, p0, Lbike/smarthalo/app/activities/MainActivity;->onHelpCardVisibilityChanged:Llayout/statusBar/StatusBarLayout$IOnHelpCardVisibilityChanged;

    invoke-virtual {v1, v2, v3}, Llayout/LightViewFragment;->inject(Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;Llayout/statusBar/StatusBarLayout$IOnHelpCardVisibilityChanged;)V

    .line 622
    :cond_7
    iget-object v1, p0, Lbike/smarthalo/app/activities/MainActivity;->lightViewFragment:Llayout/LightViewFragment;

    if-eqz p2, :cond_8

    const v2, 0x7f0801c8

    .line 624
    invoke-virtual {p2, v2}, Lcom/google/android/material/tabs/TabLayout$Tab;->setIcon(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 626
    :cond_8
    iget-object p2, p0, Lbike/smarthalo/app/activities/MainActivity;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    const-string v2, "LightMain"

    invoke-interface {p2, v2}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendScreenViewEvent(Ljava/lang/String;)V

    goto :goto_1

    .line 605
    :pswitch_4
    iget-object v1, p0, Lbike/smarthalo/app/activities/MainActivity;->mapViewFragment:Llayout/MapViewFragment;

    if-nez v1, :cond_9

    .line 606
    new-instance v1, Llayout/MapViewFragment;

    invoke-direct {v1}, Llayout/MapViewFragment;-><init>()V

    iput-object v1, p0, Lbike/smarthalo/app/activities/MainActivity;->mapViewFragment:Llayout/MapViewFragment;

    .line 607
    iget-object v1, p0, Lbike/smarthalo/app/activities/MainActivity;->mapViewFragment:Llayout/MapViewFragment;

    iget-object v2, p0, Lbike/smarthalo/app/activities/MainActivity;->favouritesController:Lbike/smarthalo/app/coordinators/FavouritesController;

    iget-object v3, p0, Lbike/smarthalo/app/activities/MainActivity;->onHelpCardVisibilityChanged:Llayout/statusBar/StatusBarLayout$IOnHelpCardVisibilityChanged;

    invoke-virtual {v1, p0, v2, v3}, Llayout/MapViewFragment;->inject(Llayout/ViewContracts/MapConsumerContract;Lbike/smarthalo/app/coordinators/FavouritesController;Llayout/statusBar/StatusBarLayout$IOnHelpCardVisibilityChanged;)V

    .line 609
    :cond_9
    invoke-direct {p0}, Lbike/smarthalo/app/activities/MainActivity;->recoverSearchFragment()V

    .line 611
    iget-object v1, p0, Lbike/smarthalo/app/activities/MainActivity;->mapViewFragment:Llayout/MapViewFragment;

    if-eqz p2, :cond_a

    const v2, 0x7f0801d3

    .line 613
    invoke-virtual {p2, v2}, Lcom/google/android/material/tabs/TabLayout$Tab;->setIcon(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 615
    :cond_a
    iget-object p2, p0, Lbike/smarthalo/app/activities/MainActivity;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    const-string v2, "NavMain"

    invoke-interface {p2, v2}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendScreenViewEvent(Ljava/lang/String;)V

    :cond_b
    :goto_1
    if-nez v1, :cond_c

    return-void

    .line 670
    :cond_c
    invoke-virtual {p0}, Lbike/smarthalo/app/activities/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    .line 671
    iget-object v2, p0, Lbike/smarthalo/app/activities/MainActivity;->mapDropMenuFragment:Llayout/MapDropMenuFragment;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Llayout/MapDropMenuFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lbike/smarthalo/app/activities/MainActivity;->mapDropMenuFragment:Llayout/MapDropMenuFragment;

    invoke-virtual {v2}, Llayout/MapDropMenuFragment;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "map"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 672
    iget-object v2, p0, Lbike/smarthalo/app/activities/MainActivity;->mapDropMenuFragment:Llayout/MapDropMenuFragment;

    invoke-virtual {p2, v2}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 675
    :cond_d
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 677
    invoke-direct {p0, p1}, Lbike/smarthalo/app/activities/MainActivity;->cleanFragmentView(Ljava/lang/String;)V

    .line 679
    invoke-virtual {p0}, Lbike/smarthalo/app/activities/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    .line 681
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 682
    invoke-virtual {p2, v1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_2

    :cond_e
    const v2, 0x7f0a010c

    .line 684
    invoke-virtual {p2, v2, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 687
    :goto_2
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 689
    invoke-virtual {p0}, Lbike/smarthalo/app/activities/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    if-eqz v0, :cond_f

    .line 691
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_f

    .line 692
    invoke-direct {p0, v4, v0}, Lbike/smarthalo/app/activities/MainActivity;->hideHelpCard(ZLjava/lang/String;)V

    .line 693
    iget-object p1, p0, Lbike/smarthalo/app/activities/MainActivity;->mainToolbarLayout:Llayout/MainToolbarLayout;

    invoke-virtual {p1, v4, v4}, Llayout/MainToolbarLayout;->setOverlayVisibility(ZZ)V

    :cond_f
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x32815a18 -> :sswitch_4
        0x1a55c -> :sswitch_3
        0x5897a51 -> :sswitch_2
        0x6233516 -> :sswitch_1
        0x553972de -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public hideMapLoadingDialog()V
    .locals 1

    .line 423
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->mapLoadingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->mapLoadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    const/4 v0, 0x0

    .line 425
    iput-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->mapLoadingDialog:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method

.method public loadNewFeaturePage(Ljava/lang/String;)V
    .locals 2

    .line 809
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->newFeaturesWebView:Landroid/webkit/WebView;

    new-instance v1, Lbike/smarthalo/app/activities/MainActivity$5;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/activities/MainActivity$5;-><init>(Lbike/smarthalo/app/activities/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 827
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->newFeaturesWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 828
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->newFeaturesWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 829
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->newFeaturesWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 324
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->webViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 325
    invoke-virtual {p0, v0}, Lbike/smarthalo/app/activities/MainActivity;->toggleNewFeaturesPageVisibility(Z)V

    goto/16 :goto_0

    .line 326
    :cond_0
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->searchFragment:Llayout/SearchFragment;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Llayout/SearchFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->searchFragment:Llayout/SearchFragment;

    invoke-virtual {v0}, Llayout/SearchFragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_3

    .line 327
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->searchFragment:Llayout/SearchFragment;

    invoke-virtual {v0}, Llayout/SearchFragment;->getCurrentQuery()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->searchFragment:Llayout/SearchFragment;

    invoke-virtual {v0}, Llayout/SearchFragment;->getCurrentQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 328
    :cond_1
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->mainToolbarLayout:Llayout/MainToolbarLayout;

    const-string v1, ""

    invoke-virtual {v0, v1}, Llayout/MainToolbarLayout;->setSearchToolBarVisuals(Ljava/lang/String;)V

    .line 330
    :cond_2
    invoke-direct {p0}, Lbike/smarthalo/app/activities/MainActivity;->hideSearchFragment()V

    goto :goto_0

    .line 331
    :cond_3
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->rightDrawerLayout:Llayout/RightDrawerLayout;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Llayout/RightDrawerLayout;->isDrawerOpen()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 332
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->rightDrawerLayout:Llayout/RightDrawerLayout;

    invoke-virtual {v0}, Llayout/RightDrawerLayout;->close()V

    goto :goto_0

    .line 333
    :cond_4
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->leftDrawerLayout:Llayout/LeftDrawerLayout;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Llayout/LeftDrawerLayout;->isDrawerOpen()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 334
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->leftDrawerLayout:Llayout/LeftDrawerLayout;

    invoke-virtual {v0}, Llayout/LeftDrawerLayout;->close()V

    goto :goto_0

    .line 335
    :cond_5
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->mapDropMenuFragment:Llayout/MapDropMenuFragment;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Llayout/MapDropMenuFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 336
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->mapDropMenuFragment:Llayout/MapDropMenuFragment;

    invoke-virtual {v0}, Llayout/MapDropMenuFragment;->closeSelf()V

    goto :goto_0

    .line 337
    :cond_6
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->mapViewFragment:Llayout/MapViewFragment;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Llayout/MapViewFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->mapViewFragment:Llayout/MapViewFragment;

    invoke-virtual {v0}, Llayout/MapViewFragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_7

    .line 338
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->mapViewFragment:Llayout/MapViewFragment;

    invoke-virtual {v0}, Llayout/MapViewFragment;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_8

    .line 340
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    goto :goto_0

    .line 343
    :cond_7
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    :cond_8
    :goto_0
    return-void
.end method

.method public onClickConnectionStatusView()V
    .locals 1

    .line 440
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->rightDrawerLayout:Llayout/RightDrawerLayout;

    invoke-virtual {v0}, Llayout/RightDrawerLayout;->open()V

    const-string v0, "notification_drawer_opened"

    .line 441
    invoke-static {p0, v0}, Lbike/smarthalo/app/analytics/AnalyticsHelper;->sendAnalyticsEvent(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onClickLeftDrawerIcon()V
    .locals 1

    .line 495
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->leftDrawerLayout:Llayout/LeftDrawerLayout;

    invoke-virtual {v0}, Llayout/LeftDrawerLayout;->open()V

    return-void
.end method

.method public onClickMapOverlay()V
    .locals 2

    .line 402
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->mapDropMenuInterface:Llayout/DropMenuFragment$DropMenuInterface;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Llayout/DropMenuFragment$DropMenuInterface;->onDropMenuRequestClose(Z)V

    return-void
.end method

.method public onClickOverlay()V
    .locals 1

    const/4 v0, 0x1

    .line 446
    invoke-direct {p0, v0}, Lbike/smarthalo/app/activities/MainActivity;->hideHelpCard(Z)V

    return-void
.end method

.method public onClickSearchBar()V
    .locals 4

    .line 528
    invoke-static {p0}, Lbike/smarthalo/app/helpers/SHPermissionsHelper;->checkBlePermissions(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 529
    invoke-static {p0}, Lbike/smarthalo/app/helpers/SHDialogHelper;->showNoLocationToast(Landroid/content/Context;)V

    return-void

    .line 533
    :cond_0
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->searchFragment:Llayout/SearchFragment;

    if-nez v0, :cond_1

    .line 534
    new-instance v0, Llayout/SearchFragment;

    invoke-direct {v0}, Llayout/SearchFragment;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->searchFragment:Llayout/SearchFragment;

    .line 537
    :cond_1
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->mapDropMenuFragment:Llayout/MapDropMenuFragment;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Llayout/MapDropMenuFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 538
    invoke-virtual {p0}, Lbike/smarthalo/app/activities/MainActivity;->onClickSettingsIcon()V

    .line 541
    :cond_2
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->searchFragment:Llayout/SearchFragment;

    iget-object v1, p0, Lbike/smarthalo/app/activities/MainActivity;->favouritesController:Lbike/smarthalo/app/coordinators/FavouritesController;

    invoke-virtual {v0, v1}, Llayout/SearchFragment;->setFavouritesController(Lbike/smarthalo/app/coordinators/FavouritesController;)V

    .line 542
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->searchFragment:Llayout/SearchFragment;

    invoke-virtual {v0, p0}, Llayout/SearchFragment;->setConsumer(Llayout/ViewContracts/SearchConsumerContract;)V

    .line 544
    invoke-virtual {p0}, Lbike/smarthalo/app/activities/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 546
    iget-object v1, p0, Lbike/smarthalo/app/activities/MainActivity;->mainToolbarLayout:Llayout/MainToolbarLayout;

    invoke-virtual {v1}, Llayout/MainToolbarLayout;->getSearchBarText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lbike/smarthalo/app/activities/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f110352

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 548
    iget-object v2, p0, Lbike/smarthalo/app/activities/MainActivity;->searchFragment:Llayout/SearchFragment;

    invoke-virtual {v2}, Llayout/SearchFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    .line 550
    iget-object v1, p0, Lbike/smarthalo/app/activities/MainActivity;->searchFragment:Llayout/SearchFragment;

    invoke-virtual {v1}, Llayout/SearchFragment;->resetSearchResults()V

    .line 552
    :cond_3
    iget-object v1, p0, Lbike/smarthalo/app/activities/MainActivity;->searchFragment:Llayout/SearchFragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    .line 554
    :cond_4
    iget-object v2, p0, Lbike/smarthalo/app/activities/MainActivity;->searchFragment:Llayout/SearchFragment;

    invoke-static {v1}, Llayout/SearchFragment;->getClearSearchBundle(Z)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v2, v1}, Llayout/SearchFragment;->setArguments(Landroid/os/Bundle;)V

    const v1, 0x7f0a046a

    .line 555
    iget-object v2, p0, Lbike/smarthalo/app/activities/MainActivity;->searchFragment:Llayout/SearchFragment;

    const-string v3, "search"

    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    :goto_0
    const/4 v1, 0x0

    .line 558
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 559
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public onClickSettingsIcon()V
    .locals 5

    const-string v0, "map"

    .line 500
    iget-object v1, p0, Lbike/smarthalo/app/activities/MainActivity;->currentSectionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 501
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->mapDropMenuFragment:Llayout/MapDropMenuFragment;

    if-nez v0, :cond_0

    .line 502
    new-instance v0, Llayout/MapDropMenuFragment;

    invoke-direct {v0}, Llayout/MapDropMenuFragment;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->mapDropMenuFragment:Llayout/MapDropMenuFragment;

    .line 503
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->mapDropMenuFragment:Llayout/MapDropMenuFragment;

    iget-object v1, p0, Lbike/smarthalo/app/activities/MainActivity;->reactiveStorageManager:Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;

    iget-object v2, p0, Lbike/smarthalo/app/activities/MainActivity;->mapDropMenuInterface:Llayout/DropMenuFragment$DropMenuInterface;

    iget-object v3, p0, Lbike/smarthalo/app/activities/MainActivity;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    invoke-virtual {v0, v1, v2, v3}, Llayout/MapDropMenuFragment;->inject(Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;Llayout/DropMenuFragment$DropMenuInterface;Lbike/smarthalo/app/analytics/AnalyticsContract;)V

    .line 506
    :cond_0
    invoke-virtual {p0}, Lbike/smarthalo/app/activities/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f01003f

    const v2, 0x7f010040

    const/high16 v3, 0x10a0000

    const v4, 0x10a0001

    .line 507
    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(IIII)Landroidx/fragment/app/FragmentTransaction;

    .line 509
    iget-object v1, p0, Lbike/smarthalo/app/activities/MainActivity;->mapDropMenuFragment:Llayout/MapDropMenuFragment;

    invoke-virtual {v1}, Llayout/MapDropMenuFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 510
    iget-object v1, p0, Lbike/smarthalo/app/activities/MainActivity;->mapViewFragment:Llayout/MapViewFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Llayout/MapViewFragment;->showMapOverlay(Z)V

    .line 511
    iget-object v1, p0, Lbike/smarthalo/app/activities/MainActivity;->mapDropMenuFragment:Llayout/MapDropMenuFragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    .line 512
    :cond_1
    iget-object v1, p0, Lbike/smarthalo/app/activities/MainActivity;->mapDropMenuFragment:Llayout/MapDropMenuFragment;

    invoke-virtual {v1}, Llayout/MapDropMenuFragment;->isAdded()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 513
    iget-object v1, p0, Lbike/smarthalo/app/activities/MainActivity;->mapViewFragment:Llayout/MapViewFragment;

    invoke-virtual {v1, v2}, Llayout/MapViewFragment;->showMapOverlay(Z)V

    .line 514
    iget-object v1, p0, Lbike/smarthalo/app/activities/MainActivity;->mapDropMenuFragment:Llayout/MapDropMenuFragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 515
    iget-object v1, p0, Lbike/smarthalo/app/activities/MainActivity;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    const-string v2, "NavSettings"

    invoke-interface {v1, v2}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendScreenViewEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 517
    :cond_2
    iget-object v1, p0, Lbike/smarthalo/app/activities/MainActivity;->mapViewFragment:Llayout/MapViewFragment;

    invoke-virtual {v1, v2}, Llayout/MapViewFragment;->showMapOverlay(Z)V

    const v1, 0x7f0a010c

    .line 518
    iget-object v2, p0, Lbike/smarthalo/app/activities/MainActivity;->mapDropMenuFragment:Llayout/MapDropMenuFragment;

    const-string v3, "nav_settings"

    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 519
    iget-object v1, p0, Lbike/smarthalo/app/activities/MainActivity;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    const-string v2, "NavSettings"

    invoke-interface {v1, v2}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendScreenViewEvent(Ljava/lang/String;)V

    .line 522
    :goto_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_3
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 127
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d0026

    .line 128
    invoke-virtual {p0, v0}, Lbike/smarthalo/app/activities/MainActivity;->setContentView(I)V

    .line 130
    invoke-direct {p0}, Lbike/smarthalo/app/activities/MainActivity;->initializeDependencies()V

    .line 132
    invoke-direct {p0, p1}, Lbike/smarthalo/app/activities/MainActivity;->recoverChildFragments(Landroid/os/Bundle;)V

    .line 133
    invoke-direct {p0}, Lbike/smarthalo/app/activities/MainActivity;->recoverChildrenDependencies()V

    .line 135
    invoke-direct {p0}, Lbike/smarthalo/app/activities/MainActivity;->initializeView()V

    .line 136
    invoke-direct {p0}, Lbike/smarthalo/app/activities/MainActivity;->initializeSubscriptions()V

    return-void
.end method

.method public onDFUStateChanged(Lbike/smarthalo/app/models/dfu/DfuState;Z)V
    .locals 7

    .line 835
    sget-object v0, Lbike/smarthalo/app/activities/MainActivity$8;->$SwitchMap$bike$smarthalo$app$models$dfu$DfuAvailability:[I

    iget-object v1, p1, Lbike/smarthalo/app/models/dfu/DfuState;->availability:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    invoke-virtual {v1}, Lbike/smarthalo/app/models/dfu/DfuAvailability;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 851
    :pswitch_0
    sget-object v0, Lbike/smarthalo/app/models/dfu/DfuAvailability;->RequiredGolden:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    invoke-direct {p0, v0}, Lbike/smarthalo/app/activities/MainActivity;->launchDFU(Lbike/smarthalo/app/models/dfu/DfuAvailability;)V

    goto :goto_0

    .line 845
    :pswitch_1
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->rightDrawerLayout:Llayout/RightDrawerLayout;

    invoke-virtual {v0}, Llayout/RightDrawerLayout;->removeFirmwareNotification()V

    .line 846
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->rightDrawerLayout:Llayout/RightDrawerLayout;

    iget v1, p1, Lbike/smarthalo/app/models/dfu/DfuState;->stepProgress:I

    iget-object v2, p1, Lbike/smarthalo/app/models/dfu/DfuState;->firmwareInfo:Lbike/smarthalo/app/models/LatestFirmwareInfo;

    iget-object v2, v2, Lbike/smarthalo/app/models/LatestFirmwareInfo;->firmwareVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Llayout/RightDrawerLayout;->setDfuTransferNotification(ILjava/lang/String;)V

    goto :goto_0

    .line 841
    :pswitch_2
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->rightDrawerLayout:Llayout/RightDrawerLayout;

    invoke-virtual {v0}, Llayout/RightDrawerLayout;->removeDfuTransferNotification()V

    .line 842
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->rightDrawerLayout:Llayout/RightDrawerLayout;

    invoke-virtual {v0}, Llayout/RightDrawerLayout;->setFirmwareAvailable()V

    goto :goto_0

    .line 837
    :pswitch_3
    iget-object p1, p0, Lbike/smarthalo/app/activities/MainActivity;->rightDrawerLayout:Llayout/RightDrawerLayout;

    invoke-virtual {p1}, Llayout/RightDrawerLayout;->removeFirmwareNotification()V

    .line 838
    iget-object p1, p0, Lbike/smarthalo/app/activities/MainActivity;->rightDrawerLayout:Llayout/RightDrawerLayout;

    invoke-virtual {p1}, Llayout/RightDrawerLayout;->removeDfuTransferNotification()V

    return-void

    :goto_0
    if-eqz p2, :cond_0

    const v1, 0x7f1100ec

    const v2, 0x7f1100ea

    const v3, 0x7f1100ed

    const v4, 0x7f1100eb

    .line 856
    new-instance v5, Lbike/smarthalo/app/activities/-$$Lambda$MainActivity$XDMF900794w1IeaHWPqF5NTqAyc;

    invoke-direct {v5, p0, p1}, Lbike/smarthalo/app/activities/-$$Lambda$MainActivity$XDMF900794w1IeaHWPqF5NTqAyc;-><init>(Lbike/smarthalo/app/activities/MainActivity;Lbike/smarthalo/app/models/dfu/DfuState;)V

    new-instance v6, Lbike/smarthalo/app/activities/-$$Lambda$MainActivity$RbLRVLT2yhKhd14C0Drjh-9TVas;

    invoke-direct {v6, p0}, Lbike/smarthalo/app/activities/-$$Lambda$MainActivity$RbLRVLT2yhKhd14C0Drjh-9TVas;-><init>(Lbike/smarthalo/app/activities/MainActivity;)V

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lbike/smarthalo/app/helpers/SHDialogHelper;->createConfirmationDialog(Landroid/content/Context;IIIILbike/smarthalo/app/helpers/SHDialogHelper$SHDialogOnClick;Lbike/smarthalo/app/helpers/SHDialogHelper$SHDialogOnClick;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/activities/MainActivity;->firmwareAlertDialog:Landroidx/appcompat/app/AlertDialog;

    .line 866
    iget-object p1, p0, Lbike/smarthalo/app/activities/MainActivity;->firmwareAlertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 1

    .line 312
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->rightDrawerLayout:Llayout/RightDrawerLayout;

    invoke-virtual {v0, p0}, Llayout/RightDrawerLayout;->onActivityDestroyed(Landroid/app/Activity;)V

    .line 313
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->leftDrawerLayout:Llayout/LeftDrawerLayout;

    invoke-virtual {v0, p0}, Llayout/LeftDrawerLayout;->onActivityDestroyed(Landroid/app/Activity;)V

    .line 315
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->favouritesController:Lbike/smarthalo/app/coordinators/FavouritesController;

    if-eqz v0, :cond_0

    .line 316
    invoke-virtual {v0}, Lbike/smarthalo/app/coordinators/FavouritesController;->disposeSubscriptions()V

    .line 319
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onGPXListSelected()V
    .locals 1

    .line 415
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->mapViewFragment:Llayout/MapViewFragment;

    if-eqz v0, :cond_0

    .line 416
    invoke-direct {p0}, Lbike/smarthalo/app/activities/MainActivity;->hideSearchFragment()V

    .line 417
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->mapViewFragment:Llayout/MapViewFragment;

    invoke-virtual {v0}, Llayout/MapViewFragment;->onGPXButtonSelected()V

    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 255
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "REQUEST_CODE_EXTRA"

    const/4 v1, 0x0

    .line 257
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 259
    :pswitch_0
    new-instance p1, Lbike/smarthalo/app/activities/-$$Lambda$MainActivity$of34clIQz5Pr32YNIlgm2AtDTdM;

    invoke-direct {p1, p0}, Lbike/smarthalo/app/activities/-$$Lambda$MainActivity$of34clIQz5Pr32YNIlgm2AtDTdM;-><init>(Lbike/smarthalo/app/activities/MainActivity;)V

    new-instance v0, Lbike/smarthalo/app/activities/-$$Lambda$MainActivity$vzt1PU7cGx680xvItAbQBcdg1ls;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/activities/-$$Lambda$MainActivity$vzt1PU7cGx680xvItAbQBcdg1ls;-><init>(Lbike/smarthalo/app/activities/MainActivity;)V

    invoke-static {p0, p1, v0}, Llayout/customControls/FitnessOffNotificationAlertDialog;->show(Landroid/content/Context;Llayout/customControls/BaseAlertDialog$ClickContract;Llayout/customControls/BaseAlertDialog$ClickContract;)V

    .line 269
    :pswitch_1
    invoke-virtual {p0}, Lbike/smarthalo/app/activities/MainActivity;->showPowerSavingPrompt()V

    .line 271
    :pswitch_2
    invoke-virtual {p0}, Lbike/smarthalo/app/activities/MainActivity;->showLocationOffPrompt()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .line 292
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 294
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->reactiveStorageManager:Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;

    invoke-interface {v0}, Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;->onDispose()V

    .line 296
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->connectionStatusLayout:Llayout/ConnectionStatusLayout;

    invoke-virtual {v0, p0}, Llayout/ConnectionStatusLayout;->onActivityPaused(Landroid/app/Activity;)V

    .line 297
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->rightDrawerLayout:Llayout/RightDrawerLayout;

    invoke-virtual {v0, p0}, Llayout/RightDrawerLayout;->onActivityPaused(Landroid/app/Activity;)V

    .line 298
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->leftDrawerLayout:Llayout/LeftDrawerLayout;

    invoke-virtual {v0, p0}, Llayout/LeftDrawerLayout;->onActivityPaused(Landroid/app/Activity;)V

    .line 300
    invoke-direct {p0}, Lbike/smarthalo/app/activities/MainActivity;->dismissFirmwareAlertDialog()V

    .line 301
    invoke-virtual {p0}, Lbike/smarthalo/app/activities/MainActivity;->hideMapLoadingDialog()V

    .line 303
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->mapDropMenuFragment:Llayout/MapDropMenuFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Llayout/MapDropMenuFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {p0}, Lbike/smarthalo/app/activities/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 305
    iget-object v1, p0, Lbike/smarthalo/app/activities/MainActivity;->mapDropMenuFragment:Llayout/MapDropMenuFragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 306
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method

.method public onPostResume()V
    .locals 2

    .line 212
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPostResume()V

    const v0, 0x7f0a00aa

    .line 213
    invoke-virtual {p0, v0}, Lbike/smarthalo/app/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    .line 214
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    const-string v0, "map"

    .line 232
    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/MainActivity;->setView(Ljava/lang/String;Lcom/google/android/material/tabs/TabLayout$Tab;)V

    goto :goto_0

    :pswitch_0
    const-string v0, "assistant"

    .line 229
    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/MainActivity;->setView(Ljava/lang/String;Lcom/google/android/material/tabs/TabLayout$Tab;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "fitness"

    .line 226
    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/MainActivity;->setView(Ljava/lang/String;Lcom/google/android/material/tabs/TabLayout$Tab;)V

    goto :goto_0

    :pswitch_2
    const-string v0, "alarm"

    .line 223
    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/MainActivity;->setView(Ljava/lang/String;Lcom/google/android/material/tabs/TabLayout$Tab;)V

    goto :goto_0

    :pswitch_3
    const-string v0, "light"

    .line 220
    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/MainActivity;->setView(Ljava/lang/String;Lcom/google/android/material/tabs/TabLayout$Tab;)V

    goto :goto_0

    :pswitch_4
    const-string v0, "map"

    .line 217
    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/activities/MainActivity;->setView(Ljava/lang/String;Lcom/google/android/material/tabs/TabLayout$Tab;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 572
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 p2, 0x63

    if-eq p1, p2, :cond_1

    const/16 p2, 0x7c

    if-eq p1, p2, :cond_0

    return-void

    .line 585
    :cond_0
    iget-object p1, p0, Lbike/smarthalo/app/activities/MainActivity;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/MainPresenterContract$Presenter;

    invoke-static {p3}, Lbike/smarthalo/app/helpers/SHPermissionsHelper;->hasAcceptedAllPermissions([I)Z

    move-result p2

    invoke-interface {p1, p2}, Lbike/smarthalo/app/presenters/presenterContracts/MainPresenterContract$Presenter;->setIsAssistingWithCalls(Z)V

    return-void

    .line 575
    :cond_1
    array-length p1, p3

    if-lez p1, :cond_2

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_2

    .line 577
    iget-object p1, p0, Lbike/smarthalo/app/activities/MainActivity;->mapViewFragment:Llayout/MapViewFragment;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Llayout/MapViewFragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 578
    iget-object p1, p0, Lbike/smarthalo/app/activities/MainActivity;->mapViewFragment:Llayout/MapViewFragment;

    invoke-virtual {p1}, Llayout/MapViewFragment;->onUserHasAcceptedLocationPermissions()V

    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 239
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 241
    invoke-static {p0}, Lbike/smarthalo/sdk/SHSdkHelpers;->isBluetoothEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lbike/smarthalo/app/activities/MainActivity;->hasAskedBluetoothPermissions:Z

    if-nez v0, :cond_0

    .line 242
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0, v0}, Lbike/smarthalo/app/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    .line 244
    iput-boolean v0, p0, Lbike/smarthalo/app/activities/MainActivity;->hasAskedBluetoothPermissions:Z

    .line 246
    :cond_0
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->reactiveStorageManager:Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;

    invoke-interface {v0}, Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;->onStart()V

    .line 248
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->rightDrawerLayout:Llayout/RightDrawerLayout;

    invoke-virtual {v0, p0}, Llayout/RightDrawerLayout;->onActivityResumed(Landroid/app/Activity;)V

    .line 249
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->leftDrawerLayout:Llayout/LeftDrawerLayout;

    invoke-virtual {v0, p0}, Llayout/LeftDrawerLayout;->onActivityResumed(Landroid/app/Activity;)V

    .line 250
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->connectionStatusLayout:Llayout/ConnectionStatusLayout;

    invoke-virtual {v0, p0}, Llayout/ConnectionStatusLayout;->onActivityResumed(Landroid/app/Activity;)V

    return-void
.end method

.method public onSearchResultSelected(Lbike/smarthalo/app/models/SHLocation;)V
    .locals 2

    .line 431
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->mapViewFragment:Llayout/MapViewFragment;

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->mainToolbarLayout:Llayout/MainToolbarLayout;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHLocation;->realmGet$title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Llayout/MainToolbarLayout;->setSearchToolBarVisuals(Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->mapViewFragment:Llayout/MapViewFragment;

    invoke-virtual {v0, p1}, Llayout/MapViewFragment;->onSearchResultItemClick(Lbike/smarthalo/app/models/SHLocation;)V

    .line 434
    invoke-direct {p0}, Lbike/smarthalo/app/activities/MainActivity;->hideSearchFragment()V

    :cond_0
    return-void
.end method

.method public setUpTopBarNavigationVisuals(Z)V
    .locals 2

    .line 802
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->currentSectionName:Ljava/lang/String;

    const-string v1, "map"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 803
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->mainToolbarLayout:Llayout/MainToolbarLayout;

    const-string v1, "map"

    invoke-virtual {v0, v1, p1}, Llayout/MainToolbarLayout;->setSection(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public showLocationOffPrompt()V
    .locals 2

    .line 284
    new-instance v0, Lbike/smarthalo/app/activities/-$$Lambda$MainActivity$NtcLpMMckVOEaC6CGkNTJqm7lDw;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/activities/-$$Lambda$MainActivity$NtcLpMMckVOEaC6CGkNTJqm7lDw;-><init>(Lbike/smarthalo/app/activities/MainActivity;)V

    new-instance v1, Lbike/smarthalo/app/activities/-$$Lambda$MainActivity$v8AC81ms3AJ7de2zpURNM5sa9h4;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/activities/-$$Lambda$MainActivity$v8AC81ms3AJ7de2zpURNM5sa9h4;-><init>(Lbike/smarthalo/app/activities/MainActivity;)V

    invoke-static {p0, v0, v1}, Llayout/customControls/LocationOffNotificationAlertDialog;->show(Landroid/content/Context;Llayout/customControls/BaseAlertDialog$ClickContract;Llayout/customControls/BaseAlertDialog$ClickContract;)V

    return-void
.end method

.method public showMapLoadingDialog(I)V
    .locals 1

    .line 407
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity;->mapLoadingDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    const/16 v0, 0x4e20

    .line 408
    invoke-static {p0, p1, v0}, Lbike/smarthalo/app/helpers/SHDialogHelper;->showLoading(Landroid/app/Activity;II)Landroid/app/ProgressDialog;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/activities/MainActivity;->mapLoadingDialog:Landroid/app/ProgressDialog;

    .line 409
    iget-object p1, p0, Lbike/smarthalo/app/activities/MainActivity;->mapLoadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    :cond_0
    return-void
.end method

.method public showPowerSavingPrompt()V
    .locals 2

    .line 276
    new-instance v0, Lbike/smarthalo/app/activities/-$$Lambda$MainActivity$GPIAmggBcmHQQYwheNPPDkWO13s;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/activities/-$$Lambda$MainActivity$GPIAmggBcmHQQYwheNPPDkWO13s;-><init>(Lbike/smarthalo/app/activities/MainActivity;)V

    new-instance v1, Lbike/smarthalo/app/activities/-$$Lambda$MainActivity$HRGvVYM_WkrPWZqNUHronUwRedQ;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/activities/-$$Lambda$MainActivity$HRGvVYM_WkrPWZqNUHronUwRedQ;-><init>(Lbike/smarthalo/app/activities/MainActivity;)V

    invoke-static {p0, v0, v1}, Llayout/customControls/PowerSavingOnNotificationAlertDialog;->show(Landroid/content/Context;Llayout/customControls/BaseAlertDialog$ClickContract;Llayout/customControls/BaseAlertDialog$ClickContract;)V

    return-void
.end method

.method public toggleNewFeaturesPageVisibility(Z)V
    .locals 4

    if-eqz p1, :cond_0

    const v0, 0x7f010025

    .line 882
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const v1, 0x7f01000c

    .line 883
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 884
    iget-object v2, p0, Lbike/smarthalo/app/activities/MainActivity;->rightDrawerLayout:Llayout/RightDrawerLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Llayout/RightDrawerLayout;->toggleDrawerLock(Z)V

    .line 885
    iget-object v2, p0, Lbike/smarthalo/app/activities/MainActivity;->leftDrawerLayout:Llayout/LeftDrawerLayout;

    invoke-virtual {v2, v3}, Llayout/LeftDrawerLayout;->toggleDrawerLock(Z)V

    .line 886
    iget-object v2, p0, Lbike/smarthalo/app/activities/MainActivity;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    const-string v3, "UserFeatureShowcase"

    invoke-interface {v2, v3}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendScreenViewEvent(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const v0, 0x7f010026

    .line 888
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const v1, 0x7f01000d

    .line 889
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 890
    iget-object v2, p0, Lbike/smarthalo/app/activities/MainActivity;->rightDrawerLayout:Llayout/RightDrawerLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Llayout/RightDrawerLayout;->toggleDrawerLock(Z)V

    .line 891
    iget-object v2, p0, Lbike/smarthalo/app/activities/MainActivity;->leftDrawerLayout:Llayout/LeftDrawerLayout;

    invoke-virtual {v2, v3}, Llayout/LeftDrawerLayout;->toggleDrawerLock(Z)V

    .line 892
    iget-object v2, p0, Lbike/smarthalo/app/activities/MainActivity;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/MainPresenterContract$Presenter;

    invoke-interface {v2}, Lbike/smarthalo/app/presenters/presenterContracts/MainPresenterContract$Presenter;->setHasSeenNewFeaturesPage()V

    .line 895
    :goto_0
    new-instance v2, Lbike/smarthalo/app/activities/MainActivity$6;

    invoke-direct {v2, p0, p1}, Lbike/smarthalo/app/activities/MainActivity$6;-><init>(Lbike/smarthalo/app/activities/MainActivity;Z)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 916
    new-instance v2, Lbike/smarthalo/app/activities/MainActivity$7;

    invoke-direct {v2, p0, p1}, Lbike/smarthalo/app/activities/MainActivity$7;-><init>(Lbike/smarthalo/app/activities/MainActivity;Z)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 937
    iget-object p1, p0, Lbike/smarthalo/app/activities/MainActivity;->grayOverlay:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 938
    iget-object p1, p0, Lbike/smarthalo/app/activities/MainActivity;->webViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
