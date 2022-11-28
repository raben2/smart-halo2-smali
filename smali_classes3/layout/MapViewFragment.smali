.class public Llayout/MapViewFragment;
.super Llayout/StatusBarFragment;
.source "MapViewFragment.java"

# interfaces
.implements Llayout/StatusBarFragment$IHelpCardListener;
.implements Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$View;
.implements Llayout/mapAdapter/MapProviderContract$Consumer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llayout/MapViewFragment$AnimationListener;
    }
.end annotation


# static fields
.field public static final GPX_FILE_PICKER_RESULT_CODE:I = 0xcd

.field public static final TAG:Ljava/lang/String; = "MapViewFragment"


# instance fields
.field private alternateRoutesAdapter:Llayout/adapters/AlternateRoutesControlAdapter;

.field private alternateRoutesControl:Landroidx/recyclerview/widget/RecyclerView;

.field analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field appStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private bikeLocation:Lbike/smarthalo/app/models/SHLocation;

.field private bottomDrawer:Landroid/widget/LinearLayout;

.field private clearRoute:Landroid/widget/Button;

.field private compassPathIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private completedPathId:Ljava/lang/String;

.field private currentProperty:Lbike/smarthalo/app/models/PathProperty;

.field private destination_panel:Landroid/widget/LinearLayout;

.field private direction_panel:Landroid/widget/LinearLayout;

.field private favouritesController:Lbike/smarthalo/app/coordinators/FavouritesController;

.field private findBike:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field private findMe:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field geocodingManager:Lbike/smarthalo/app/managers/contracts/GeocodingManagerContract;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private gestureDetector:Landroid/view/GestureDetector;

.field private hasResumed:Z

.field isNavigationBarVisible:Ljava/lang/Boolean;

.field isNewPath:Z

.field private mainToolbarLayout:Llayout/MainToolbarLayout;

.field private mapConsumerContract:Llayout/ViewContracts/MapConsumerContract;

.field private mapControlsOverlay:Landroid/widget/LinearLayout;

.field private mapProvider:Llayout/mapAdapter/MapProviderContract$Provider;

.field private mapView:Llayout/mapAdapter/SHGoogleMapsMap;

.field private onTouchOverlayListener:Landroid/view/View$OnTouchListener;

.field private pathIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pathProperty:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field private pathTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;",
            ">;"
        }
    .end annotation
.end field

.field private presenter:Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$Presenter;

.field private rootView:Landroid/view/View;

.field private simpleOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

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

    .line 149
    invoke-direct {p0}, Llayout/StatusBarFragment;-><init>()V

    const/4 v0, 0x0

    .line 100
    iput-boolean v0, p0, Llayout/MapViewFragment;->hasResumed:Z

    .line 110
    sget-object v0, Lbike/smarthalo/app/models/PathProperty;->Default:Lbike/smarthalo/app/models/PathProperty;

    iput-object v0, p0, Llayout/MapViewFragment;->currentProperty:Lbike/smarthalo/app/models/PathProperty;

    const-string v0, ""

    .line 123
    iput-object v0, p0, Llayout/MapViewFragment;->completedPathId:Ljava/lang/String;

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llayout/MapViewFragment;->pathIds:Ljava/util/List;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llayout/MapViewFragment;->compassPathIds:Ljava/util/List;

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Llayout/MapViewFragment;->pathTypes:Ljava/util/Map;

    const/4 v0, 0x1

    .line 130
    iput-boolean v0, p0, Llayout/MapViewFragment;->isNewPath:Z

    .line 383
    new-instance v0, Llayout/MapViewFragment$2;

    invoke-direct {v0, p0}, Llayout/MapViewFragment$2;-><init>(Llayout/MapViewFragment;)V

    iput-object v0, p0, Llayout/MapViewFragment;->onTouchOverlayListener:Landroid/view/View$OnTouchListener;

    .line 390
    new-instance v0, Llayout/MapViewFragment$3;

    invoke-direct {v0, p0}, Llayout/MapViewFragment$3;-><init>(Llayout/MapViewFragment;)V

    iput-object v0, p0, Llayout/MapViewFragment;->simpleOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    return-void
.end method

.method static synthetic access$000(Llayout/MapViewFragment;)Landroid/widget/LinearLayout;
    .locals 0

    .line 91
    iget-object p0, p0, Llayout/MapViewFragment;->bottomDrawer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$100(Llayout/MapViewFragment;)Landroid/view/GestureDetector;
    .locals 0

    .line 91
    iget-object p0, p0, Llayout/MapViewFragment;->gestureDetector:Landroid/view/GestureDetector;

    return-object p0
.end method

.method static synthetic access$200(Llayout/MapViewFragment;)Llayout/ViewContracts/MapConsumerContract;
    .locals 0

    .line 91
    iget-object p0, p0, Llayout/MapViewFragment;->mapConsumerContract:Llayout/ViewContracts/MapConsumerContract;

    return-object p0
.end method

