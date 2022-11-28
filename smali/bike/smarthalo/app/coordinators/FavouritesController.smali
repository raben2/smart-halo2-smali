.class public Lbike/smarthalo/app/coordinators/FavouritesController;
.super Ljava/lang/Object;
.source "FavouritesController.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

.field private lastUpdatedFavourites:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/UserFavourite;",
            ">;"
        }
    .end annotation
.end field

.field private parentActivity:Landroid/app/Activity;

.field private subscriptions:Lio/reactivex/disposables/CompositeDisposable;

.field private userFavouritesChangedSubject:Lio/reactivex/subjects/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/Subject<",
            "Lbike/smarthalo/app/models/FavouritesChangedEvent;",
            ">;"
        }
    .end annotation
.end field

.field private userFavouritesSubject:Lio/reactivex/subjects/ReplaySubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/ReplaySubject<",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/UserFavourite;",
            ">;>;"
        }
    .end annotation
.end field

.field private userManager:Lbike/smarthalo/app/managers/contracts/IUserCloudManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Llayout/MapViewFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbike/smarthalo/app/coordinators/FavouritesController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lbike/smarthalo/app/managers/contracts/IUserCloudManager;Landroid/app/Activity;Lbike/smarthalo/app/analytics/AnalyticsContract;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/app/coordinators/FavouritesController;->lastUpdatedFavourites:Ljava/util/List;

    const/4 v0, 0x1

    .line 39
    invoke-static {v0}, Lio/reactivex/subjects/ReplaySubject;->createWithSize(I)Lio/reactivex/subjects/ReplaySubject;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/coordinators/FavouritesController;->userFavouritesSubject:Lio/reactivex/subjects/ReplaySubject;

    .line 40
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/coordinators/FavouritesController;->userFavouritesChangedSubject:Lio/reactivex/subjects/Subject;

    .line 41
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/app/coordinators/FavouritesController;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    .line 46
    iput-object p1, p0, Lbike/smarthalo/app/coordinators/FavouritesController;->userManager:Lbike/smarthalo/app/managers/contracts/IUserCloudManager;

    .line 47
    iput-object p2, p0, Lbike/smarthalo/app/coordinators/FavouritesController;->parentActivity:Landroid/app/Activity;

    .line 48
    iput-object p3, p0, Lbike/smarthalo/app/coordinators/FavouritesController;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    .line 50
    invoke-direct {p0}, Lbike/smarthalo/app/coordinators/FavouritesController;->getUserFavorites()V

    .line 51
    invoke-direct {p0}, Lbike/smarthalo/app/coordinators/FavouritesController;->subscribeToUserFavouritesChanged()V

    return-void
.end method

.method static synthetic access$000(Lbike/smarthalo/app/coordinators/FavouritesController;)Lio/reactivex/subjects/ReplaySubject;
    .locals 0

    .line 32
    iget-object p0, p0, Lbike/smarthalo/app/coordinators/FavouritesController;->userFavouritesSubject:Lio/reactivex/subjects/ReplaySubject;

    return-object p0
.end method

.method static synthetic access$102(Lbike/smarthalo/app/coordinators/FavouritesController;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 32
    iput-object p1, p0, Lbike/smarthalo/app/coordinators/FavouritesController;->lastUpdatedFavourites:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lbike/smarthalo/app/coordinators/FavouritesController;)Landroid/app/Activity;
    .locals 0

    .line 32
    iget-object p0, p0, Lbike/smarthalo/app/coordinators/FavouritesController;->parentActivity:Landroid/app/Activity;

    return-object p0
.end method

.method private checkForExistingFavourite(Lbike/smarthalo/app/models/FavouriteType;)Lbike/smarthalo/app/models/UserFavourite;
    .locals 4

    .line 287
    iget-object v0, p0, Lbike/smarthalo/app/coordinators/FavouritesController;->lastUpdatedFavourites:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbike/smarthalo/app/models/UserFavourite;

    .line 288
    invoke-virtual {v2}, Lbike/smarthalo/app/models/UserFavourite;->getFavouriteType()Lbike/smarthalo/app/models/FavouriteType;

    move-result-object v3

    if-ne v3, p1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private confirmDeleteFavourite(Lbike/smarthalo/app/models/SHLocation;)V
    .locals 4

    .line 271
    iget-object v0, p0, Lbike/smarthalo/app/coordinators/FavouritesController;->parentActivity:Landroid/app/Activity;

    new-instance v1, Lbike/smarthalo/app/coordinators/FavouritesController$4;

    invoke-direct {v1, p0, p1}, Lbike/smarthalo/app/coordinators/FavouritesController$4;-><init>(Lbike/smarthalo/app/coordinators/FavouritesController;Lbike/smarthalo/app/models/SHLocation;)V

    const p1, 0x7f1100a5

    const v2, 0x7f110011

    const/high16 v3, 0x7f110000

    invoke-static {v0, p1, v2, v3, v1}, Lbike/smarthalo/app/helpers/SHDialogHelper;->showConfirmationDialog(Landroid/content/Context;IIILbike/smarthalo/app/helpers/SHDialogHelper$SHDialogOnClick;)V

    return-void
.end method

.method private confirmFavouriteCreate(Lbike/smarthalo/app/models/FavouriteType;Lbike/smarthalo/app/models/SHLocation;Lbike/smarthalo/app/models/UserFavourite;)V
    .locals 5

    .line 256
    iget-object v0, p0, Lbike/smarthalo/app/coordinators/FavouritesController;->parentActivity:Landroid/app/Activity;

    sget-object v1, Lbike/smarthalo/app/models/FavouriteType;->HOME:Lbike/smarthalo/app/models/FavouriteType;

    if-ne p1, v1, :cond_0

    const v1, 0x7f110347

    goto :goto_0

    :cond_0
    const v1, 0x7f110348

    :goto_0
    const v2, 0x7f110011

    const/high16 v3, 0x7f110000

    new-instance v4, Lbike/smarthalo/app/coordinators/FavouritesController$3;

    invoke-direct {v4, p0, p1, p2, p3}, Lbike/smarthalo/app/coordinators/FavouritesController$3;-><init>(Lbike/smarthalo/app/coordinators/FavouritesController;Lbike/smarthalo/app/models/FavouriteType;Lbike/smarthalo/app/models/SHLocation;Lbike/smarthalo/app/models/UserFavourite;)V

    invoke-static {v0, v1, v2, v3, v4}, Lbike/smarthalo/app/helpers/SHDialogHelper;->showConfirmationDialog(Landroid/content/Context;IIILbike/smarthalo/app/helpers/SHDialogHelper$SHDialogOnClick;)V

    return-void
.end method

.method public static getFavouritesAsLocations(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/UserFavourite;",
            ">;)",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHLocation;",
            ">;"
        }
    .end annotation

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 114
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbike/smarthalo/app/models/UserFavourite;

    .line 115
    invoke-virtual {v1}, Lbike/smarthalo/app/models/UserFavourite;->asSHLocation()Lbike/smarthalo/app/models/SHLocation;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getUserFavorites()V
    .locals 3

    .line 55
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/UserStorageStaticManager;->getLocalFavourites()Ljava/util/List;

    move-result-object v0

    .line 57
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/UserStorageStaticManager;->getUser()Lbike/smarthalo/app/models/SHUser;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 60
    iget-object v1, p0, Lbike/smarthalo/app/coordinators/FavouritesController;->userManager:Lbike/smarthalo/app/managers/contracts/IUserCloudManager;

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHUser;->realmGet$id()Ljava/lang/Integer;

    move-result-object v0

    new-instance v2, Lbike/smarthalo/app/coordinators/FavouritesController$1;

    invoke-direct {v2, p0}, Lbike/smarthalo/app/coordinators/FavouritesController$1;-><init>(Lbike/smarthalo/app/coordinators/FavouritesController;)V

    invoke-interface {v1, v0, v2}, Lbike/smarthalo/app/managers/contracts/IUserCloudManager;->getUserFavorites(Ljava/lang/Integer;Lbike/smarthalo/app/api/RequestCallback;)V

    goto :goto_0

    .line 69
    :cond_0
    iget-object v1, p0, Lbike/smarthalo/app/coordinators/FavouritesController;->userFavouritesSubject:Lio/reactivex/subjects/ReplaySubject;

    invoke-virtual {v1, v0}, Lio/reactivex/subjects/ReplaySubject;->onNext(Ljava/lang/Object;)V

    .line 70
    iput-object v0, p0, Lbike/smarthalo/app/coordinators/FavouritesController;->lastUpdatedFavourites:Ljava/util/List;

    :cond_1
    :goto_0
    return-void