.method private addCautionMarkers(Lbike/smarthalo/app/models/PresentationNavigationState;)V
    .locals 6

    .line 923
    iget-object v0, p1, Lbike/smarthalo/app/models/PresentationNavigationState;->directions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbike/smarthalo/app/models/SHPresentationDirection;

    .line 925
    iget-object v2, v1, Lbike/smarthalo/app/models/SHPresentationDirection;->mode:Lbike/smarthalo/navigation/models/TransportationMode;

    sget-object v3, Lbike/smarthalo/navigation/models/TransportationMode;->CAUTION:Lbike/smarthalo/navigation/models/TransportationMode;

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Llayout/MapViewFragment;->isNewPath:Z

    if-eqz v2, :cond_0

    .line 926
    iget-object v2, v1, Lbike/smarthalo/app/models/SHPresentationDirection;->type:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    iget-object v3, p1, Lbike/smarthalo/app/models/PresentationNavigationState;->selectedRouteType:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    if-ne v2, v3, :cond_0

    .line 927
    iget-object v2, p0, Llayout/MapViewFragment;->mapProvider:Llayout/mapAdapter/MapProviderContract$Provider;

    iget-object v1, v1, Lbike/smarthalo/app/models/SHPresentationDirection;->directionLocation:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbike/smarthalo/app/models/SHLatLng;

    const v3, 0x7f1103be

    invoke-virtual {p0, v3}, Llayout/MapViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    sget-object v5, Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;->WalkYourBike:Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;

    invoke-interface {v2, v1, v3, v4, v5}, Llayout/mapAdapter/MapProviderContract$Provider;->addMarker(Lbike/smarthalo/app/models/SHLatLng;Ljava/lang/String;Ljava/lang/String;Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private addPathMarker(Lbike/smarthalo/app/models/PresentationModels/RouteMarkerLocation;Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;)V
    .locals 7

    .line 1241
    iget-object v1, p1, Lbike/smarthalo/app/models/PresentationModels/RouteMarkerLocation;->markerLatLng:Lbike/smarthalo/app/models/SHLatLng;

    .line 1242
    iget-object v0, p1, Lbike/smarthalo/app/models/PresentationModels/RouteMarkerLocation;->duplicateRoutes:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p1, p2

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lbike/smarthalo/app/models/PresentationModels/RouteMarkerLocation;->routeType:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    .line 1245
    :goto_0
    sget-object v0, Llayout/MapViewFragment$4;->$SwitchMap$bike$smarthalo$app$models$PresentationModels$AlternateRouteType:[I

    invoke-virtual {p1}, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_5

    .line 1271
    :pswitch_0
    iget-object p1, p0, Llayout/MapViewFragment;->mapProvider:Llayout/mapAdapter/MapProviderContract$Provider;

    const v3, 0x7f11029e

    .line 1273
    invoke-virtual {p0, v3}, Llayout/MapViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    sget-object v5, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;->Flattest:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    sget-object v6, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;->Flattest:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    if-ne p2, v6, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    move-object v0, p1

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, p2

    .line 1271
    invoke-interface/range {v0 .. v5}, Llayout/mapAdapter/MapProviderContract$Provider;->addAlternateRouteMarker(Lbike/smarthalo/app/models/SHLatLng;Ljava/lang/String;Ljava/lang/String;Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;Z)V

    goto/16 :goto_5

    .line 1263
    :pswitch_1
    iget-object p1, p0, Llayout/MapViewFragment;->mapProvider:Llayout/mapAdapter/MapProviderContract$Provider;

    const v3, 0x7f11029d

    .line 1265
    invoke-virtual {p0, v3}, Llayout/MapViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    sget-object v5, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;->Fastest:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    sget-object v6, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;->Fastest:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    if-ne p2, v6, :cond_2

    const/4 p2, 0x1

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    :goto_2
    move-object v0, p1

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, p2

    .line 1263
    invoke-interface/range {v0 .. v5}, Llayout/mapAdapter/MapProviderContract$Provider;->addAlternateRouteMarker(Lbike/smarthalo/app/models/SHLatLng;Ljava/lang/String;Ljava/lang/String;Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;Z)V

    goto :goto_5

    .line 1255
    :pswitch_2
    iget-object p1, p0, Llayout/MapViewFragment;->mapProvider:Llayout/mapAdapter/MapProviderContract$Provider;

    const v3, 0x7f1102a0

    .line 1257
    invoke-virtual {p0, v3}, Llayout/MapViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    sget-object v5, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;->Safest:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    sget-object v6, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;->Safest:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    if-ne p2, v6, :cond_3

    const/4 p2, 0x1

    goto :goto_3

    :cond_3
    const/4 p2, 0x0

    :goto_3
    move-object v0, p1

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, p2

    .line 1255
    invoke-interface/range {v0 .. v5}, Llayout/mapAdapter/MapProviderContract$Provider;->addAlternateRouteMarker(Lbike/smarthalo/app/models/SHLatLng;Ljava/lang/String;Ljava/lang/String;Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;Z)V

    goto :goto_5

    .line 1247
    :pswitch_3
    iget-object p1, p0, Llayout/MapViewFragment;->mapProvider:Llayout/mapAdapter/MapProviderContract$Provider;

    const v3, 0x7f11029f

    .line 1249
    invoke-virtual {p0, v3}, Llayout/MapViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    sget-object v5, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;->Recommended:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    sget-object v6, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;->Recommended:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    if-ne p2, v6, :cond_4

    const/4 p2, 0x1

    goto :goto_4

    :cond_4
    const/4 p2, 0x0

    :goto_4
    move-object v0, p1

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, p2

    .line 1247
    invoke-interface/range {v0 .. v5}, Llayout/mapAdapter/MapProviderContract$Provider;->addAlternateRouteMarker(Lbike/smarthalo/app/models/SHLatLng;Ljava/lang/String;Ljava/lang/String;Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;Z)V

    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private animateMapControlsOverlay(ZLlayout/MapViewFragment$AnimationListener;)V
    .locals 4

    .line 337
    invoke-virtual {p0}, Llayout/MapViewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 339
    iget-object v1, p0, Llayout/MapViewFragment;->isNavigationBarVisible:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, p1, :cond_0

    goto :goto_1

    .line 343
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Llayout/MapViewFragment;->isNavigationBarVisible:Ljava/lang/Boolean;

    .line 345
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070178

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 349
    :cond_2
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v3, v1, v1, v2, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v0, 0xfa

    .line 351
    invoke-virtual {v3, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    const/4 v0, 0x1

    .line 352
    invoke-virtual {v3, v0}, Landroid/view/animation/TranslateAnimation;->setFillBefore(Z)V

    .line 353
    invoke-virtual {v3, v0}, Landroid/view/animation/TranslateAnimation;->setFillEnabled(Z)V

    .line 354
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v3, v0}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 355
    new-instance v0, Llayout/MapViewFragment$1;

    invoke-direct {v0, p0, p1, p2}, Llayout/MapViewFragment$1;-><init>(Llayout/MapViewFragment;ZLlayout/MapViewFragment$AnimationListener;)V

    invoke-virtual {v3, v0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 380
    iget-object p1, p0, Llayout/MapViewFragment;->mapControlsOverlay:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method private canPrepareMapWithTrip()Z
    .locals 6

    .line 854
    invoke-virtual {p0}, Llayout/MapViewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbike/smarthalo/app/helpers/SHPermissionsHelper;->checkLocationsPermissions(Landroid/content/Context;)Z

    move-result v0

    .line 856
    iget-object v1, p0, Llayout/MapViewFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$Presenter;

    invoke-interface {v1}, Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$Presenter;->getCurrentLocation()Landroid/location/Location;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    if-nez v0, :cond_2

    .line 861
    invoke-virtual {p0}, Llayout/MapViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lbike/smarthalo/app/helpers/SHPermissionsHelper;->blePermissions:[Ljava/lang/String;

    const/16 v2, 0x63

    const v4, 0x7f110076

    const v5, 0x7f120004

    invoke-static {v0, v1, v2, v4, v5}, Lbike/smarthalo/app/helpers/SHPermissionsHelper;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;III)V

    goto :goto_1

    .line 867
    :cond_2
    invoke-virtual {p0}, Llayout/MapViewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbike/smarthalo/app/helpers/SHDialogHelper;->showNoLocationToast(Landroid/content/Context;)V

    :goto_1
    return v3
.end method

.method private checkAndResumeView()V
    .locals 1

    .line 785
    iget-object v0, p0, Llayout/MapViewFragment;->mapProvider:Llayout/mapAdapter/MapProviderContract$Provider;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Llayout/MapViewFragment;->hasResumed:Z

    if-eqz v0, :cond_0

    .line 786
    iget-object v0, p0, Llayout/MapViewFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$Presenter;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$Presenter;->onViewReady()V

    :cond_0
    return-void
.end method

.method private clearCurrentRoute()V
    .locals 3

    .line 708
    iget-object v0, p0, Llayout/MapViewFragment;->clearRoute:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 709
    iget-object v0, p0, Llayout/MapViewFragment;->pathProperty:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->hide()V

    .line 710
    iget-object v0, p0, Llayout/MapViewFragment;->pathProperty:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const v2, 0x7f080232

    invoke-virtual {v0, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setImageResource(I)V

    .line 711
    sget-object v0, Lbike/smarthalo/app/models/PathProperty;->Default:Lbike/smarthalo/app/models/PathProperty;

    iput-object v0, p0, Llayout/MapViewFragment;->currentProperty:Lbike/smarthalo/app/models/PathProperty;

    .line 712
    invoke-direct {p0}, Llayout/MapViewFragment;->clearOldPath()V

    .line 713
    iget-object v0, p0, Llayout/MapViewFragment;->alternateRoutesControl:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 714
    invoke-direct {p0}, Llayout/MapViewFragment;->removeAlternateRoutesMarkers()V

    .line 715
    iget-object v0, p0, Llayout/MapViewFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$Presenter;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$Presenter;->stopNavigation()V

    .line 716
    iget-object v0, p0, Llayout/MapViewFragment;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    const-string v1, "Route_Cleared"

    invoke-interface {v0, v1}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendAnalyticsEvent(Ljava/lang/String;)V

    return-void
.end method

.method private clearOldPath()V
    .locals 2

    const/4 v0, 0x1

    .line 882
    iput-boolean v0, p0, Llayout/MapViewFragment;->isNewPath:Z

    .line 884
    iget-object v0, p0, Llayout/MapViewFragment;->mapProvider:Llayout/mapAdapter/MapProviderContract$Provider;

    iget-object v1, p0, Llayout/MapViewFragment;->pathIds:Ljava/util/List;

    invoke-interface {v0, v1}, Llayout/mapAdapter/MapProviderContract$Provider;->removePaths(Ljava/util/List;)V

    .line 885
    iget-object v0, p0, Llayout/MapViewFragment;->mapProvider:Llayout/mapAdapter/MapProviderContract$Provider;

    iget-object v1, p0, Llayout/MapViewFragment;->compassPathIds:Ljava/util/List;

    invoke-interface {v0, v1}, Llayout/mapAdapter/MapProviderContract$Provider;->removePaths(Ljava/util/List;)V

    .line 887
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llayout/MapViewFragment;->pathIds:Ljava/util/List;

    .line 888
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llayout/MapViewFragment;->compassPathIds:Ljava/util/List;

    .line 889
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Llayout/MapViewFragment;->pathTypes:Ljava/util/Map;

    return-void
.end method

.method private confirmAndStopDirections()V
    .locals 2

    .line 271
    iget-object v0, p0, Llayout/MapViewFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$Presenter;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$Presenter;->getPresentationState()Lbike/smarthalo/app/models/PresentationNavigationState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 272
    iget-boolean v1, v0, Lbike/smarthalo/app/models/PresentationNavigationState;->isActive:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lbike/smarthalo/app/models/PresentationNavigationState;->updateType:Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    sget-object v1, Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;->ArrivedAtDestination:Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    if-eq v0, v1, :cond_0

    .line 275
    invoke-direct {p0}, Llayout/MapViewFragment;->confirmNavigationCancellation()V

    goto :goto_0

    .line 277
    :cond_0
    invoke-direct {p0}, Llayout/MapViewFragment;->stopDirections()V

    :goto_0
    return-void
.end method

.method private confirmNavigationCancellation()V
    .locals 5

    .line 687
    invoke-virtual {p0}, Llayout/MapViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Llayout/-$$Lambda$MapViewFragment$x2EKtFtfA9O5CxvexBEKFWFjulk;

    invoke-direct {v1, p0}, Llayout/-$$Lambda$MapViewFragment$x2EKtFtfA9O5CxvexBEKFWFjulk;-><init>(Llayout/MapViewFragment;)V

    const v2, 0x7f11035e

    const v3, 0x7f110011

    const/high16 v4, 0x7f110000

    .line 686
    invoke-static {v0, v2, v3, v4, v1}, Lbike/smarthalo/app/helpers/SHDialogHelper;->showConfirmationDialog(Landroid/content/Context;IIILbike/smarthalo/app/helpers/SHDialogHelper$SHDialogOnClick;)V

    return-void
.end method

.method private createAlternateRouteItem(Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;Lbike/smarthalo/app/models/PresentationModels/PresentationRouteInfo;)Lbike/smarthalo/app/models/PresentationModels/AlternateRouteItem;
    .locals 1

    .line 1228
    new-instance v0, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteItem;

    iget-object p2, p2, Lbike/smarthalo/app/models/PresentationModels/PresentationRouteInfo;->duration:Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteItem;-><init>(Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;Ljava/lang/Long;)V

    return-object v0
.end method

.method private displayFavouriteOptions()V
    .locals 4

    .line 460
    invoke-virtual {p0}, Llayout/MapViewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 461
    iget-object v1, p0, Llayout/MapViewFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$Presenter;

    invoke-interface {v1}, Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$Presenter;->getPresentationState()Lbike/smarthalo/app/models/PresentationNavigationState;

    move-result-object v1

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 467
    :cond_0
    iget-object v2, v1, Lbike/smarthalo/app/models/PresentationNavigationState;->destination:Lbike/smarthalo/app/models/SHLocation;

    new-instance v3, Llayout/-$$Lambda$MapViewFragment$uhexUSpGPl-OLVuVBi9HPZDdDy8;

    invoke-direct {v3, p0, v1}, Llayout/-$$Lambda$MapViewFragment$uhexUSpGPl-OLVuVBi9HPZDdDy8;-><init>(Llayout/MapViewFragment;Lbike/smarthalo/app/models/PresentationNavigationState;)V

    new-instance v1, Llayout/-$$Lambda$MapViewFragment$4o3qQU3UluhUbPNjF4Vko-LjLbU;

    invoke-direct {v1, p0}, Llayout/-$$Lambda$MapViewFragment$4o3qQU3UluhUbPNjF4Vko-LjLbU;-><init>(Llayout/MapViewFragment;)V

    .line 468
    invoke-static {v0, v2, v3, v1}, Llayout/FavouritesAlertDialog;->create(Landroid/content/Context;Lbike/smarthalo/app/models/SHLocation;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 492
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private drawDestinationPin(Lbike/smarthalo/app/models/SHLocation;)V
    .locals 4

    .line 720
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHLocation;->realmGet$title()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHLocation;->realmGet$title()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHLocation;->realmGet$title()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHLocation;->realmGet$address()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 721
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHLocation;->realmGet$address()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHLocation;->realmGet$address()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    :goto_1
    const v1, 0x7f110350

    invoke-virtual {p0, v1}, Llayout/MapViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 723
    :goto_2
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHLocation;->realmGet$address()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHLocation;->realmGet$address()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 724
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHLocation;->realmGet$address()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 725
    :cond_3
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHLocation;->realmGet$description()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHLocation;->realmGet$description()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 726
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHLocation;->realmGet$description()Ljava/lang/String;

    move-result-object v1

    .line 729
    :cond_4
    :goto_3
    iget-object v2, p0, Llayout/MapViewFragment;->mapProvider:Llayout/mapAdapter/MapProviderContract$Provider;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHLocation;->getSHLatLng()Lbike/smarthalo/app/models/SHLatLng;

    move-result-object p1

    sget-object v3, Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;->Destination:Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;

    invoke-interface {v2, p1, v0, v1, v3}, Llayout/mapAdapter/MapProviderContract$Provider;->addMarker(Lbike/smarthalo/app/models/SHLatLng;Ljava/lang/String;Ljava/lang/String;Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;)V

    return-void
.end method

.method private finishDirections(Lbike/smarthalo/app/models/PresentationNavigationState;Landroid/location/Location;Landroid/content/Context;)V
    .locals 2

    .line 649
    iget-object p3, p0, Llayout/MapViewFragment;->direction_panel:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 650
    iget-object p3, p0, Llayout/MapViewFragment;->destination_panel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {p3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 652
    iget-object p3, p0, Llayout/MapViewFragment;->direction_panel:Landroid/widget/LinearLayout;

    const v1, 0x7f0a02f9

    invoke-virtual {p3, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v1, 0x7f1100a6

    .line 653
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(I)V

    .line 654
    iget-object p3, p0, Llayout/MapViewFragment;->direction_panel:Landroid/widget/LinearLayout;

    const v1, 0x7f0a0111

    invoke-virtual {p3, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    const v1, 0x7f0800de

    .line 655
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v1, 0x0

    .line 656
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 657
    iget-object p3, p0, Llayout/MapViewFragment;->direction_panel:Landroid/widget/LinearLayout;

    const v1, 0x7f0a0143

    invoke-virtual {p3, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageButton;

    const v1, 0x7f080100

    .line 658
    invoke-virtual {p3, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    const v1, 0x7f0800dd

    .line 659
    invoke-virtual {p3, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 661
    invoke-direct {p0, p1, p2}, Llayout/MapViewFragment;->updateNavigationMapAnnotations(Lbike/smarthalo/app/models/PresentationNavigationState;Landroid/location/Location;)V

    .line 663
    invoke-direct {p0}, Llayout/MapViewFragment;->clearOldPath()V

    .line 665
    invoke-virtual {p0, v0}, Llayout/MapViewFragment;->centerMapOnUser(Z)V

    return-void
.end method

.method private initializeMap(Landroid/os/Bundle;Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0a0376

    .line 299
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Llayout/mapAdapter/SHGoogleMapsMap;

    iput-object p2, p0, Llayout/MapViewFragment;->mapView:Llayout/mapAdapter/SHGoogleMapsMap;

    .line 300
    iget-object p2, p0, Llayout/MapViewFragment;->mapView:Llayout/mapAdapter/SHGoogleMapsMap;

    invoke-virtual {p2, p1}, Llayout/mapAdapter/SHGoogleMapsMap;->onCreate(Landroid/os/Bundle;)V

    .line 301
    iget-object p1, p0, Llayout/MapViewFragment;->mapView:Llayout/mapAdapter/SHGoogleMapsMap;

    invoke-virtual {p1, p0}, Llayout/mapAdapter/SHGoogleMapsMap;->initialize(Llayout/mapAdapter/MapProviderContract$Consumer;)V

    return-void
.end method

.method public static synthetic lambda$displayFavouriteOptions$7(Llayout/MapViewFragment;Lbike/smarthalo/app/models/PresentationNavigationState;Landroid/content/DialogInterface;I)V
    .locals 1

    .line 472
    iget-object p2, p0, Llayout/MapViewFragment;->destination_panel:Landroid/widget/LinearLayout;

    const v0, 0x7f0a017b

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    const v0, 0x7f08005e

    .line 473
    invoke-virtual {p2, v0}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 483
    :pswitch_0
    iget-object p2, p0, Llayout/MapViewFragment;->favouritesController:Lbike/smarthalo/app/coordinators/FavouritesController;

    sget-object p3, Lbike/smarthalo/app/models/FavouriteType;->WORK:Lbike/smarthalo/app/models/FavouriteType;

    iget-object p1, p1, Lbike/smarthalo/app/models/PresentationNavigationState;->destination:Lbike/smarthalo/app/models/SHLocation;

    invoke-virtual {p2, p3, p1}, Lbike/smarthalo/app/coordinators/FavouritesController;->updateFavourites(Lbike/smarthalo/app/models/FavouriteType;Lbike/smarthalo/app/models/SHLocation;)V

    goto :goto_0

    .line 480
    :pswitch_1
    iget-object p2, p0, Llayout/MapViewFragment;->favouritesController:Lbike/smarthalo/app/coordinators/FavouritesController;

    sget-object p3, Lbike/smarthalo/app/models/FavouriteType;->HOME:Lbike/smarthalo/app/models/FavouriteType;

    iget-object p1, p1, Lbike/smarthalo/app/models/PresentationNavigationState;->destination:Lbike/smarthalo/app/models/SHLocation;

    invoke-virtual {p2, p3, p1}, Lbike/smarthalo/app/coordinators/FavouritesController;->updateFavourites(Lbike/smarthalo/app/models/FavouriteType;Lbike/smarthalo/app/models/SHLocation;)V

    goto :goto_0

    .line 477
    :pswitch_2
    iget-object p2, p0, Llayout/MapViewFragment;->favouritesController:Lbike/smarthalo/app/coordinators/FavouritesController;

    sget-object p3, Lbike/smarthalo/app/models/FavouriteType;->FAVOURITE:Lbike/smarthalo/app/models/FavouriteType;

    iget-object p1, p1, Lbike/smarthalo/app/models/PresentationNavigationState;->destination:Lbike/smarthalo/app/models/SHLocation;

    invoke-virtual {p2, p3, p1}, Lbike/smarthalo/app/coordinators/FavouritesController;->updateFavourites(Lbike/smarthalo/app/models/FavouriteType;Lbike/smarthalo/app/models/SHLocation;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic lambda$displayFavouriteOptions$8(Llayout/MapViewFragment;Landroid/content/DialogInterface;)V
    .locals 1

    .line 489
    iget-object p1, p0, Llayout/MapViewFragment;->destination_panel:Landroid/widget/LinearLayout;

    const v0, 0x7f0a017b

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    const v0, 0x7f08005e

    .line 490
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    return-void
.end method

.method public static synthetic lambda$onActivityResult$9(Llayout/MapViewFragment;Landroid/net/Uri;)V
    .locals 1

    .line 762
    iget-object v0, p0, Llayout/MapViewFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$Presenter;

    invoke-interface {v0, p1}, Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$Presenter;->processSelectedGpxFile(Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic lambda$onOfflineNavigation$11(Llayout/MapViewFragment;)V
    .locals 2

    .line 1344
    iget-object v0, p0, Llayout/MapViewFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$Presenter;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$Presenter;->chooseOfflineMode(Z)V

    return-void
.end method

.method public static synthetic lambda$onStopped$10(Llayout/MapViewFragment;Z)V
    .locals 0

    .line 1319
    invoke-direct {p0, p1}, Llayout/MapViewFragment;->onNavigationStopAnimationCompleted(Z)V

    return-void
.end method

.method public static synthetic lambda$rfPbimtAPtAqNS8rPvINnQqjWUI(Llayout/MapViewFragment;Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;)V
    .locals 0

    invoke-direct {p0, p1}, Llayout/MapViewFragment;->onAlternateRouteSelected(Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;)V

    return-void
.end method

.method public static synthetic lambda$setMapListeners$0(Llayout/MapViewFragment;Landroid/view/View;)V
    .locals 0

    .line 251
    invoke-direct {p0}, Llayout/MapViewFragment;->confirmAndStopDirections()V

    return-void
.end method

.method public static synthetic lambda$setMapListeners$1(Llayout/MapViewFragment;Landroid/view/View;)V
    .locals 0

    .line 254
    invoke-direct {p0}, Llayout/MapViewFragment;->startNavigation()V

    return-void
.end method

.method public static synthetic lambda$setMapListeners$2(Llayout/MapViewFragment;Landroid/widget/ImageButton;Landroid/view/View;)V
    .locals 0

    const p2, 0x7f0800a4

    .line 258
    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 259
    invoke-direct {p0}, Llayout/MapViewFragment;->displayFavouriteOptions()V

    return-void
.end method

.method public static synthetic lambda$setMapListeners$3(Llayout/MapViewFragment;Landroid/view/View;)V
    .locals 0

    .line 263
    invoke-direct {p0}, Llayout/MapViewFragment;->onFindMeClicked()V

    return-void
.end method

.method public static synthetic lambda$setMapListeners$4(Llayout/MapViewFragment;Landroid/view/View;)V
    .locals 0

    .line 264
    invoke-virtual {p0}, Llayout/MapViewFragment;->centerMapOnBike()V

    return-void
.end method

.method public static synthetic lambda$setMapListeners$5(Llayout/MapViewFragment;Landroid/view/View;)V
    .locals 0

    .line 265
    invoke-virtual {p0}, Llayout/MapViewFragment;->nextProperty()V

    return-void
.end method

.method public static synthetic lambda$setMapListeners$6(Llayout/MapViewFragment;Landroid/view/View;)V
    .locals 0

    .line 267
    invoke-direct {p0}, Llayout/MapViewFragment;->clearCurrentRoute()V

    return-void
.end method

.method public static synthetic lambda$x2EKtFtfA9O5CxvexBEKFWFjulk(Llayout/MapViewFragment;)V
    .locals 0

    invoke-direct {p0}, Llayout/MapViewFragment;->stopDirections()V

    return-void
.end method

.method private onAlternateRouteSelected(Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;)V
    .locals 2

    .line 235
    iget-object v0, p0, Llayout/MapViewFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$Presenter;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$Presenter;->getPresentationState()Lbike/smarthalo/app/models/PresentationNavigationState;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 236
    iget-object v1, v0, Lbike/smarthalo/app/models/PresentationNavigationState;->presentationMarkerLocations:Ljava/util/List;

    if-nez v1, :cond_0

    goto :goto_0

    .line 240
    :cond_0
    iget-object v1, p0, Llayout/MapViewFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$Presenter;

    invoke-interface {v1, p1}, Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$Presenter;->setRouteType(Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;)V

    const/4 v1, 0x1

    .line 241
    iput-boolean v1, p0, Llayout/MapViewFragment;->isNewPath:Z

    .line 242
    iget-object v1, p0, Llayout/MapViewFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$Presenter;

    invoke-interface {v1}, Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$Presenter;->getCurrentLocation()Landroid/location/Location;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Llayout/MapViewFragment;->updateNavigationMapAnnotations(Lbike/smarthalo/app/models/PresentationNavigationState;Landroid/location/Location;)V

    .line 243
    iget-object v1, v0, Lbike/smarthalo/app/models/PresentationNavigationState;->destination:Lbike/smarthalo/app/models/SHLocation;

    invoke-virtual {v1}, Lbike/smarthalo/app/models/SHLocation;->getNavigationDescription()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Llayout/MapViewFragment;->updateViewWithTitle(Lbike/smarthalo/app/models/PresentationNavigationState;Ljava/lang/String;)V

    .line 244
    invoke-direct {p0}, Llayout/MapViewFragment;->removeAlternateRoutesMarkers()V

    .line 245
    iget-object v0, v0, Lbike/smarthalo/app/models/PresentationNavigationState;->presentationMarkerLocations:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Llayout/MapViewFragment;->setUpAlternateRoutesMarkers(Ljava/util/List;Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;)V

    .line 246
    iget-object v0, p0, Llayout/MapViewFragment;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    invoke-static {p1}, Lbike/smarthalo/app/analytics/navigation/AnalyticsNavigation;->getRouteChangedEvent(Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;)Lbike/smarthalo/app/analytics/AnalyticsEvent;

    move-result-object p1

    invoke-interface {v0, p1}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendAnalyticsEvent(Lbike/smarthalo/app/analytics/AnalyticsEvent;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private onFindMeClicked()V
    .locals 3

    .line 282
    iget-object v0, p0, Llayout/MapViewFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$Presenter;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$Presenter;->getPresentationState()Lbike/smarthalo/app/models/PresentationNavigationState;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 283
    iget-boolean v0, v0, Lbike/smarthalo/app/models/PresentationNavigationState;->isActive:Z

    if-eqz v0, :cond_1

    .line 284
    iget-object v0, p0, Llayout/MapViewFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$Presenter;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$Presenter;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 287
    iget-object v2, p0, Llayout/MapViewFragment;->mapProvider:Llayout/mapAdapter/MapProviderContract$Provider;

    invoke-interface {v2, v1, v0}, Llayout/mapAdapter/MapProviderContract$Provider;->setUpFollowingCamera(ZLandroid/location/Location;)V

    goto :goto_0

    .line 289
    :cond_0
    invoke-virtual {p0}, Llayout/MapViewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbike/smarthalo/app/helpers/SHDialogHelper;->showNoLocationToast(Landroid/content/Context;)V

    goto :goto_0

    .line 293
    :cond_1
    invoke-virtual {p0, v1}, Llayout/MapViewFragment;->centerMapOnUser(Z)V

    :goto_0
    return-void
.end method

.method private onNavigationStopAnimationCompleted(Z)V
    .locals 3

    .line 1349
    iget-object v0, p0, Llayout/MapViewFragment;->direction_panel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1351
    iget-object v0, p0, Llayout/MapViewFragment;->mainToolbarLayout:Llayout/MainToolbarLayout;

    if-eqz v0, :cond_0

    const-string v2, ""

    .line 1352
    invoke-virtual {v0, v2}, Llayout/MainToolbarLayout;->setSearchToolBarVisuals(Ljava/lang/String;)V

    .line 1355
    :cond_0
    invoke-direct {p0}, Llayout/MapViewFragment;->removeCompletedPath()V

    if-eqz p1, :cond_1

    .line 1358
    iget-object p1, p0, Llayout/MapViewFragment;->destination_panel:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1360
    invoke-direct {p0}, Llayout/MapViewFragment;->setCancelDirectionsButtonVisuals()V

    .line 1362
    iget-object p1, p0, Llayout/MapViewFragment;->mapProvider:Llayout/mapAdapter/MapProviderContract$Provider;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Llayout/mapAdapter/MapProviderContract$Provider;->setUpFollowingCamera(ZLandroid/location/Location;)V

    goto :goto_0

    .line 1364
    :cond_1
    iget-object p1, p0, Llayout/MapViewFragment;->destination_panel:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0305

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private prepMapWithTrip(Lbike/smarthalo/app/models/SHLocation;)V
    .locals 2

    .line 874
    invoke-direct {p0}, Llayout/MapViewFragment;->removeNavigationMarkers()V

    .line 875
    invoke-direct {p0}, Llayout/MapViewFragment;->removeCompletedPath()V

    .line 877
    iget-object v0, p0, Llayout/MapViewFragment;->mapConsumerContract:Llayout/ViewContracts/MapConsumerContract;

    const v1, 0x7f1102b3

    invoke-interface {v0, v1}, Llayout/ViewContracts/MapConsumerContract;->showMapLoadingDialog(I)V

    .line 878
    iget-object v0, p0, Llayout/MapViewFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$Presenter;

    invoke-interface {v0, p1}, Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$Presenter;->requestItinerary(Lbike/smarthalo/app/models/SHLocation;)V

    return-void
.end method

.method private prepareDestinationPanel(Lbike/smarthalo/app/models/PresentationNavigationState;Landroid/location/Location;)V
    .locals 3
    .param p1    # Lbike/smarthalo/app/models/PresentationNavigationState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 497
    iput-boolean v0, p0, Llayout/MapViewFragment;->isNewPath:Z

    .line 499
    iget-object v1, p0, Llayout/MapViewFragment;->destination_panel:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 500
    iget-object v1, p0, Llayout/MapViewFragment;->direction_panel:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 501
    iget-object v1, p1, Lbike/smarthalo/app/models/PresentationNavigationState;->destination:Lbike/smarthalo/app/models/SHLocation;

    invoke-direct {p0, v1}, Llayout/MapViewFragment;->updateFavouriteVisuals(Lbike/smarthalo/app/models/SHLocation;)V

    .line 503
    iget-object v1, p1, Lbike/smarthalo/app/models/PresentationNavigationState;->destination:Lbike/smarthalo/app/models/SHLocation;

    invoke-virtual {v1}, Lbike/smarthalo/app/models/SHLocation;->getNavigationDescription()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Llayout/MapViewFragment;->updateViewWithTitle(Lbike/smarthalo/app/models/PresentationNavigationState;Ljava/lang/String;)V

    .line 505
    invoke-direct {p0, p1, p2}, Llayout/MapViewFragment;->updateNavigationMapAnnotations(Lbike/smarthalo/app/models/PresentationNavigationState;Landroid/location/Location;)V

    const/4 p1, 0x0

    .line 507
    invoke-direct {p0, v0, p1}, Llayout/MapViewFragment;->animateMapControlsOverlay(ZLlayout/MapViewFragment$AnimationListener;)V

    return-void
.end method

.method private prepareInstructionPanel(Lbike/smarthalo/app/models/PresentationNavigationState;Landroid/location/Location;)V
    .locals 3

    .line 629
    invoke-virtual {p0}, Llayout/MapViewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 633
    :cond_0
    iget-object v0, p0, Llayout/MapViewFragment;->clearRoute:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 634
    iget-object v0, p0, Llayout/MapViewFragment;->pathProperty:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->hide()V

    .line 636
    iget-object v0, p0, Llayout/MapViewFragment;->destination_panel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 637
    iget-object v0, p0, Llayout/MapViewFragment;->direction_panel:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 638
    iget-object v0, p0, Llayout/MapViewFragment;->destination_panel:Landroid/widget/LinearLayout;

    const v2, 0x7f0a0305

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 640
    invoke-direct {p0}, Llayout/MapViewFragment;->setCancelDirectionsButtonVisuals()V

    .line 642
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/UserStorageStaticManager;->getUser()Lbike/smarthalo/app/models/SHUser;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 643
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHUser;->realmGet$distanceMetric()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, v0, p2}, Llayout/MapViewFragment;->updateInstructionUnits(Lbike/smarthalo/app/models/PresentationNavigationState;ZLandroid/location/Location;)V

    .line 644
    invoke-virtual {p0, p1}, Llayout/MapViewFragment;->updateInstructionPanel(Lbike/smarthalo/app/models/PresentationNavigationState;)V

    return-void
.end method

.method private recoverNavigation(Landroid/content/Context;Lbike/smarthalo/app/models/PresentationNavigationState;ZLandroid/location/Location;)V
    .locals 2

    .line 792
    iget-object v0, p2, Lbike/smarthalo/app/models/PresentationNavigationState;->destination:Lbike/smarthalo/app/models/SHLocation;

    const/4 v1, 0x1

    if-eqz p3, :cond_1

    .line 794
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHLocation;->isFavourite()Z

    move-result p3

    if-nez p3, :cond_0

    .line 795
    invoke-direct {p0, v0}, Llayout/MapViewFragment;->drawDestinationPin(Lbike/smarthalo/app/models/SHLocation;)V

    :cond_0
    const/4 p3, 0x0

    .line 797
    invoke-direct {p0, v1, p3}, Llayout/MapViewFragment;->animateMapControlsOverlay(ZLlayout/MapViewFragment$AnimationListener;)V

    .line 800
    :cond_1
    invoke-direct {p0}, Llayout/MapViewFragment;->clearOldPath()V

    .line 801
    invoke-direct {p0}, Llayout/MapViewFragment;->removeCompletedPath()V

    .line 803
    iget-object p3, p2, Lbike/smarthalo/app/models/PresentationNavigationState;->updateType:Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    sget-object v0, Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;->ArrivedAtDestination:Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    if-ne p3, v0, :cond_2

    .line 804
    invoke-direct {p0, p2, p4}, Llayout/MapViewFragment;->updateNavigationMapAnnotations(Lbike/smarthalo/app/models/PresentationNavigationState;Landroid/location/Location;)V

    .line 805
    invoke-direct {p0, p2, p4, p1}, Llayout/MapViewFragment;->finishDirections(Lbike/smarthalo/app/models/PresentationNavigationState;Landroid/location/Location;Landroid/content/Context;)V

    goto :goto_0

    .line 806
    :cond_2
    iget-boolean p1, p2, Lbike/smarthalo/app/models/PresentationNavigationState;->isActive:Z

    if-eqz p1, :cond_3

    .line 807
    iget-object p1, p0, Llayout/MapViewFragment;->mapProvider:Llayout/mapAdapter/MapProviderContract$Provider;

    invoke-interface {p1, v1, p4}, Llayout/mapAdapter/MapProviderContract$Provider;->setUpFollowingCamera(ZLandroid/location/Location;)V

    .line 808
    invoke-virtual {p0, p2, p4}, Llayout/MapViewFragment;->onUpdate(Lbike/smarthalo/app/models/PresentationNavigationState;Landroid/location/Location;)V

    goto :goto_0

    .line 810
    :cond_3
    invoke-virtual {p0, p2, p4}, Llayout/MapViewFragment;->initialize(Lbike/smarthalo/app/models/PresentationNavigationState;Landroid/location/Location;)V

    :goto_0
    return-void
.end method

.method private removeAlternateRoutesMarkers()V
    .locals 4

    .line 1069
    iget-object v0, p0, Llayout/MapViewFragment;->mapProvider:Llayout/mapAdapter/MapProviderContract$Provider;

    const/4 v1, 0x4

    new-array v1, v1, [Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;

    sget-object v2, Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;->AlternateRouteFlattest:Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;->AlternateRouteFastest:Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;->AlternateRouteRecommended:Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;->AlternateRouteSafest:Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Llayout/mapAdapter/MapProviderContract$Provider;->removeMarkers([Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;)V

    return-void
.end method

.method private removeBikeMarker()V
    .locals 4

    .line 1065
    iget-object v0, p0, Llayout/MapViewFragment;->mapProvider:Llayout/mapAdapter/MapProviderContract$Provider;

    const/4 v1, 0x1

    new-array v1, v1, [Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;

    sget-object v2, Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;->Bike:Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Llayout/mapAdapter/MapProviderContract$Provider;->removeMarkers([Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;)V

    return-void
.end method

.method private removeCompletedPath()V
    .locals 2

    .line 673
    iget-object v0, p0, Llayout/MapViewFragment;->completedPathId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 674
    iget-object v0, p0, Llayout/MapViewFragment;->mapProvider:Llayout/mapAdapter/MapProviderContract$Provider;

    iget-object v1, p0, Llayout/MapViewFragment;->completedPathId:Ljava/lang/String;

    invoke-interface {v0, v1}, Llayout/mapAdapter/MapProviderContract$Provider;->removePath(Ljava/lang/String;)V

    const-string v0, ""

    .line 675
    iput-object v0, p0, Llayout/MapViewFragment;->completedPathId:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private removeDestinationPin()V
    .locals 4

    .line 1057
    iget-object v0, p0, Llayout/MapViewFragment;->mapProvider:Llayout/mapAdapter/MapProviderContract$Provider;

    const/4 v1, 0x1

    new-array v1, v1, [Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;

    sget-object v2, Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;->Destination:Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Llayout/mapAdapter/MapProviderContract$Provider;->removeMarkers([Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;)V

    return-void
.end method

.method private removeNavigationMarkers()V
    .locals 4

    .line 1061
    iget-object v0, p0, Llayout/MapViewFragment;->mapProvider:Llayout/mapAdapter/MapProviderContract$Provider;

    const/4 v1, 0x2

    new-array v1, v1, [Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;

    sget-object v2, Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;->Destination:Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;->WalkYourBike:Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Llayout/mapAdapter/MapProviderContract$Provider;->removeMarkers([Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;)V

    return-void
.end method

.method private setCancelDirectionsButtonVisuals()V
    .locals 2

    .line 680
    iget-object v0, p0, Llayout/MapViewFragment;->direction_panel:Landroid/widget/LinearLayout;

    const v1, 0x7f0a0143

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const v1, 0x7f08021d

    .line 681
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    const v1, 0x7f080254

    .line 682
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    return-void
.end method

.method private setMapListeners()V
    .locals 2

    .line 250
    iget-object v0, p0, Llayout/MapViewFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0a0143

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 251
    new-instance v1, Llayout/-$$Lambda$MapViewFragment$PY8GV8ddBZD0hWUedCbHYTjoYAU;

    invoke-direct {v1, p0}, Llayout/-$$Lambda$MapViewFragment$PY8GV8ddBZD0hWUedCbHYTjoYAU;-><init>(Llayout/MapViewFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    iget-object v0, p0, Llayout/MapViewFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0a03a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 254
    new-instance v1, Llayout/-$$Lambda$MapViewFragment$BFgSXNBIpcO0hThmsIZWTjzXiKo;

    invoke-direct {v1, p0}, Llayout/-$$Lambda$MapViewFragment$BFgSXNBIpcO0hThmsIZWTjzXiKo;-><init>(Llayout/MapViewFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    iget-object v0, p0, Llayout/MapViewFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0a017b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 257
    new-instance v1, Llayout/-$$Lambda$MapViewFragment$65iFI2_0wnvFzOT1Uey2dqM_E4k;

    invoke-direct {v1, p0, v0}, Llayout/-$$Lambda$MapViewFragment$65iFI2_0wnvFzOT1Uey2dqM_E4k;-><init>(Llayout/MapViewFragment;Landroid/widget/ImageButton;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    iget-object v0, p0, Llayout/MapViewFragment;->findMe:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    new-instance v1, Llayout/-$$Lambda$MapViewFragment$_Q_LWMfqtG022NZX6WTz6XK2A8Y;

    invoke-direct {v1, p0}, Llayout/-$$Lambda$MapViewFragment$_Q_LWMfqtG022NZX6WTz6XK2A8Y;-><init>(Llayout/MapViewFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    iget-object v0, p0, Llayout/MapViewFragment;->findBike:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    new-instance v1, Llayout/-$$Lambda$MapViewFragment$6Oi11yOBJf4WwEnsEo2j0KIDDRw;

    invoke-direct {v1, p0}, Llayout/-$$Lambda$MapViewFragment$6Oi11yOBJf4WwEnsEo2j0KIDDRw;-><init>(Llayout/MapViewFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    iget-object v0, p0, Llayout/MapViewFragment;->pathProperty:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    new-instance v1, Llayout/-$$Lambda$MapViewFragment$z5hhQ7bkQBMwqRC-7A1VzicyY9o;

    invoke-direct {v1, p0}, Llayout/-$$Lambda$MapViewFragment$z5hhQ7bkQBMwqRC-7A1VzicyY9o;-><init>(Llayout/MapViewFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    iget-object v0, p0, Llayout/MapViewFragment;->clearRoute:Landroid/widget/Button;

    new-instance v1, Llayout/-$$Lambda$MapViewFragment$F0EITKuyoit2VDjAsiZzzg2umZM;

    invoke-direct {v1, p0}, Llayout/-$$Lambda$MapViewFragment$F0EITKuyoit2VDjAsiZzzg2umZM;-><init>(Llayout/MapViewFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setUpAlternateRoutesControl(Landroid/content/Context;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 224
    iget-object p1, p0, Llayout/MapViewFragment;->rootView:Landroid/view/View;

    const v0, 0x7f0a005e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Llayout/MapViewFragment;->alternateRoutesControl:Landroidx/recyclerview/widget/RecyclerView;

    .line 225
    new-instance p1, Llayout/adapters/AlternateRoutesControlAdapter;

    invoke-virtual {p0}, Llayout/MapViewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Llayout/-$$Lambda$MapViewFragment$rfPbimtAPtAqNS8rPvINnQqjWUI;

    invoke-direct {v1, p0}, Llayout/-$$Lambda$MapViewFragment$rfPbimtAPtAqNS8rPvINnQqjWUI;-><init>(Llayout/MapViewFragment;)V

    iget-object v2, p0, Llayout/MapViewFragment;->alternateRoutesControl:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p1, v0, v1, v2}, Llayout/adapters/AlternateRoutesControlAdapter;-><init>(Landroid/content/Context;Llayout/adapters/AlternateRoutesControlAdapter$AlternateRouteSelectionListener;Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object p1, p0, Llayout/MapViewFragment;->alternateRoutesAdapter:Llayout/adapters/AlternateRoutesControlAdapter;

    .line 227
    iget-object p1, p0, Llayout/MapViewFragment;->alternateRoutesControl:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Llayout/MapViewFragment;->alternateRoutesAdapter:Llayout/adapters/AlternateRoutesControlAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 229
    iget-object p1, p0, Llayout/MapViewFragment;->alternateRoutesControl:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Llayout/adapters/AlternateRoutesAnimator;

    invoke-direct {v0}, Llayout/adapters/AlternateRoutesAnimator;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 230
    iget-object p1, p0, Llayout/MapViewFragment;->alternateRoutesControl:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Llayout/MapViewFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    :cond_0
    return-void
.end method

.method private setUpAlternateRoutesMarkers(Ljava/util/List;Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/PresentationModels/RouteMarkerLocation;",
            ">;",
            "Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;",
            ")V"
        }
    .end annotation

    .line 1234
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/models/PresentationModels/RouteMarkerLocation;

    .line 1235
    invoke-direct {p0, v0, p2}, Llayout/MapViewFragment;->addPathMarker(Lbike/smarthalo/app/models/PresentationModels/RouteMarkerLocation;Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setUpNavigationVisuals(Lbike/smarthalo/app/models/PresentationNavigationState;Landroid/location/Location;)V
    .locals 2

    .line 561
    iget-object v0, p0, Llayout/MapViewFragment;->mapProvider:Llayout/mapAdapter/MapProviderContract$Provider;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p2}, Llayout/mapAdapter/MapProviderContract$Provider;->setUpFollowingCamera(ZLandroid/location/Location;)V

    .line 562
    iget-object v0, p0, Llayout/MapViewFragment;->alternateRoutesControl:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 563
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Llayout/MapViewFragment;->pathTypes:Ljava/util/Map;

    .line 564
    invoke-direct {p0}, Llayout/MapViewFragment;->removeAlternateRoutesMarkers()V

    .line 566
    invoke-direct {p0, p1, p2}, Llayout/MapViewFragment;->prepareInstructionPanel(Lbike/smarthalo/app/models/PresentationNavigationState;Landroid/location/Location;)V

    return-void
.end method

.method private showEntireRide(Lbike/smarthalo/app/models/PresentationNavigationState;)V
    .locals 1

    .line 845
    iget-object v0, p0, Llayout/MapViewFragment;->mapProvider:Llayout/mapAdapter/MapProviderContract$Provider;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/PresentationNavigationState;->getAllDirectionSHLatLngs()Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {v0, p1}, Llayout/mapAdapter/MapProviderContract$Provider;->setBounds(Ljava/util/List;)V

    .line 846
    iget-object p1, p0, Llayout/MapViewFragment;->clearRoute:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 848
    invoke-static {}, Lbike/smarthalo/app/helpers/SHBuildConfigHelper;->isReleaseBuildConfig()Z

    move-result p1

    if-nez p1, :cond_0

    .line 849
    iget-object p1, p0, Llayout/MapViewFragment;->pathProperty:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->show()V

    :cond_0
    return-void
.end method

.method private startNavigation()V
    .locals 2

    .line 548
    iget-object v0, p0, Llayout/MapViewFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$Presenter;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$Presenter;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 551
    iput-boolean v1, p0, Llayout/MapViewFragment;->isNewPath:Z

    .line 552
    iget-object v1, p0, Llayout/MapViewFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$Presenter;

    invoke-interface {v1}, Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$Presenter;->startNavigation()V

    .line 553
    iget-object v1, p0, Llayout/MapViewFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$Presenter;

    invoke-interface {v1}, Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$Presenter;->getPresentationState()Lbike/smarthalo/app/models/PresentationNavigationState;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Llayout/MapViewFragment;->setUpNavigationVisuals(Lbike/smarthalo/app/models/PresentationNavigationState;Landroid/location/Location;)V

    goto :goto_0

    .line 555
    :cond_0
    invoke-virtual {p0}, Llayout/MapViewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbike/smarthalo/app/helpers/SHDialogHelper;->showNoLocationToast(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method private stopDirections()V
    .locals 1

    .line 669
    iget-object v0, p0, Llayout/MapViewFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$Presenter;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$Presenter;->stopNavigation()V

    return-void
.end method

.method private updateCompassPath(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHMapPath;",
            ">;)V"
        }
    .end annotation

    .line 934
    iget-object v0, p0, Llayout/MapViewFragment;->compassPathIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 935
    :goto_0
    iget-object v0, p0, Llayout/MapViewFragment;->compassPathIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 936
    iget-object v0, p0, Llayout/MapViewFragment;->mapProvider:Llayout/mapAdapter/MapProviderContract$Provider;

    iget-object v1, p0, Llayout/MapViewFragment;->compassPathIds:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Llayout/mapAdapter/MapProviderContract$Provider;->removePath(Ljava/lang/String;)V

    .line 937
    iget-object v0, p0, Llayout/MapViewFragment;->compassPathIds:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 942
    :cond_0
    :goto_1
    iget-object v0, p0, Llayout/MapViewFragment;->compassPathIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 943
    iget-object v0, p0, Llayout/MapViewFragment;->compassPathIds:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 944
    iget-object v1, p0, Llayout/MapViewFragment;->mapProvider:Llayout/mapAdapter/MapProviderContract$Provider;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbike/smarthalo/app/models/SHMapPath;

    iget-object v3, v3, Lbike/smarthalo/app/models/SHMapPath;->points:Ljava/util/List;

    invoke-interface {v1, v0, v3}, Llayout/mapAdapter/MapProviderContract$Provider;->replacePoints(Ljava/lang/String;Ljava/util/List;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 950
    :cond_1
    iget-object v0, p0, Llayout/MapViewFragment;->compassPathIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 951
    iget-object v0, p0, Llayout/MapViewFragment;->compassPathIds:Ljava/util/List;

    iget-object v1, p0, Llayout/MapViewFragment;->mapProvider:Llayout/mapAdapter/MapProviderContract$Provider;

    .line 952
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p1, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Llayout/mapAdapter/MapProviderContract$Provider;->drawPaths(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 951
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 956
    :cond_2
    iget-object v0, p0, Llayout/MapViewFragment;->mapProvider:Llayout/mapAdapter/MapProviderContract$Provider;

    invoke-interface {v0, p1}, Llayout/mapAdapter/MapProviderContract$Provider;->drawPaths(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Llayout/MapViewFragment;->compassPathIds:Ljava/util/List;

    :cond_3
    :goto_2
    return-void
.end method

.method private updateFavouriteMarkers(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/UserFavourite;",
            ">;)V"
        }
    .end annotation

    .line 1101
    iget-object v0, p0, Llayout/MapViewFragment;->mapProvider:Llayout/mapAdapter/MapProviderContract$Provider;

    const/4 v1, 0x3

    new-array v1, v1, [Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;

    sget-object v2, Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;->Home:Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;->Work:Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;->Favourite:Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Llayout/mapAdapter/MapProviderContract$Provider;->removeMarkers([Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;)V

    .line 1102
    invoke-virtual {p0, p1}, Llayout/MapViewFragment;->drawFavouritesMarkers(Ljava/util/List;)V

    return-void
.end method

.method private updateFavouriteVisuals(Lbike/smarthalo/app/models/SHLocation;)V
    .locals 2
    .param p1    # Lbike/smarthalo/app/models/SHLocation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1082
    iget-object v0, p0, Llayout/MapViewFragment;->destination_panel:Landroid/widget/LinearLayout;

    const v1, 0x7f0a0305

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const/4 v1, 0x0

    .line 1083
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1085
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHLocation;->realmGet$type()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    const/16 p1, 0x8

    .line 1096
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    :pswitch_0
    const p1, 0x7f0800e5

    .line 1087
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_1
    const p1, 0x7f08027d

    .line 1093
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_2
    const p1, 0x7f08010e

    .line 1090
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateInstructionUnits(Lbike/smarthalo/app/models/PresentationNavigationState;ZLandroid/location/Location;)V
    .locals 5

    .line 571
    iget-object p3, p0, Llayout/MapViewFragment;->direction_panel:Landroid/widget/LinearLayout;

    const v0, 0x7f0a02f9

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 572
    iget v0, p1, Lbike/smarthalo/app/models/PresentationNavigationState;->distanceToManeuvre:F

    float-to-double v0, v0

    .line 574
    invoke-static {p2, v0, v1}, Lbike/smarthalo/app/helpers/MapHelper;->getDistanceToManoeuverString(ZD)Ljava/lang/String;

    move-result-object p2

    .line 578
    iget-object v0, p1, Lbike/smarthalo/app/models/PresentationNavigationState;->navigationMode:Lbike/smarthalo/navigation/models/NavigationMode;

    sget-object v1, Lbike/smarthalo/navigation/models/NavigationMode;->AsTheCrowFliesGPS:Lbike/smarthalo/navigation/models/NavigationMode;

    const v2, 0x7f110286

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v1, :cond_1

    .line 579
    iget-object p1, p1, Lbike/smarthalo/app/models/PresentationNavigationState;->currentBearing:Ljava/lang/Integer;

    if-nez p1, :cond_0

    .line 580
    invoke-virtual {p0, v2}, Llayout/MapViewFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const p1, 0x7f110285

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p2, v0, v3

    .line 581
    invoke-virtual {p0, p1, v0}, Llayout/MapViewFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 582
    :cond_1
    invoke-virtual {p1}, Lbike/smarthalo/app/models/PresentationNavigationState;->isOfflineOffPath()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 583
    iget-object v0, p1, Lbike/smarthalo/app/models/PresentationNavigationState;->currentBearing:Ljava/lang/Integer;

    if-nez v0, :cond_2

    .line 584
    invoke-virtual {p0, v2}, Llayout/MapViewFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 585
    :cond_2
    invoke-virtual {p1}, Lbike/smarthalo/app/models/PresentationNavigationState;->isPreOfflineNavigation()Z

    move-result p1

    if-eqz p1, :cond_3

    const p1, 0x7f110294

    .line 586
    new-array v0, v4, [Ljava/lang/Object;

    aput-object p2, v0, v3

    invoke-virtual {p0, p1, v0}, Llayout/MapViewFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    const p1, 0x7f110293

    .line 588
    new-array v0, v4, [Ljava/lang/Object;

    aput-object p2, v0, v3

    invoke-virtual {p0, p1, v0}, Llayout/MapViewFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 591
    :cond_4
    iget v0, p1, Lbike/smarthalo/app/models/PresentationNavigationState;->stepType:I

    sget-object v1, Lbike/smarthalo/navigation/models/StepType;->DEPART:Lbike/smarthalo/navigation/models/StepType;

    invoke-virtual {v1}, Lbike/smarthalo/navigation/models/StepType;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v0, v1, :cond_5

    const v0, 0x7f1102ae

    new-array v1, v2, [Ljava/lang/Object;

    iget-object p1, p1, Lbike/smarthalo/app/models/PresentationNavigationState;->stepDescription:Ljava/lang/String;

    aput-object p1, v1, v3

    aput-object p2, v1, v4

    .line 592
    invoke-virtual {p0, v0, v1}, Llayout/MapViewFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_5
    const v0, 0x7f1102af

    new-array v1, v2, [Ljava/lang/Object;

    iget-object p1, p1, Lbike/smarthalo/app/models/PresentationNavigationState;->stepDescription:Ljava/lang/String;

    aput-object p1, v1, v3

    aput-object p2, v1, v4

    .line 593
    invoke-virtual {p0, v0, v1}, Llayout/MapViewFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 596
    :goto_0
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateNavigationMapAnnotations(Lbike/smarthalo/app/models/PresentationNavigationState;Landroid/location/Location;)V
    .locals 5

    .line 893
    invoke-virtual {p0}, Llayout/MapViewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 894
    iget-object v1, p0, Llayout/MapViewFragment;->mapProvider:Llayout/mapAdapter/MapProviderContract$Provider;

    if-nez v1, :cond_0

    goto :goto_0

    .line 898
    :cond_0
    iget-boolean v1, p0, Llayout/MapViewFragment;->isNewPath:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 899
    invoke-direct {p0}, Llayout/MapViewFragment;->clearOldPath()V

    .line 900
    invoke-direct {p0}, Llayout/MapViewFragment;->removeCompletedPath()V

    .line 902
    iget-object v1, p0, Llayout/MapViewFragment;->mapProvider:Llayout/mapAdapter/MapProviderContract$Provider;

    const/4 v3, 0x1

    new-array v3, v3, [Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;

    sget-object v4, Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;->WalkYourBike:Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;

    aput-object v4, v3, v2

    invoke-interface {v1, v3}, Llayout/mapAdapter/MapProviderContract$Provider;->removeMarkers([Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;)V

    .line 905
    :cond_1
    invoke-direct {p0, p1, v0}, Llayout/MapViewFragment;->updatePastLocationsPath(Lbike/smarthalo/app/models/PresentationNavigationState;Landroid/content/Context;)V

    .line 907
    iget-object v1, p1, Lbike/smarthalo/app/models/PresentationNavigationState;->updateType:Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    sget-object v3, Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;->ArrivedAtDestination:Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    if-eq v1, v3, :cond_4

    .line 908
    invoke-virtual {p1}, Lbike/smarthalo/app/models/PresentationNavigationState;->hasCompassPath()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 909
    invoke-static {p1, p2, v0}, Lbike/smarthalo/app/helpers/MapHelper;->getNewCompassPath(Lbike/smarthalo/app/models/PresentationNavigationState;Landroid/location/Location;Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 910
    invoke-direct {p0, v1}, Llayout/MapViewFragment;->updateCompassPath(Ljava/util/List;)V

    .line 912
    :cond_2
    invoke-virtual {p1}, Lbike/smarthalo/app/models/PresentationNavigationState;->hasTurnByTurnPath()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 913
    iget-object v1, p0, Llayout/MapViewFragment;->currentProperty:Lbike/smarthalo/app/models/PathProperty;

    invoke-static {p1, p2, v0, v1}, Lbike/smarthalo/app/helpers/MapHelper;->getNewTurnByTurnMapPaths(Lbike/smarthalo/app/models/PresentationNavigationState;Landroid/location/Location;Landroid/content/Context;Lbike/smarthalo/app/models/PathProperty;)Ljava/util/List;

    move-result-object p2

    .line 914
    iget-object v0, p1, Lbike/smarthalo/app/models/PresentationNavigationState;->directions:Ljava/util/List;

    invoke-direct {p0, p2, v0}, Llayout/MapViewFragment;->updateTurnByTurnPath(Ljava/util/List;Ljava/util/List;)V

    .line 917
    :cond_3
    invoke-direct {p0, p1}, Llayout/MapViewFragment;->addCautionMarkers(Lbike/smarthalo/app/models/PresentationNavigationState;)V

    .line 918
    iput-boolean v2, p0, Llayout/MapViewFragment;->isNewPath:Z

    :cond_4
    return-void

    :cond_5
    :goto_0
    return-void
.end method

.method private updatePastLocationsPath(Lbike/smarthalo/app/models/PresentationNavigationState;Landroid/content/Context;)V
    .locals 3

    .line 997
    iget-object v0, p1, Lbike/smarthalo/app/models/PresentationNavigationState;->pastLocations:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lbike/smarthalo/app/models/PresentationNavigationState;->pastLocations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const v0, 0x7f060045

    .line 998
    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    .line 999
    iget-object v0, p0, Llayout/MapViewFragment;->completedPathId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1000
    iget-object p2, p0, Llayout/MapViewFragment;->mapProvider:Llayout/mapAdapter/MapProviderContract$Provider;

    iget-object v0, p0, Llayout/MapViewFragment;->completedPathId:Ljava/lang/String;

    iget-object p1, p1, Lbike/smarthalo/app/models/PresentationNavigationState;->pastLocations:Ljava/util/List;

    invoke-interface {p2, v0, p1}, Llayout/mapAdapter/MapProviderContract$Provider;->replacePoints(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 1002
    :cond_0
    iget-object v0, p0, Llayout/MapViewFragment;->mapProvider:Llayout/mapAdapter/MapProviderContract$Provider;

    new-instance v1, Lbike/smarthalo/app/models/SHMapPath;

    iget-object p1, p1, Lbike/smarthalo/app/models/PresentationNavigationState;->pastLocations:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {v1, p2, p1, v2}, Lbike/smarthalo/app/models/SHMapPath;-><init>(ILjava/util/List;Z)V

    invoke-interface {v0, v1}, Llayout/mapAdapter/MapProviderContract$Provider;->drawPath(Lbike/smarthalo/app/models/SHMapPath;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Llayout/MapViewFragment;->completedPathId:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method private updatePathTypeList(Ljava/util/List;Ljava/util/List;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHPresentationDirection;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;",
            ">;"
        }
    .end annotation

    .line 983
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 985
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 986
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 987
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v1, :cond_0

    .line 988
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbike/smarthalo/app/models/SHPresentationDirection;

    .line 989
    iget-object v3, v3, Lbike/smarthalo/app/models/SHPresentationDirection;->type:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private updateTurnByTurnPath(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHMapPath;",
            ">;",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHPresentationDirection;",
            ">;)V"
        }
    .end annotation

    .line 962
    iget-object v0, p0, Llayout/MapViewFragment;->pathIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 965
    :goto_0
    iget-object p2, p0, Llayout/MapViewFragment;->pathIds:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-le p2, v0, :cond_0

    .line 966
    iget-object p2, p0, Llayout/MapViewFragment;->mapProvider:Llayout/mapAdapter/MapProviderContract$Provider;

    iget-object v0, p0, Llayout/MapViewFragment;->pathIds:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p2, v0}, Llayout/mapAdapter/MapProviderContract$Provider;->removePath(Ljava/lang/String;)V

    .line 967
    iget-object p2, p0, Llayout/MapViewFragment;->pathIds:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 972
    :cond_0
    iget-object p2, p0, Llayout/MapViewFragment;->mapProvider:Llayout/mapAdapter/MapProviderContract$Provider;

    iget-object v0, p0, Llayout/MapViewFragment;->pathIds:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/models/SHMapPath;

    iget-object p1, p1, Lbike/smarthalo/app/models/SHMapPath;->points:Ljava/util/List;

    invoke-interface {p2, v0, p1}, Llayout/mapAdapter/MapProviderContract$Provider;->replacePoints(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    .line 976
    :cond_1
    iget-object v0, p0, Llayout/MapViewFragment;->mapProvider:Llayout/mapAdapter/MapProviderContract$Provider;

    invoke-interface {v0, p1}, Llayout/mapAdapter/MapProviderContract$Provider;->drawPaths(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Llayout/MapViewFragment;->pathIds:Ljava/util/List;

    .line 977
    iget-object p1, p0, Llayout/MapViewFragment;->pathIds:Ljava/util/List;

    invoke-direct {p0, p1, p2}, Llayout/MapViewFragment;->updatePathTypeList(Ljava/util/List;Ljava/util/List;)Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Llayout/MapViewFragment;->pathTypes:Ljava/util/Map;

    :goto_1
    return-void
.end method

.method private updateViewWithTitle(Lbike/smarthalo/app/models/PresentationNavigationState;Ljava/lang/String;)V
    .locals 9

    .line 511
    invoke-virtual {p0}, Llayout/MapViewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 516
    :cond_0
    iget-object v1, p0, Llayout/MapViewFragment;->destination_panel:Landroid/widget/LinearLayout;

    const v2, 0x7f0a0135

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 517
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 519
    iget-object p2, p0, Llayout/MapViewFragment;->destination_panel:Landroid/widget/LinearLayout;

    const v1, 0x7f0a0570

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 520
    iget-object v1, p0, Llayout/MapViewFragment;->destination_panel:Landroid/widget/LinearLayout;

    const v2, 0x7f0a0571

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    .line 525
    iget-object v5, p1, Lbike/smarthalo/app/models/PresentationNavigationState;->routeInfoArrayList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lbike/smarthalo/app/models/PresentationModels/PresentationRouteInfo;

    .line 526
    iget-object v7, v6, Lbike/smarthalo/app/models/PresentationModels/PresentationRouteInfo;->type:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    iget-object v8, p1, Lbike/smarthalo/app/models/PresentationNavigationState;->selectedRouteType:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    if-eq v7, v8, :cond_2

    iget-object v7, p1, Lbike/smarthalo/app/models/PresentationNavigationState;->navigationMode:Lbike/smarthalo/navigation/models/NavigationMode;

    sget-object v8, Lbike/smarthalo/navigation/models/NavigationMode;->TurnByTurn:Lbike/smarthalo/navigation/models/NavigationMode;

    if-eq v7, v8, :cond_1

    .line 528
    :cond_2
    iget-object p1, v6, Lbike/smarthalo/app/models/PresentationModels/PresentationRouteInfo;->distance:Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 529
    iget-object p1, v6, Lbike/smarthalo/app/models/PresentationModels/PresentationRouteInfo;->duration:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 533
    :cond_3
    iget-object p1, p0, Llayout/MapViewFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$Presenter;

    invoke-interface {p1}, Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$Presenter;->getIsMetric()Z

    move-result p1

    if-eqz p1, :cond_4

    float-to-double v5, v2

    .line 534
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p1}, Lbike/smarthalo/app/helpers/SHConversionHelper;->metersToKilometersDisplay(Ljava/lang/Double;)D

    move-result-wide v5

    const p1, 0x7f110233

    .line 535
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_4
    float-to-double v5, v2

    .line 537
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p1}, Lbike/smarthalo/app/helpers/SHConversionHelper;->metersToMilesDisplay(Ljava/lang/Double;)D

    move-result-wide v5

    const p1, 0x7f110298

    .line 538
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    .line 541
    :goto_0
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 542
    iget-object p1, p0, Llayout/MapViewFragment;->destination_panel:Landroid/widget/LinearLayout;

    const p2, 0x7f0a0572

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    long-to-float p2, v3

    .line 544
    invoke-static {p2, v0}, Lbike/smarthalo/app/helpers/MapHelper;->getDisplayTimeHtml(FLandroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public centerMapOnBike()V
    .locals 2

    .line 419
    iget-object v0, p0, Llayout/MapViewFragment;->bikeLocation:Lbike/smarthalo/app/models/SHLocation;

    if-eqz v0, :cond_0

    .line 420
    iget-object v1, p0, Llayout/MapViewFragment;->mapProvider:Llayout/mapAdapter/MapProviderContract$Provider;

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHLocation;->getLocation()Landroid/location/Location;

    move-result-object v0

    invoke-interface {v1, v0}, Llayout/mapAdapter/MapProviderContract$Provider;->centerOnLocation(Landroid/location/Location;)V

    :cond_0
    return-void
.end method

.method public centerMapOnUser(Z)V
    .locals 1

    .line 401
    iget-object v0, p0, Llayout/MapViewFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$Presenter;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$Presenter;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 404
    iget-object p1, p0, Llayout/MapViewFragment;->mapProvider:Llayout/mapAdapter/MapProviderContract$Provider;

    invoke-interface {p1, v0}, Llayout/mapAdapter/MapProviderContract$Provider;->centerOnLocation(Landroid/location/Location;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 406
    invoke-virtual {p0}, Llayout/MapViewFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lbike/smarthalo/app/helpers/SHDialogHelper;->showNoLocationToast(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public displayFilePickerForGPX()V
    .locals 1

    .line 451
    invoke-direct {p0}, Llayout/MapViewFragment;->canPrepareMapWithTrip()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    invoke-virtual {p0}, Llayout/MapViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, 0xcd

    .line 454
    invoke-static {p0, v0}, Lbike/smarthalo/app/helpers/ActivityHelper;->openGPXFilePickerActivity(Landroidx/fragment/app/Fragment;I)V

    :cond_0
    return-void
.end method

.method public drawBikeMarker(Lbike/smarthalo/app/models/SHLocation;)V
    .locals 4

    .line 1078
    iget-object v0, p0, Llayout/MapViewFragment;->mapProvider:Llayout/mapAdapter/MapProviderContract$Provider;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHLocation;->getSHLatLng()Lbike/smarthalo/app/models/SHLatLng;

    move-result-object p1

    const v1, 0x7f110075

    invoke-virtual {p0, v1}, Llayout/MapViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f110074

    invoke-virtual {p0, v2}, Llayout/MapViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;->Bike:Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;

    invoke-interface {v0, p1, v1, v2, v3}, Llayout/mapAdapter/MapProviderContract$Provider;->addMarker(Lbike/smarthalo/app/models/SHLatLng;Ljava/lang/String;Ljava/lang/String;Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;)V

    return-void
.end method

.method public drawFavouritesMarkers(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/UserFavourite;",
            ">;)V"
        }
    .end annotation

    .line 1106
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/models/UserFavourite;

    .line 1107
    new-instance v1, Lbike/smarthalo/app/models/SHLatLng;

    invoke-virtual {v0}, Lbike/smarthalo/app/models/UserFavourite;->realmGet$latitude()D

    move-result-wide v2

    invoke-virtual {v0}, Lbike/smarthalo/app/models/UserFavourite;->realmGet$longitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lbike/smarthalo/app/models/SHLatLng;-><init>(DD)V

    .line 1108
    invoke-virtual {v0}, Lbike/smarthalo/app/models/UserFavourite;->realmGet$label()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lbike/smarthalo/app/models/UserFavourite;->realmGet$label()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lbike/smarthalo/app/models/UserFavourite;->realmGet$label()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lbike/smarthalo/app/models/UserFavourite;->realmGet$address()Ljava/lang/String;

    move-result-object v2

    .line 1111
    :goto_1
    sget-object v3, Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;->Favourite:Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;

    .line 1113
    invoke-virtual {v0}, Lbike/smarthalo/app/models/UserFavourite;->getFavouriteType()Lbike/smarthalo/app/models/FavouriteType;

    move-result-object v4

    sget-object v5, Lbike/smarthalo/app/models/FavouriteType;->HOME:Lbike/smarthalo/app/models/FavouriteType;

    if-ne v4, v5, :cond_1

    const v0, 0x7f110191

    .line 1114
    invoke-virtual {p0, v0}, Llayout/MapViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1115
    sget-object v3, Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;->Home:Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;

    goto :goto_2

    .line 1116
    :cond_1
    invoke-virtual {v0}, Lbike/smarthalo/app/models/UserFavourite;->getFavouriteType()Lbike/smarthalo/app/models/FavouriteType;

    move-result-object v4

    sget-object v5, Lbike/smarthalo/app/models/FavouriteType;->WORK:Lbike/smarthalo/app/models/FavouriteType;

    if-ne v4, v5, :cond_2

    const v0, 0x7f1103c1

    .line 1117
    invoke-virtual {p0, v0}, Llayout/MapViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1118
    sget-object v3, Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;->Work:Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;

    goto :goto_2

    .line 1120
    :cond_2
    invoke-virtual {v0}, Lbike/smarthalo/app/models/UserFavourite;->realmGet$label()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lbike/smarthalo/app/models/UserFavourite;->realmGet$address()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    const-string v0, ""

    .line 1123
    :goto_2
    iget-object v4, p0, Llayout/MapViewFragment;->mapProvider:Llayout/mapAdapter/MapProviderContract$Provider;

    invoke-interface {v4, v1, v2, v0, v3}, Llayout/mapAdapter/MapProviderContract$Provider;->addMarker(Lbike/smarthalo/app/models/SHLatLng;Ljava/lang/String;Ljava/lang/String;Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public initialize(Lbike/smarthalo/app/models/PresentationNavigationState;Landroid/location/Location;)V
    .locals 6

    if-eqz p1, :cond_5

    .line 1189
    iget-object v0, p1, Lbike/smarthalo/app/models/PresentationNavigationState;->navigationMode:Lbike/smarthalo/navigation/models/NavigationMode;

    if-eqz v0, :cond_5

    .line 1190
    invoke-direct {p0}, Llayout/MapViewFragment;->removeAlternateRoutesMarkers()V

    .line 1191
    invoke-direct {p0}, Llayout/MapViewFragment;->removeNavigationMarkers()V

    .line 1193
    invoke-direct {p0, p1}, Llayout/MapViewFragment;->showEntireRide(Lbike/smarthalo/app/models/PresentationNavigationState;)V

    .line 1195
    iget-object v0, p1, Lbike/smarthalo/app/models/PresentationNavigationState;->destination:Lbike/smarthalo/app/models/SHLocation;

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHLocation;->isFavourite()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1196
    iget-object v0, p1, Lbike/smarthalo/app/models/PresentationNavigationState;->destination:Lbike/smarthalo/app/models/SHLocation;

    invoke-direct {p0, v0}, Llayout/MapViewFragment;->drawDestinationPin(Lbike/smarthalo/app/models/SHLocation;)V

    .line 1199
    :cond_0
    iget-object v0, p1, Lbike/smarthalo/app/models/PresentationNavigationState;->navigationMode:Lbike/smarthalo/navigation/models/NavigationMode;

    sget-object v1, Lbike/smarthalo/navigation/models/NavigationMode;->AsTheCrowFliesGPS:Lbike/smarthalo/navigation/models/NavigationMode;

    if-eq v0, v1, :cond_4

    iget-object v0, p1, Lbike/smarthalo/app/models/PresentationNavigationState;->navigationMode:Lbike/smarthalo/navigation/models/NavigationMode;

    sget-object v1, Lbike/smarthalo/navigation/models/NavigationMode;->OfflineTurnByTurn:Lbike/smarthalo/navigation/models/NavigationMode;

    if-eq v0, v1, :cond_4

    iget-object v0, p1, Lbike/smarthalo/app/models/PresentationNavigationState;->routeInfoArrayList:Ljava/util/ArrayList;

    .line 1201
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 1206
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 1209
    iget-object v2, p1, Lbike/smarthalo/app/models/PresentationNavigationState;->routeInfoArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbike/smarthalo/app/models/PresentationModels/PresentationRouteInfo;

    .line 1210
    iget-object v4, v3, Lbike/smarthalo/app/models/PresentationModels/PresentationRouteInfo;->type:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    iget-object v5, p1, Lbike/smarthalo/app/models/PresentationNavigationState;->selectedRouteType:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    if-eq v4, v5, :cond_2

    .line 1211
    iget-object v4, v3, Lbike/smarthalo/app/models/PresentationModels/PresentationRouteInfo;->type:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    invoke-direct {p0, v4, v3}, Llayout/MapViewFragment;->createAlternateRouteItem(Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;Lbike/smarthalo/app/models/PresentationModels/PresentationRouteInfo;)Lbike/smarthalo/app/models/PresentationModels/AlternateRouteItem;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1213
    :cond_2
    iget-object v1, v3, Lbike/smarthalo/app/models/PresentationModels/PresentationRouteInfo;->type:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    invoke-direct {p0, v1, v3}, Llayout/MapViewFragment;->createAlternateRouteItem(Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;Lbike/smarthalo/app/models/PresentationModels/PresentationRouteInfo;)Lbike/smarthalo/app/models/PresentationModels/AlternateRouteItem;

    move-result-object v1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 1216
    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1217
    iget-object v1, p0, Llayout/MapViewFragment;->alternateRoutesAdapter:Llayout/adapters/AlternateRoutesControlAdapter;

    invoke-virtual {v1, v0}, Llayout/adapters/AlternateRoutesControlAdapter;->onNewData(Ljava/util/List;)V

    .line 1218
    iget-object v0, p0, Llayout/MapViewFragment;->alternateRoutesControl:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 1219
    iget-object v0, p1, Lbike/smarthalo/app/models/PresentationNavigationState;->presentationMarkerLocations:Ljava/util/List;

    iget-object v1, p1, Lbike/smarthalo/app/models/PresentationNavigationState;->selectedRouteType:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    invoke-direct {p0, v0, v1}, Llayout/MapViewFragment;->setUpAlternateRoutesMarkers(Ljava/util/List;Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;)V

    goto :goto_2

    .line 1202
    :cond_4
    :goto_1
    iget-object v0, p0, Llayout/MapViewFragment;->alternateRoutesControl:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 1203
    iget-object v0, p0, Llayout/MapViewFragment;->pathProperty:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->hide()V

    .line 1222
    :goto_2
    invoke-direct {p0, p1, p2}, Llayout/MapViewFragment;->prepareDestinationPanel(Lbike/smarthalo/app/models/PresentationNavigationState;Landroid/location/Location;)V

    :cond_5
    return-void
.end method

.method public inject(Llayout/ViewContracts/MapConsumerContract;Lbike/smarthalo/app/coordinators/FavouritesController;Llayout/statusBar/StatusBarLayout$IOnHelpCardVisibilityChanged;)V
    .locals 0

    .line 217
    iput-object p1, p0, Llayout/MapViewFragment;->mapConsumerContract:Llayout/ViewContracts/MapConsumerContract;

    .line 218
    iput-object p2, p0, Llayout/MapViewFragment;->favouritesController:Lbike/smarthalo/app/coordinators/FavouritesController;

    .line 219
    invoke-virtual {p0, p3}, Llayout/MapViewFragment;->setOnHelpCardVisibilityListener(Llayout/statusBar/StatusBarLayout$IOnHelpCardVisibilityChanged;)V

    return-void
.end method

.method public nextProperty()V
    .locals 2

    .line 425
    iget-object v0, p0, Llayout/MapViewFragment;->currentProperty:Lbike/smarthalo/app/models/PathProperty;

    invoke-virtual {v0}, Lbike/smarthalo/app/models/PathProperty;->next()Lbike/smarthalo/app/models/PathProperty;

    move-result-object v0

    iput-object v0, p0, Llayout/MapViewFragment;->currentProperty:Lbike/smarthalo/app/models/PathProperty;

    .line 427
    sget-object v0, Llayout/MapViewFragment$4;->$SwitchMap$bike$smarthalo$app$models$PathProperty:[I

    iget-object v1, p0, Llayout/MapViewFragment;->currentProperty:Lbike/smarthalo/app/models/PathProperty;

    invoke-virtual {v1}, Lbike/smarthalo/app/models/PathProperty;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 441
    :pswitch_0
    iget-object v0, p0, Llayout/MapViewFragment;->pathProperty:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const v1, 0x7f080232

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setImageResource(I)V

    goto :goto_0

    .line 437
    :pswitch_1
    iget-object v0, p0, Llayout/MapViewFragment;->pathProperty:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const v1, 0x7f080233

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setImageResource(I)V

    goto :goto_0

    .line 433
    :pswitch_2
    iget-object v0, p0, Llayout/MapViewFragment;->pathProperty:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const v1, 0x7f0800e6

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setImageResource(I)V

    goto :goto_0

    .line 429
    :pswitch_3
    iget-object v0, p0, Llayout/MapViewFragment;->pathProperty:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const v1, 0x7f080234

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setImageResource(I)V

    .line 445
    :goto_0
    invoke-direct {p0}, Llayout/MapViewFragment;->clearOldPath()V

    .line 447
    iget-object v0, p0, Llayout/MapViewFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$Presenter;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$Presenter;->getPresentationState()Lbike/smarthalo/app/models/PresentationNavigationState;

    move-result-object v0

    iget-object v1, p0, Llayout/MapViewFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$Presenter;

    invoke-interface {v1}, Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$Presenter;->getCurrentLocation()Landroid/location/Location;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Llayout/MapViewFragment;->updateNavigationMapAnnotations(Lbike/smarthalo/app/models/PresentationNavigationState;Landroid/location/Location;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/16 v0, 0xcd

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    if-eqz p3, :cond_1

    .line 757
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 758
    invoke-virtual {p0}, Llayout/MapViewFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 760
    iget-object p3, p0, Llayout/MapViewFragment;->mapConsumerContract:Llayout/ViewContracts/MapConsumerContract;

    const v0, 0x7f1102b3

    invoke-interface {p3, v0}, Llayout/ViewContracts/MapConsumerContract;->showMapLoadingDialog(I)V

    const-wide/16 v0, 0x1f4

    .line 761
    new-instance p3, Llayout/-$$Lambda$MapViewFragment$DvH99VI24zc4V6UDuePh7MuRkFE;

    invoke-direct {p3, p0, p1}, Llayout/-$$Lambda$MapViewFragment$DvH99VI24zc4V6UDuePh7MuRkFE;-><init>(Llayout/MapViewFragment;Landroid/net/Uri;)V

    invoke-static {p2, v0, v1, p3}, Lbike/smarthalo/sdk/ContextHelper;->runOnMainThreadDelayed(Landroid/content/Context;JLjava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const p1, 0x7f110185

    .line 765
    invoke-virtual {p0, p1}, Llayout/MapViewFragment;->onError(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .line 777
    iget-object v0, p0, Llayout/MapViewFragment;->alternateRoutesAdapter:Llayout/adapters/AlternateRoutesControlAdapter;

    invoke-virtual {v0}, Llayout/adapters/AlternateRoutesControlAdapter;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 779
    iget-object v1, p0, Llayout/MapViewFragment;->alternateRoutesAdapter:Llayout/adapters/AlternateRoutesControlAdapter;

    invoke-virtual {v1}, Llayout/adapters/AlternateRoutesControlAdapter;->close()V

    :cond_0
    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 157
    invoke-super {p0, p1, p2, p3}, Llayout/StatusBarFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const/4 v0, 0x0

    const v1, 0x7f0d0060

    .line 159
    invoke-virtual {p1, v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Llayout/MapViewFragment;->rootView:Landroid/view/View;

    .line 160
    iget-object p1, p0, Llayout/MapViewFragment;->rootView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lbike/smarthalo/app/dependencyManagement/InjectionHelper;->getGeocodingManagerComponent(Landroid/content/Context;)Lbike/smarthalo/app/dependencyManagement/components/GeocodingManagerComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lbike/smarthalo/app/dependencyManagement/components/GeocodingManagerComponent;->inject(Llayout/MapViewFragment;)V

    .line 162
    iget-object p1, p0, Llayout/MapViewFragment;->rootView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 164
    :goto_0
    iget-object v4, p0, Llayout/MapViewFragment;->favouritesController:Lbike/smarthalo/app/coordinators/FavouritesController;

    iget-object v5, p0, Llayout/MapViewFragment;->geocodingManager:Lbike/smarthalo/app/managers/contracts/GeocodingManagerContract;

    iget-object v6, p0, Llayout/MapViewFragment;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    iget-object v7, p0, Llayout/MapViewFragment;->appStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;

    move-object v1, p1

    move-object v3, p0

    invoke-static/range {v1 .. v7}, Lbike/smarthalo/app/presenters/NavigationPresenter;->buildPresenter(Landroid/content/Context;ZLbike/smarthalo/app/presenters/presenterContracts/NavigationContract$View;Lbike/smarthalo/app/coordinators/FavouritesController;Lbike/smarthalo/app/managers/contracts/GeocodingManagerContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;)Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$Presenter;

    move-result-object p2

    iput-object p2, p0, Llayout/MapViewFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$Presenter;

    .line 174
    iget-object p2, p0, Llayout/MapViewFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0a0196

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iput-object p2, p0, Llayout/MapViewFragment;->findMe:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 175
    iget-object p2, p0, Llayout/MapViewFragment;->findMe:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 177
    iget-object p2, p0, Llayout/MapViewFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0a0195

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iput-object p2, p0, Llayout/MapViewFragment;->findBike:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 178
    iget-object p2, p0, Llayout/MapViewFragment;->findBike:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->hide()V

    .line 179
    iget-object p2, p0, Llayout/MapViewFragment;->findBike:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 181
    iget-object p2, p0, Llayout/MapViewFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0a042b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iput-object p2, p0, Llayout/MapViewFragment;->pathProperty:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 182
    iget-object p2, p0, Llayout/MapViewFragment;->pathProperty:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->hide()V

    .line 183
    iget-object p2, p0, Llayout/MapViewFragment;->pathProperty:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const-string p2, "GPX"

    const/high16 v1, 0x42f00000    # 120.0f

    const v2, 0x7f060128

    .line 185
    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-static {p2, v1, v2}, Lbike/smarthalo/app/helpers/BitmapHelper;->textAsBitmap(Ljava/lang/String;FI)Landroid/graphics/Bitmap;

    .line 187
    iget-object p2, p0, Llayout/MapViewFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0a00f0

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Llayout/MapViewFragment;->clearRoute:Landroid/widget/Button;

    .line 188
    iget-object p2, p0, Llayout/MapViewFragment;->clearRoute:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 190
    iget-object p2, p0, Llayout/MapViewFragment;->rootView:Landroid/view/View;

    const v2, 0x7f0a00a9

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Llayout/MapViewFragment;->bottomDrawer:Landroid/widget/LinearLayout;

    .line 192
    iget-object p2, p0, Llayout/MapViewFragment;->rootView:Landroid/view/View;

    const v2, 0x7f0a0377

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Llayout/MapViewFragment;->mapControlsOverlay:Landroid/widget/LinearLayout;

    .line 194
    iget-object p2, p0, Llayout/MapViewFragment;->rootView:Landroid/view/View;

    const v2, 0x7f0a0139

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Llayout/MapViewFragment;->destination_panel:Landroid/widget/LinearLayout;

    .line 195
    iget-object p2, p0, Llayout/MapViewFragment;->destination_panel:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 197
    iget-object p2, p0, Llayout/MapViewFragment;->rootView:Landroid/view/View;

    const v0, 0x7f0a0144

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Llayout/MapViewFragment;->direction_panel:Landroid/widget/LinearLayout;

    .line 198
    iget-object p2, p0, Llayout/MapViewFragment;->direction_panel:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 200
    new-instance p2, Landroid/view/GestureDetector;

    iget-object v0, p0, Llayout/MapViewFragment;->simpleOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {p2, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Llayout/MapViewFragment;->gestureDetector:Landroid/view/GestureDetector;

    .line 202
    invoke-virtual {p0}, Llayout/MapViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_1

    const v0, 0x7f0a0372

    .line 204
    invoke-virtual {p2, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Llayout/MainToolbarLayout;

    iput-object p2, p0, Llayout/MapViewFragment;->mainToolbarLayout:Llayout/MainToolbarLayout;

    .line 207
    :cond_1
    iget-object v1, p0, Llayout/MapViewFragment;->rootView:Landroid/view/View;

    const v2, 0x7f0a0375

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Llayout/MapViewFragment;->initializeStatusBar(Landroid/view/View;ILlayout/statusBar/StatusBarSwitch$StatusBarSwitchEventListener;ZLlayout/StatusBarFragment$IHelpCardListener;)V

    .line 209
    iget-object p2, p0, Llayout/MapViewFragment;->rootView:Landroid/view/View;

    invoke-direct {p0, p3, p2}, Llayout/MapViewFragment;->initializeMap(Landroid/os/Bundle;Landroid/view/View;)V

    .line 211
    invoke-direct {p0, p1}, Llayout/MapViewFragment;->setUpAlternateRoutesControl(Landroid/content/Context;)V

    .line 213
    iget-object p1, p0, Llayout/MapViewFragment;->rootView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 822
    invoke-super {p0}, Llayout/StatusBarFragment;->onDestroy()V

    .line 823
    iget-object v0, p0, Llayout/MapViewFragment;->mapView:Llayout/mapAdapter/SHGoogleMapsMap;

    invoke-virtual {v0}, Llayout/mapAdapter/SHGoogleMapsMap;->onDestroy()V

    return-void
.end method

.method public onDirectNavigation(Lbike/smarthalo/app/models/PresentationNavigationState;Landroid/location/Location;)V
    .locals 3

    .line 1324
    invoke-virtual {p0}, Llayout/MapViewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1327
    invoke-direct {p0}, Llayout/MapViewFragment;->removeNavigationMarkers()V

    .line 1328
    invoke-direct {p0}, Llayout/MapViewFragment;->removeAlternateRoutesMarkers()V

    .line 1329
    iget-object v1, p0, Llayout/MapViewFragment;->alternateRoutesControl:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    const/4 v1, 0x1

    .line 1330
    invoke-direct {p0, v0, p1, v1, p2}, Llayout/MapViewFragment;->recoverNavigation(Landroid/content/Context;Lbike/smarthalo/app/models/PresentationNavigationState;ZLandroid/location/Location;)V

    :cond_0
    return-void
.end method

.method public onError(I)V
    .locals 2

    .line 1028
    iget-object v0, p0, Llayout/MapViewFragment;->mapConsumerContract:Llayout/ViewContracts/MapConsumerContract;

    invoke-interface {v0}, Llayout/ViewContracts/MapConsumerContract;->hideMapLoadingDialog()V

    .line 1029
    invoke-virtual {p0}, Llayout/MapViewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lbike/smarthalo/app/helpers/SHDialogHelper;->showToast(IILandroid/content/Context;)V

    return-void
.end method

.method public onFavouritesUpdated(Ljava/util/List;Lbike/smarthalo/app/models/SHLocation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/UserFavourite;",
            ">;",
            "Lbike/smarthalo/app/models/SHLocation;",
            ")V"
        }
    .end annotation

    .line 1010
    invoke-direct {p0, p1}, Llayout/MapViewFragment;->updateFavouriteMarkers(Ljava/util/List;)V

    if-eqz p2, :cond_0

    .line 1013
    invoke-direct {p0, p2}, Llayout/MapViewFragment;->updateFavouriteVisuals(Lbike/smarthalo/app/models/SHLocation;)V

    .line 1014
    invoke-direct {p0}, Llayout/MapViewFragment;->removeDestinationPin()V

    .line 1016
    invoke-virtual {p2}, Lbike/smarthalo/app/models/SHLocation;->isFavourite()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1017
    invoke-direct {p0, p2}, Llayout/MapViewFragment;->drawDestinationPin(Lbike/smarthalo/app/models/SHLocation;)V

    :cond_0
    return-void
.end method

.method public onFindMarkerVisibilityChanged(Z)V
    .locals 1

    .line 1033
    invoke-virtual {p0}, Llayout/MapViewFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1037
    :cond_0
    invoke-direct {p0}, Llayout/MapViewFragment;->removeBikeMarker()V

    if-eqz p1, :cond_1

    .line 1040
    invoke-virtual {p0}, Llayout/MapViewFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1042
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/UserStorageStaticManager;->getUserBikeLocation()Lbike/smarthalo/app/models/SHLocation;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1045
    invoke-virtual {p0, p1}, Llayout/MapViewFragment;->drawBikeMarker(Lbike/smarthalo/app/models/SHLocation;)V

    .line 1046
    iput-object p1, p0, Llayout/MapViewFragment;->bikeLocation:Lbike/smarthalo/app/models/SHLocation;

    .line 1047
    iget-object p1, p0, Llayout/MapViewFragment;->findBike:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->show()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1051
    iput-object p1, p0, Llayout/MapViewFragment;->bikeLocation:Lbike/smarthalo/app/models/SHLocation;

    .line 1052
    iget-object p1, p0, Llayout/MapViewFragment;->findBike:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->hide()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onFinish(Lbike/smarthalo/app/models/PresentationNavigationState;Landroid/location/Location;)V
    .locals 1

    .line 1180
    invoke-virtual {p0}, Llayout/MapViewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1183
    invoke-direct {p0, p1, p2, v0}, Llayout/MapViewFragment;->finishDirections(Lbike/smarthalo/app/models/PresentationNavigationState;Landroid/location/Location;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onFirstLocationReady(Landroid/location/Location;)V
    .locals 1

    .line 1292
    iget-object v0, p0, Llayout/MapViewFragment;->mapProvider:Llayout/mapAdapter/MapProviderContract$Provider;

    invoke-interface {v0, p1}, Llayout/mapAdapter/MapProviderContract$Provider;->centerOnLocation(Landroid/location/Location;)V

    return-void
.end method

.method public onGPXButtonSelected()V
    .locals 0

    .line 704
    invoke-virtual {p0}, Llayout/MapViewFragment;->displayFilePickerForGPX()V

    return-void
.end method

.method public onHelpCardClicked()V
    .locals 2

    .line 306
    invoke-virtual {p0}, Llayout/MapViewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Llayout/MapViewFragment;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    const-string v1, "NavHelp"

    invoke-interface {v0, v1}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendScreenViewEvent(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 816
    invoke-super {p0}, Llayout/StatusBarFragment;->onLowMemory()V

    .line 817
    iget-object v0, p0, Llayout/MapViewFragment;->mapView:Llayout/mapAdapter/SHGoogleMapsMap;

    invoke-virtual {v0}, Llayout/mapAdapter/SHGoogleMapsMap;->onLowMemory()V

    return-void
.end method

.method public onMapClick(Lbike/smarthalo/app/models/SHLocation;)V
    .locals 0

    .line 1431
    iget-object p1, p0, Llayout/MapViewFragment;->alternateRoutesAdapter:Llayout/adapters/AlternateRoutesControlAdapter;

    invoke-virtual {p1}, Llayout/adapters/AlternateRoutesControlAdapter;->close()V

    return-void
.end method

.method public onMapReady(Llayout/mapAdapter/MapProviderContract$Provider;)V
    .locals 0

    .line 1409
    iput-object p1, p0, Llayout/MapViewFragment;->mapProvider:Llayout/mapAdapter/MapProviderContract$Provider;

    .line 1411
    invoke-direct {p0}, Llayout/MapViewFragment;->setMapListeners()V

    .line 1413
    invoke-direct {p0}, Llayout/MapViewFragment;->checkAndResumeView()V

    return-void
.end method

.method public onMapViewLongPress(Lbike/smarthalo/app/models/SHLocation;)V
    .locals 2

    .line 1370
    invoke-virtual {p0}, Llayout/MapViewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1371
    iget-object v1, p0, Llayout/MapViewFragment;->alternateRoutesAdapter:Llayout/adapters/AlternateRoutesControlAdapter;

    invoke-virtual {v1}, Llayout/adapters/AlternateRoutesControlAdapter;->close()V

    .line 1373
    iget-object v1, p0, Llayout/MapViewFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$Presenter;

    invoke-interface {v1}, Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$Presenter;->getPresentationState()Lbike/smarthalo/app/models/PresentationNavigationState;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_0

    .line 1374
    iget-boolean v0, v1, Lbike/smarthalo/app/models/PresentationNavigationState;->isActive:Z

    if-nez v0, :cond_1

    .line 1375
    :cond_0
    invoke-direct {p0}, Llayout/MapViewFragment;->canPrepareMapWithTrip()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1376
    iget-object v0, p0, Llayout/MapViewFragment;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    sget-object v1, Lbike/smarthalo/app/analytics/navigation/DestinationSelectionType;->Longpress:Lbike/smarthalo/app/analytics/navigation/DestinationSelectionType;

    invoke-static {v1}, Lbike/smarthalo/app/analytics/navigation/AnalyticsNavigation;->getDestinationSelectedEvent(Lbike/smarthalo/app/analytics/navigation/DestinationSelectionType;)Lbike/smarthalo/app/analytics/AnalyticsEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendAnalyticsEvent(Lbike/smarthalo/app/analytics/AnalyticsEvent;)V

    .line 1378
    iget-object v0, p0, Llayout/MapViewFragment;->destination_panel:Landroid/widget/LinearLayout;

    const v1, 0x7f0a0305

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1380
    invoke-direct {p0, p1}, Llayout/MapViewFragment;->prepMapWithTrip(Lbike/smarthalo/app/models/SHLocation;)V

    :cond_1
    return-void
.end method

.method public onMarkerClicked(Lbike/smarthalo/app/models/SHLocation;Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;)V
    .locals 2

    .line 1387
    iget-object v0, p0, Llayout/MapViewFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$Presenter;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$Presenter;->getPresentationState()Lbike/smarthalo/app/models/PresentationNavigationState;

    move-result-object v0

    .line 1388
    iget-object v1, p0, Llayout/MapViewFragment;->alternateRoutesAdapter:Llayout/adapters/AlternateRoutesControlAdapter;

    invoke-virtual {v1}, Llayout/adapters/AlternateRoutesControlAdapter;->close()V

    .line 1390
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHLocation;->isFavourite()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    iget-object v0, v0, Lbike/smarthalo/app/models/PresentationNavigationState;->updateType:Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    sget-object v1, Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;->ArrivedAtDestination:Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    if-ne v0, v1, :cond_1

    .line 1392
    :cond_0
    invoke-direct {p0}, Llayout/MapViewFragment;->canPrepareMapWithTrip()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1393
    iget-object p2, p0, Llayout/MapViewFragment;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    sget-object v0, Lbike/smarthalo/app/analytics/navigation/DestinationSelectionType;->Favourites:Lbike/smarthalo/app/analytics/navigation/DestinationSelectionType;

    invoke-static {v0}, Lbike/smarthalo/app/analytics/navigation/AnalyticsNavigation;->getDestinationSelectedEvent(Lbike/smarthalo/app/analytics/navigation/DestinationSelectionType;)Lbike/smarthalo/app/analytics/AnalyticsEvent;

    move-result-object v0

    invoke-interface {p2, v0}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendAnalyticsEvent(Lbike/smarthalo/app/analytics/AnalyticsEvent;)V

    .line 1394
    invoke-direct {p0, p1}, Llayout/MapViewFragment;->prepMapWithTrip(Lbike/smarthalo/app/models/SHLocation;)V

    goto :goto_0

    .line 1396
    :cond_1
    invoke-static {p2}, Lbike/smarthalo/app/helpers/MapMarkerHelper;->isMarkerAlternateRoute(Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1397
    invoke-static {p2}, Lbike/smarthalo/app/helpers/MapMarkerHelper;->getRouteType(Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;)Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1399
    iget-object p2, p0, Llayout/MapViewFragment;->alternateRoutesAdapter:Llayout/adapters/AlternateRoutesControlAdapter;

    invoke-virtual {p2, p1}, Llayout/adapters/AlternateRoutesControlAdapter;->selectAlternateRoute(Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;)V

    .line 1400
    invoke-direct {p0, p1}, Llayout/MapViewFragment;->onAlternateRouteSelected(Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;)V

    goto :goto_0

    .line 1403
    :cond_2
    iget-object p2, p0, Llayout/MapViewFragment;->mapProvider:Llayout/mapAdapter/MapProviderContract$Provider;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHLocation;->realmGet$key()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Llayout/mapAdapter/MapProviderContract$Provider;->showMarkerInfo(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onNewLocation(Lbike/smarthalo/app/models/PresentationNavigationState;Landroid/location/Location;Z)V
    .locals 1

    .line 1134
    iget-boolean v0, p0, Llayout/MapViewFragment;->isNewPath:Z

    if-nez v0, :cond_5

    .line 1135
    invoke-direct {p0, p1, p3, p2}, Llayout/MapViewFragment;->updateInstructionUnits(Lbike/smarthalo/app/models/PresentationNavigationState;ZLandroid/location/Location;)V

    .line 1136
    invoke-direct {p0, p1, p2}, Llayout/MapViewFragment;->updateNavigationMapAnnotations(Lbike/smarthalo/app/models/PresentationNavigationState;Landroid/location/Location;)V

    .line 1138
    invoke-virtual {p0}, Llayout/MapViewFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 1143
    :cond_0
    invoke-virtual {p1}, Lbike/smarthalo/app/models/PresentationNavigationState;->hasCompassPath()Z

    move-result p3

    if-eqz p3, :cond_4

    iget p3, p1, Lbike/smarthalo/app/models/PresentationNavigationState;->stepType:I

    sget-object v0, Lbike/smarthalo/navigation/models/StepType;->DESTINATION:Lbike/smarthalo/navigation/models/StepType;

    .line 1144
    invoke-virtual {v0}, Lbike/smarthalo/navigation/models/StepType;->getType()I

    move-result v0

    if-eq p3, v0, :cond_4

    iget-object p3, p1, Lbike/smarthalo/app/models/PresentationNavigationState;->currentBearing:Ljava/lang/Integer;

    if-eqz p3, :cond_4

    .line 1146
    iget-object p3, p0, Llayout/MapViewFragment;->direction_panel:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0111

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 1147
    invoke-virtual {p1}, Lbike/smarthalo/app/models/PresentationNavigationState;->isOfflineOffPath()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lbike/smarthalo/app/models/PresentationNavigationState;->hasReachedOfflineModeOrigin:Z

    if-eqz v0, :cond_1

    const v0, 0x7f06001c

    .line 1148
    invoke-static {v0, p2}, Lbike/smarthalo/app/helpers/MapHelper;->getCompassPointerDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1149
    :cond_1
    iget-object v0, p1, Lbike/smarthalo/app/models/PresentationNavigationState;->currentProgress:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 1150
    iget-object v0, p1, Lbike/smarthalo/app/models/PresentationNavigationState;->currentProgress:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, p2}, Lbike/smarthalo/app/helpers/MapHelper;->getCompassPointerDrawableFromProgress(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1155
    :goto_0
    iget-object p2, p1, Lbike/smarthalo/app/models/PresentationNavigationState;->currentBearing:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-gez p2, :cond_2

    .line 1156
    iget-object p2, p1, Lbike/smarthalo/app/models/PresentationNavigationState;->currentBearing:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    add-int/lit16 p2, p2, 0x168

    int-to-float p2, p2

    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_1

    .line 1158
    :cond_2
    iget-object p2, p1, Lbike/smarthalo/app/models/PresentationNavigationState;->currentBearing:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_1

    :cond_3
    return-void

    .line 1162
    :cond_4
    :goto_1
    invoke-virtual {p0, p1}, Llayout/MapViewFragment;->updateInstructionPanel(Lbike/smarthalo/app/models/PresentationNavigationState;)V

    :cond_5
    return-void
.end method

.method public onNewStep(Lbike/smarthalo/app/models/PresentationNavigationState;Landroid/location/Location;)V
    .locals 0

    .line 1174
    invoke-direct {p0, p1, p2}, Llayout/MapViewFragment;->prepareInstructionPanel(Lbike/smarthalo/app/models/PresentationNavigationState;Landroid/location/Location;)V

    .line 1175
    invoke-direct {p0, p1, p2}, Llayout/MapViewFragment;->updateNavigationMapAnnotations(Lbike/smarthalo/app/models/PresentationNavigationState;Landroid/location/Location;)V

    return-void
.end method

.method public onOfflineNavigation()V
    .locals 5

    .line 1336
    invoke-virtual {p0}, Llayout/MapViewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f110295

    const v2, 0x7f110297

    const v3, 0x7f110296

    .line 1339
    new-instance v4, Llayout/-$$Lambda$MapViewFragment$UorYRUdZxCKGbyUDDIIXIOAL7H8;

    invoke-direct {v4, p0}, Llayout/-$$Lambda$MapViewFragment$UorYRUdZxCKGbyUDDIIXIOAL7H8;-><init>(Llayout/MapViewFragment;)V

    invoke-static {v0, v1, v2, v3, v4}, Lbike/smarthalo/app/helpers/SHDialogHelper;->showConfirmationDialog(Landroid/content/Context;IIILbike/smarthalo/app/helpers/SHDialogHelper$SHDialogOnClick;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 745
    invoke-super {p0}, Llayout/StatusBarFragment;->onPause()V

    const/4 v0, 0x0

    .line 746
    iput-boolean v0, p0, Llayout/MapViewFragment;->hasResumed:Z

    .line 748
    iget-object v0, p0, Llayout/MapViewFragment;->mapView:Llayout/mapAdapter/SHGoogleMapsMap;

    invoke-virtual {v0}, Llayout/mapAdapter/SHGoogleMapsMap;->onPause()V

    .line 750
    iget-object v0, p0, Llayout/MapViewFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$Presenter;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$Presenter;->onViewPaused()V

    return-void
.end method

.method public onPointOfInterestClicked(Lbike/smarthalo/app/models/SHLocation;)V
    .locals 2

    .line 1418
    iget-object v0, p0, Llayout/MapViewFragment;->alternateRoutesAdapter:Llayout/adapters/AlternateRoutesControlAdapter;

    invoke-virtual {v0}, Llayout/adapters/AlternateRoutesControlAdapter;->close()V

    .line 1420
    iget-object v0, p0, Llayout/MapViewFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$Presenter;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$Presenter;->getPresentationState()Lbike/smarthalo/app/models/PresentationNavigationState;

    move-result-object v0

    .line 1422
    invoke-direct {p0}, Llayout/MapViewFragment;->canPrepareMapWithTrip()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    iget-object v0, v0, Lbike/smarthalo/app/models/PresentationNavigationState;->updateType:Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    sget-object v1, Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;->ArrivedAtDestination:Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    if-ne v0, v1, :cond_1

    .line 1424
    :cond_0
    iget-object v0, p0, Llayout/MapViewFragment;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    sget-object v1, Lbike/smarthalo/app/analytics/navigation/DestinationSelectionType;->POI:Lbike/smarthalo/app/analytics/navigation/DestinationSelectionType;

    invoke-static {v1}, Lbike/smarthalo/app/analytics/navigation/AnalyticsNavigation;->getDestinationSelectedEvent(Lbike/smarthalo/app/analytics/navigation/DestinationSelectionType;)Lbike/smarthalo/app/analytics/AnalyticsEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendAnalyticsEvent(Lbike/smarthalo/app/analytics/AnalyticsEvent;)V

    .line 1425
    invoke-direct {p0, p1}, Llayout/MapViewFragment;->prepMapWithTrip(Lbike/smarthalo/app/models/SHLocation;)V

    :cond_1
    return-void
.end method

.method public onPolylineClick(Ljava/lang/String;)V
    .locals 1

    .line 1436
    iget-object v0, p0, Llayout/MapViewFragment;->pathTypes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    .line 1437
    iget-object v0, p0, Llayout/MapViewFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$Presenter;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$Presenter;->getPresentationState()Lbike/smarthalo/app/models/PresentationNavigationState;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 1438
    iget-boolean v0, v0, Lbike/smarthalo/app/models/PresentationNavigationState;->isActive:Z

    if-nez v0, :cond_0

    .line 1439
    iget-object v0, p0, Llayout/MapViewFragment;->alternateRoutesAdapter:Llayout/adapters/AlternateRoutesControlAdapter;

    invoke-virtual {v0, p1}, Llayout/adapters/AlternateRoutesControlAdapter;->selectAlternateRoute(Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;)V

    .line 1440
    invoke-direct {p0, p1}, Llayout/MapViewFragment;->onAlternateRouteSelected(Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;)V

    :cond_0
    return-void
.end method

.method public onReroute(Lbike/smarthalo/app/models/PresentationNavigationState;Landroid/location/Location;)V
    .locals 1

    const/4 v0, 0x1

    .line 1168
    iput-boolean v0, p0, Llayout/MapViewFragment;->isNewPath:Z

    .line 1169
    invoke-virtual {p0, p1, p2}, Llayout/MapViewFragment;->onUpdate(Lbike/smarthalo/app/models/PresentationNavigationState;Landroid/location/Location;)V

    return-void
.end method

.method public onResult()V
    .locals 1

    .line 1023
    iget-object v0, p0, Llayout/MapViewFragment;->mapConsumerContract:Llayout/ViewContracts/MapConsumerContract;

    invoke-interface {v0}, Llayout/ViewContracts/MapConsumerContract;->hideMapLoadingDialog()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 734
    invoke-super {p0}, Llayout/StatusBarFragment;->onResume()V

    const/4 v0, 0x1

    .line 735
    iput-boolean v0, p0, Llayout/MapViewFragment;->hasResumed:Z

    .line 737
    iget-object v0, p0, Llayout/MapViewFragment;->mapView:Llayout/mapAdapter/SHGoogleMapsMap;

    invoke-virtual {v0}, Llayout/mapAdapter/SHGoogleMapsMap;->onResume()V

    .line 738
    iget-object v0, p0, Llayout/MapViewFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$Presenter;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$Presenter;->onViewResumed()V

    .line 740
    invoke-direct {p0}, Llayout/MapViewFragment;->checkAndResumeView()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 828
    invoke-super {p0, p1}, Llayout/StatusBarFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 829
    iget-object v0, p0, Llayout/MapViewFragment;->mapView:Llayout/mapAdapter/SHGoogleMapsMap;

    invoke-virtual {v0, p1}, Llayout/mapAdapter/SHGoogleMapsMap;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSearchResultItemClick(Lbike/smarthalo/app/models/SHLocation;)V
    .locals 2

    .line 695
    iget-object v0, p0, Llayout/MapViewFragment;->mapProvider:Llayout/mapAdapter/MapProviderContract$Provider;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Llayout/MapViewFragment;->canPrepareMapWithTrip()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 696
    iget-object v0, p0, Llayout/MapViewFragment;->mainToolbarLayout:Llayout/MainToolbarLayout;

    if-eqz v0, :cond_0

    .line 697
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHLocation;->realmGet$title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Llayout/MainToolbarLayout;->setSearchToolBarVisuals(Ljava/lang/String;)V

    .line 699
    :cond_0
    invoke-direct {p0, p1}, Llayout/MapViewFragment;->prepMapWithTrip(Lbike/smarthalo/app/models/SHLocation;)V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 834
    invoke-super {p0}, Llayout/StatusBarFragment;->onStart()V

    .line 835
    iget-object v0, p0, Llayout/MapViewFragment;->mapView:Llayout/mapAdapter/SHGoogleMapsMap;

    invoke-virtual {v0}, Llayout/mapAdapter/SHGoogleMapsMap;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 840
    invoke-super {p0}, Llayout/StatusBarFragment;->onStop()V

    .line 841
    iget-object v0, p0, Llayout/MapViewFragment;->mapView:Llayout/mapAdapter/SHGoogleMapsMap;

    invoke-virtual {v0}, Llayout/mapAdapter/SHGoogleMapsMap;->onStop()V

    return-void
.end method

.method public onStopped(Z)V
    .locals 2

    .line 1310
    invoke-direct {p0}, Llayout/MapViewFragment;->removeNavigationMarkers()V

    .line 1311
    invoke-direct {p0}, Llayout/MapViewFragment;->removeAlternateRoutesMarkers()V

    .line 1312
    iget-object v0, p0, Llayout/MapViewFragment;->clearRoute:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1313
    iget-object v0, p0, Llayout/MapViewFragment;->pathProperty:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->hide()V

    .line 1314
    iget-object v0, p0, Llayout/MapViewFragment;->alternateRoutesControl:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 1316
    invoke-direct {p0}, Llayout/MapViewFragment;->clearOldPath()V

    const/4 v0, 0x0

    .line 1317
    invoke-virtual {p0, v0}, Llayout/MapViewFragment;->centerMapOnUser(Z)V

    .line 1319
    new-instance v1, Llayout/-$$Lambda$MapViewFragment$VZoRqJs3NEj-wnyUkhv-yGsMXy0;

    invoke-direct {v1, p0, p1}, Llayout/-$$Lambda$MapViewFragment$VZoRqJs3NEj-wnyUkhv-yGsMXy0;-><init>(Llayout/MapViewFragment;Z)V

    invoke-direct {p0, v0, v1}, Llayout/MapViewFragment;->animateMapControlsOverlay(ZLlayout/MapViewFragment$AnimationListener;)V

    return-void
.end method

.method public onUnitsChanged(Lbike/smarthalo/app/models/PresentationNavigationState;Z)V
    .locals 1

    .line 1297
    iget-object p2, p0, Llayout/MapViewFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$Presenter;

    invoke-interface {p2}, Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$Presenter;->getCurrentLocation()Landroid/location/Location;

    move-result-object p2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1301
    iget-object v0, p1, Lbike/smarthalo/app/models/PresentationNavigationState;->destination:Lbike/smarthalo/app/models/SHLocation;

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHLocation;->getNavigationDescription()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Llayout/MapViewFragment;->updateViewWithTitle(Lbike/smarthalo/app/models/PresentationNavigationState;Ljava/lang/String;)V

    .line 1302
    iget-object v0, p0, Llayout/MapViewFragment;->direction_panel:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1303
    invoke-direct {p0, p1, p2}, Llayout/MapViewFragment;->prepareInstructionPanel(Lbike/smarthalo/app/models/PresentationNavigationState;Landroid/location/Location;)V

    :cond_0
    return-void
.end method

.method public onUpdate(Lbike/smarthalo/app/models/PresentationNavigationState;Landroid/location/Location;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 412
    invoke-direct {p0, p1, p2}, Llayout/MapViewFragment;->updateNavigationMapAnnotations(Lbike/smarthalo/app/models/PresentationNavigationState;Landroid/location/Location;)V

    .line 414
    invoke-direct {p0, p1, p2}, Llayout/MapViewFragment;->prepareInstructionPanel(Lbike/smarthalo/app/models/PresentationNavigationState;Landroid/location/Location;)V

    :cond_0
    return-void
.end method

.method public onUserHasAcceptedLocationPermissions()V
    .locals 1

    .line 1128
    iget-object v0, p0, Llayout/MapViewFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$Presenter;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$Presenter;->subscribeToLocationUpdates()V

    return-void
.end method

.method public recover(Lbike/smarthalo/app/models/PresentationNavigationState;Landroid/location/Location;Z)V
    .locals 1

    .line 1283
    invoke-virtual {p0}, Llayout/MapViewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1286
    invoke-direct {p0, v0, p1, p3, p2}, Llayout/MapViewFragment;->recoverNavigation(Landroid/content/Context;Lbike/smarthalo/app/models/PresentationNavigationState;ZLandroid/location/Location;)V

    :cond_0
    return-void
.end method

.method public showMapOverlay(Z)V
    .locals 4

    .line 314
    invoke-virtual {p0}, Llayout/MapViewFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f0a0378

    .line 320
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 322
    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    if-eqz p1, :cond_1

    .line 325
    iget-object v1, p0, Llayout/MapViewFragment;->onTouchOverlayListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 327
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_0
    if-eqz p1, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 331
    :goto_1
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 332
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 333
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public updateInstructionPanel(Lbike/smarthalo/app/models/PresentationNavigationState;)V
    .locals 5

    .line 600
    iget-object v0, p0, Llayout/MapViewFragment;->direction_panel:Landroid/widget/LinearLayout;

    const v1, 0x7f0a0111

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 601
    iget-object v1, p1, Lbike/smarthalo/app/models/PresentationNavigationState;->currentMode:Lbike/smarthalo/navigation/models/TransportationMode;

    sget-object v2, Lbike/smarthalo/navigation/models/TransportationMode;->CAUTION:Lbike/smarthalo/navigation/models/TransportationMode;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 603
    :goto_0
    invoke-virtual {p1}, Lbike/smarthalo/app/models/PresentationNavigationState;->hasCompassPath()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p1, Lbike/smarthalo/app/models/PresentationNavigationState;->currentBearing:Ljava/lang/Integer;

    if-nez v2, :cond_1

    .line 604
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setRotation(F)V

    const p1, 0x7f0800c3

    .line 605
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 606
    :cond_1
    iget-object v2, p1, Lbike/smarthalo/app/models/PresentationNavigationState;->displayStatus:Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;

    if-eqz v2, :cond_5

    .line 607
    iget-object v2, p1, Lbike/smarthalo/app/models/PresentationNavigationState;->displayStatus:Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;

    iget-object v2, v2, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->thisTurn:Lbike/smarthalo/navigation/models/NavAngleTurns;

    iget-object v2, v2, Lbike/smarthalo/navigation/models/NavAngleTurns;->stepType:Lbike/smarthalo/navigation/models/StepType;

    invoke-virtual {v2}, Lbike/smarthalo/navigation/models/StepType;->getType()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_4

    packed-switch v2, :pswitch_data_0

    if-eqz v1, :cond_2

    const v1, 0x7f0801cf

    goto :goto_1

    :cond_2
    const v1, 0x7f0801ce

    .line 621
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/high16 v1, 0x43070000    # 135.0f

    .line 622
    iget-object p1, p1, Lbike/smarthalo/app/models/PresentationNavigationState;->displayStatus:Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;

    iget-object p1, p1, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->thisTurn:Lbike/smarthalo/navigation/models/NavAngleTurns;

    iget p1, p1, Lbike/smarthalo/navigation/models/NavAngleTurns;->relativeTurnAngle:I

    int-to-float p1, p1

    add-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_3

    :pswitch_0
    if-eqz v1, :cond_3

    const p1, 0x7f0801c4

    goto :goto_2

    :cond_3
    const p1, 0x7f0801c3

    .line 609
    :goto_2
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/high16 p1, 0x42b40000    # 90.0f

    .line 610
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_3

    :pswitch_1
    const p1, 0x7f0800de

    .line 617
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 618
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_3

    :cond_4
    const p1, 0x7f080278

    .line 613
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 614
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setRotation(F)V

    :cond_5
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