.end method

.method private subscribeToUserFavouritesChanged()V
    .locals 3

    .line 75
    iget-object v0, p0, Lbike/smarthalo/app/coordinators/FavouritesController;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v1, p0, Lbike/smarthalo/app/coordinators/FavouritesController;->userFavouritesChangedSubject:Lio/reactivex/subjects/Subject;

    new-instance v2, Lbike/smarthalo/app/coordinators/-$$Lambda$iR1zX2COHTdRo3Cay6B3dZ4WDyY;

    invoke-direct {v2, p0}, Lbike/smarthalo/app/coordinators/-$$Lambda$iR1zX2COHTdRo3Cay6B3dZ4WDyY;-><init>(Lbike/smarthalo/app/coordinators/FavouritesController;)V

    .line 76
    invoke-virtual {v1, v2}, Lio/reactivex/subjects/Subject;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 75
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method


# virtual methods
.method public checkForExistingFavourite(Lbike/smarthalo/app/models/SHLocation;)Lbike/smarthalo/app/models/UserFavourite;
    .locals 10

    .line 128
    iget-object v0, p0, Lbike/smarthalo/app/coordinators/FavouritesController;->lastUpdatedFavourites:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbike/smarthalo/app/models/UserFavourite;

    .line 129
    invoke-virtual {v2}, Lbike/smarthalo/app/models/UserFavourite;->realmGet$latitude()D

    move-result-wide v3

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHLocation;->realmGet$latitude()Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    const-wide v7, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    invoke-static/range {v3 .. v8}, Lbike/smarthalo/app/helpers/SHMathHelper;->areEqualWithDelta(DDD)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lbike/smarthalo/app/models/UserFavourite;->realmGet$longitude()D

    move-result-wide v4

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHLocation;->realmGet$longitude()Ljava/lang/Double;

    move-result-object v3

    .line 130
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-wide v8, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    invoke-static/range {v4 .. v9}, Lbike/smarthalo/app/helpers/SHMathHelper;->areEqualWithDelta(DDD)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public createNewFavourite(Lbike/smarthalo/app/models/FavouriteType;Lbike/smarthalo/app/models/SHLocation;Ljava/lang/Integer;)V
    .locals 3

    .line 155
    new-instance v0, Lbike/smarthalo/app/models/UserFavourite;

    invoke-direct {v0}, Lbike/smarthalo/app/models/UserFavourite;-><init>()V

    .line 156
    iget-object v1, p0, Lbike/smarthalo/app/coordinators/FavouritesController;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    const-string v2, "Favourite_Changed"

    invoke-interface {v1, v2}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendAnalyticsEvent(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v0, p1}, Lbike/smarthalo/app/models/UserFavourite;->setFavouriteType(Lbike/smarthalo/app/models/FavouriteType;)V

    .line 159
    invoke-virtual {p2}, Lbike/smarthalo/app/models/SHLocation;->realmGet$latitude()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lbike/smarthalo/app/models/UserFavourite;->realmSet$latitude(D)V

    .line 160
    invoke-virtual {p2}, Lbike/smarthalo/app/models/SHLocation;->realmGet$longitude()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lbike/smarthalo/app/models/UserFavourite;->realmSet$longitude(D)V

    .line 161
    invoke-virtual {p2}, Lbike/smarthalo/app/models/SHLocation;->realmGet$address()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lbike/smarthalo/app/models/SHLocation;->realmGet$address()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lbike/smarthalo/app/models/SHLocation;->realmGet$address()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p2}, Lbike/smarthalo/app/models/SHLocation;->realmGet$title()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {v0, p1}, Lbike/smarthalo/app/models/UserFavourite;->realmSet$address(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v0}, Lbike/smarthalo/app/models/UserFavourite;->realmGet$address()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lbike/smarthalo/app/models/SHLocation;->realmGet$address()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lbike/smarthalo/app/models/SHLocation;->realmGet$title()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    const-string p1, ""

    :goto_2
    invoke-virtual {v0, p1}, Lbike/smarthalo/app/models/UserFavourite;->realmSet$label(Ljava/lang/String;)V

    if-eqz p3, :cond_3

    .line 172
    new-instance p1, Lbike/smarthalo/app/models/FavouritesChangedEvent;

    sget-object p2, Lbike/smarthalo/app/models/FavouritesChangedEvent$FavouriteChangeType;->addedShouldRemovePrevious:Lbike/smarthalo/app/models/FavouritesChangedEvent$FavouriteChangeType;

    invoke-direct {p1, v0, p2, p3}, Lbike/smarthalo/app/models/FavouritesChangedEvent;-><init>(Lbike/smarthalo/app/models/UserFavourite;Lbike/smarthalo/app/models/FavouritesChangedEvent$FavouriteChangeType;Ljava/lang/Integer;)V

    goto :goto_3

    .line 177
    :cond_3
    new-instance p1, Lbike/smarthalo/app/models/FavouritesChangedEvent;

    sget-object p2, Lbike/smarthalo/app/models/FavouritesChangedEvent$FavouriteChangeType;->added:Lbike/smarthalo/app/models/FavouritesChangedEvent$FavouriteChangeType;

    invoke-direct {p1, v0, p2}, Lbike/smarthalo/app/models/FavouritesChangedEvent;-><init>(Lbike/smarthalo/app/models/UserFavourite;Lbike/smarthalo/app/models/FavouritesChangedEvent$FavouriteChangeType;)V

    .line 182
    :goto_3
    iget-object p2, p0, Lbike/smarthalo/app/coordinators/FavouritesController;->userFavouritesChangedSubject:Lio/reactivex/subjects/Subject;

    invoke-virtual {p2, p1}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public deleteFavourite(Lbike/smarthalo/app/models/SHLocation;)V
    .locals 10

    .line 140
    iget-object v0, p0, Lbike/smarthalo/app/coordinators/FavouritesController;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    const-string v1, "Favourite_Changed"

    invoke-interface {v0, v1}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendAnalyticsEvent(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lbike/smarthalo/app/coordinators/FavouritesController;->lastUpdatedFavourites:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbike/smarthalo/app/models/UserFavourite;

    .line 143
    invoke-virtual {v2}, Lbike/smarthalo/app/models/UserFavourite;->realmGet$latitude()D

    move-result-wide v3

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHLocation;->realmGet$latitude()Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    const-wide v7, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    invoke-static/range {v3 .. v8}, Lbike/smarthalo/app/helpers/SHMathHelper;->areEqualWithDelta(DDD)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lbike/smarthalo/app/models/UserFavourite;->realmGet$longitude()D

    move-result-wide v4

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHLocation;->realmGet$longitude()Ljava/lang/Double;

    move-result-object v3

    .line 144
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-wide v8, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    invoke-static/range {v4 .. v9}, Lbike/smarthalo/app/helpers/SHMathHelper;->areEqualWithDelta(DDD)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 150
    iget-object p1, p0, Lbike/smarthalo/app/coordinators/FavouritesController;->userFavouritesChangedSubject:Lio/reactivex/subjects/Subject;

    new-instance v0, Lbike/smarthalo/app/models/FavouritesChangedEvent;

    sget-object v2, Lbike/smarthalo/app/models/FavouritesChangedEvent$FavouriteChangeType;->deleted:Lbike/smarthalo/app/models/FavouritesChangedEvent$FavouriteChangeType;

    invoke-direct {v0, v1, v2}, Lbike/smarthalo/app/models/FavouritesChangedEvent;-><init>(Lbike/smarthalo/app/models/UserFavourite;Lbike/smarthalo/app/models/FavouritesChangedEvent$FavouriteChangeType;)V

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public disposeSubscriptions()V
    .locals 1

    .line 100
    iget-object v0, p0, Lbike/smarthalo/app/coordinators/FavouritesController;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    return-void
.end method

.method public getFavourites()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/UserFavourite;",
            ">;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lbike/smarthalo/app/coordinators/FavouritesController;->lastUpdatedFavourites:Ljava/util/List;

    return-object v0
.end method

.method public getFavouritesAsLocations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHLocation;",
            ">;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lbike/smarthalo/app/coordinators/FavouritesController;->lastUpdatedFavourites:Ljava/util/List;

    invoke-static {v0}, Lbike/smarthalo/app/coordinators/FavouritesController;->getFavouritesAsLocations(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFavouritesSource()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/UserFavourite;",
            ">;>;"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lbike/smarthalo/app/coordinators/FavouritesController;->userFavouritesSubject:Lio/reactivex/subjects/ReplaySubject;

    return-object v0
.end method

.method public getUpdatedDestinationType(Ljava/util/List;Lbike/smarthalo/app/models/SHLocation;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/UserFavourite;",
            ">;",
            "Lbike/smarthalo/app/models/SHLocation;",
            ")I"
        }
    .end annotation

    if-eqz p2, :cond_3

    .line 222
    invoke-virtual {p2}, Lbike/smarthalo/app/models/SHLocation;->realmGet$type()I

    move-result v0

    .line 224
    invoke-virtual {p2}, Lbike/smarthalo/app/models/SHLocation;->isFavourite()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 228
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbike/smarthalo/app/models/UserFavourite;

    .line 229
    invoke-virtual {p2}, Lbike/smarthalo/app/models/SHLocation;->realmGet$latitude()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v1}, Lbike/smarthalo/app/models/UserFavourite;->realmGet$latitude()D

    move-result-wide v5

    const-wide v7, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    invoke-static/range {v3 .. v8}, Lbike/smarthalo/app/helpers/SHMathHelper;->areEqualWithDelta(DDD)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Lbike/smarthalo/app/models/SHLocation;->realmGet$longitude()Ljava/lang/Double;

    move-result-object v2

    .line 230
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v1}, Lbike/smarthalo/app/models/UserFavourite;->realmGet$longitude()D

    move-result-wide v5

    const-wide v7, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    invoke-static/range {v3 .. v8}, Lbike/smarthalo/app/helpers/SHMathHelper;->areEqualWithDelta(DDD)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 231
    sget-object p1, Lbike/smarthalo/app/coordinators/FavouritesController$5;->$SwitchMap$bike$smarthalo$app$models$FavouriteType:[I

    invoke-virtual {v1}, Lbike/smarthalo/app/models/UserFavourite;->getFavouriteType()Lbike/smarthalo/app/models/FavouriteType;

    move-result-object p2

    invoke-virtual {p2}, Lbike/smarthalo/app/models/FavouriteType;->ordinal()I

    move-result p2

    aget p1, p1, p2

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x2

    const/4 v0, 0x2

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x1

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x3

    const/4 v0, 0x3

    :cond_2
    :goto_0
    return v0

    :cond_3
    const/4 p1, -0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateFavourites(Lbike/smarthalo/app/models/FavouriteType;Lbike/smarthalo/app/models/SHLocation;)V
    .locals 3

    if-eqz p2, :cond_5

    .line 188
    invoke-direct {p0, p1}, Lbike/smarthalo/app/coordinators/FavouritesController;->checkForExistingFavourite(Lbike/smarthalo/app/models/FavouriteType;)Lbike/smarthalo/app/models/UserFavourite;

    move-result-object v0

    .line 190
    sget-object v1, Lbike/smarthalo/app/coordinators/FavouritesController$5;->$SwitchMap$bike$smarthalo$app$models$FavouriteType:[I

    invoke-virtual {p1}, Lbike/smarthalo/app/models/FavouriteType;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x2

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {p2}, Lbike/smarthalo/app/models/SHLocation;->realmGet$type()I

    move-result v2

    if-eq v2, p1, :cond_0

    .line 209
    sget-object p1, Lbike/smarthalo/app/models/FavouriteType;->WORK:Lbike/smarthalo/app/models/FavouriteType;

    invoke-direct {p0, p1, p2, v0}, Lbike/smarthalo/app/coordinators/FavouritesController;->confirmFavouriteCreate(Lbike/smarthalo/app/models/FavouriteType;Lbike/smarthalo/app/models/SHLocation;Lbike/smarthalo/app/models/UserFavourite;)V

    goto :goto_0

    .line 210
    :cond_0
    invoke-virtual {p2}, Lbike/smarthalo/app/models/SHLocation;->realmGet$type()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 211
    invoke-direct {p0, p2}, Lbike/smarthalo/app/coordinators/FavouritesController;->confirmDeleteFavourite(Lbike/smarthalo/app/models/SHLocation;)V

    goto :goto_0

    .line 213
    :cond_1
    sget-object p1, Lbike/smarthalo/app/models/FavouriteType;->WORK:Lbike/smarthalo/app/models/FavouriteType;

    invoke-virtual {p0, p1, p2, v1}, Lbike/smarthalo/app/coordinators/FavouritesController;->createNewFavourite(Lbike/smarthalo/app/models/FavouriteType;Lbike/smarthalo/app/models/SHLocation;Ljava/lang/Integer;)V

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x1

    if-eqz v0, :cond_2

    .line 199
    invoke-virtual {p2}, Lbike/smarthalo/app/models/SHLocation;->realmGet$type()I

    move-result v2

    if-eq v2, p1, :cond_2

    .line 200
    sget-object p1, Lbike/smarthalo/app/models/FavouriteType;->HOME:Lbike/smarthalo/app/models/FavouriteType;

    invoke-direct {p0, p1, p2, v0}, Lbike/smarthalo/app/coordinators/FavouritesController;->confirmFavouriteCreate(Lbike/smarthalo/app/models/FavouriteType;Lbike/smarthalo/app/models/SHLocation;Lbike/smarthalo/app/models/UserFavourite;)V

    goto :goto_0

    .line 201
    :cond_2
    invoke-virtual {p2}, Lbike/smarthalo/app/models/SHLocation;->realmGet$type()I

    move-result v0

    if-ne v0, p1, :cond_3

    .line 202
    invoke-direct {p0, p2}, Lbike/smarthalo/app/coordinators/FavouritesController;->confirmDeleteFavourite(Lbike/smarthalo/app/models/SHLocation;)V

    goto :goto_0

    .line 204
    :cond_3
    sget-object p1, Lbike/smarthalo/app/models/FavouriteType;->HOME:Lbike/smarthalo/app/models/FavouriteType;

    invoke-virtual {p0, p1, p2, v1}, Lbike/smarthalo/app/coordinators/FavouritesController;->createNewFavourite(Lbike/smarthalo/app/models/FavouriteType;Lbike/smarthalo/app/models/SHLocation;Ljava/lang/Integer;)V

    goto :goto_0

    .line 192
    :pswitch_2
    invoke-virtual {p2}, Lbike/smarthalo/app/models/SHLocation;->realmGet$type()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 193
    invoke-direct {p0, p2}, Lbike/smarthalo/app/coordinators/FavouritesController;->confirmDeleteFavourite(Lbike/smarthalo/app/models/SHLocation;)V

    goto :goto_0

    .line 195
    :cond_4
    sget-object p1, Lbike/smarthalo/app/models/FavouriteType;->FAVOURITE:Lbike/smarthalo/app/models/FavouriteType;

    invoke-virtual {p0, p1, p2, v1}, Lbike/smarthalo/app/coordinators/FavouritesController;->createNewFavourite(Lbike/smarthalo/app/models/FavouriteType;Lbike/smarthalo/app/models/SHLocation;Ljava/lang/Integer;)V

    :cond_5
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateUserFavourites(Lbike/smarthalo/app/models/FavouritesChangedEvent;)V
    .locals 3

    .line 81
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/UserStorageStaticManager;->getUser()Lbike/smarthalo/app/models/SHUser;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v1, p0, Lbike/smarthalo/app/coordinators/FavouritesController;->userManager:Lbike/smarthalo/app/managers/contracts/IUserCloudManager;

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHUser;->realmGet$id()Ljava/lang/Integer;

    move-result-object v0

    new-instance v2, Lbike/smarthalo/app/coordinators/FavouritesController$2;

    invoke-direct {v2, p0}, Lbike/smarthalo/app/coordinators/FavouritesController$2;-><init>(Lbike/smarthalo/app/coordinators/FavouritesController;)V

    invoke-interface {v1, v0, p1, v2}, Lbike/smarthalo/app/managers/contracts/IUserCloudManager;->updateUserFavourites(Ljava/lang/Integer;Lbike/smarthalo/app/models/FavouritesChangedEvent;Lbike/smarthalo/app/api/RequestCallback;)V

    :cond_0
    return-void
.end method
