.class public Lbike/smarthalo/app/presenters/SearchPresenter;
.super Lbike/smarthalo/app/presenters/BasePresenter;
.source "SearchPresenter.java"

# interfaces
.implements Lbike/smarthalo/app/presenters/presenterContracts/SearchPresenterContract$Presenter;


# instance fields
.field private autocompleteSessionToken:Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

.field private currentLocation:Landroid/location/Location;

.field private currentQuery:Ljava/lang/String;

.field private favouriteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHLocation;",
            ">;"
        }
    .end annotation
.end field

.field private favouritesController:Lbike/smarthalo/app/coordinators/FavouritesController;

.field private favouritesSubscription:Lio/reactivex/disposables/Disposable;

.field geocodingManager:Lbike/smarthalo/app/managers/contracts/GeocodingManagerContract;

.field private isBoundToLocationService:Z

.field private lastSearchResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHLocation;",
            ">;"
        }
    .end annotation
.end field

.field private locationServiceConnection:Landroid/content/ServiceConnection;

.field private locationSubscription:Lio/reactivex/disposables/Disposable;

.field private querySource:Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Flowable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private querySubscription:Lio/reactivex/disposables/Disposable;

.field private view:Lbike/smarthalo/app/presenters/presenterContracts/SearchPresenterContract$View;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/SearchPresenterContract$View;Lbike/smarthalo/app/managers/contracts/GeocodingManagerContract;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lbike/smarthalo/app/presenters/BasePresenter;-><init>(Landroid/content/Context;)V

    .line 49
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/presenters/SearchPresenter;->lastSearchResults:Ljava/util/List;

    .line 53
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/presenters/SearchPresenter;->favouriteList:Ljava/util/List;

    .line 134
    new-instance p1, Lbike/smarthalo/app/presenters/SearchPresenter$1;

    invoke-direct {p1, p0}, Lbike/smarthalo/app/presenters/SearchPresenter$1;-><init>(Lbike/smarthalo/app/presenters/SearchPresenter;)V

    iput-object p1, p0, Lbike/smarthalo/app/presenters/SearchPresenter;->locationServiceConnection:Landroid/content/ServiceConnection;

    .line 61
    iput-object p2, p0, Lbike/smarthalo/app/presenters/SearchPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/SearchPresenterContract$View;

    .line 62
    iput-object p3, p0, Lbike/smarthalo/app/presenters/SearchPresenter;->geocodingManager:Lbike/smarthalo/app/managers/contracts/GeocodingManagerContract;

    return-void
.end method

.method static synthetic access$002(Lbike/smarthalo/app/presenters/SearchPresenter;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    .line 37
    iput-object p1, p0, Lbike/smarthalo/app/presenters/SearchPresenter;->currentLocation:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$100(Lbike/smarthalo/app/presenters/SearchPresenter;Lio/reactivex/Flowable;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lbike/smarthalo/app/presenters/SearchPresenter;->observeFirstLocation(Lio/reactivex/Flowable;)V

    return-void
.end method

.method static synthetic access$202(Lbike/smarthalo/app/presenters/SearchPresenter;Z)Z
    .locals 0

    .line 37
    iput-boolean p1, p0, Lbike/smarthalo/app/presenters/SearchPresenter;->isBoundToLocationService:Z

    return p1
.end method

.method public static buildSearchPresenter(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/SearchPresenterContract$View;Lbike/smarthalo/app/managers/contracts/GeocodingManagerContract;)Lbike/smarthalo/app/presenters/presenterContracts/SearchPresenterContract$Presenter;
    .locals 1

    .line 66
    new-instance v0, Lbike/smarthalo/app/presenters/SearchPresenter;

    invoke-direct {v0, p0, p1, p2}, Lbike/smarthalo/app/presenters/SearchPresenter;-><init>(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/SearchPresenterContract$View;Lbike/smarthalo/app/managers/contracts/GeocodingManagerContract;)V

    return-object v0
.end method

.method private clearFavouriteSubscription()V
    .locals 1

    .line 95
    iget-object v0, p0, Lbike/smarthalo/app/presenters/SearchPresenter;->favouritesSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 96
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 97
    iput-object v0, p0, Lbike/smarthalo/app/presenters/SearchPresenter;->favouritesSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private clearLocationSubscription()V
    .locals 1

    .line 88
    iget-object v0, p0, Lbike/smarthalo/app/presenters/SearchPresenter;->locationSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 89
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 90
    iput-object v0, p0, Lbike/smarthalo/app/presenters/SearchPresenter;->locationSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private clearQuerySubscription()V
    .locals 1

    .line 102
    iget-object v0, p0, Lbike/smarthalo/app/presenters/SearchPresenter;->querySubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 103
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 104
    iput-object v0, p0, Lbike/smarthalo/app/presenters/SearchPresenter;->querySubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public static synthetic lambda$observeFirstLocation$2(Lbike/smarthalo/app/presenters/SearchPresenter;Landroid/location/Location;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 159
    iput-object p1, p0, Lbike/smarthalo/app/presenters/SearchPresenter;->currentLocation:Landroid/location/Location;

    return-void
.end method

.method public static synthetic lambda$onSearchResultClicked$4(Lbike/smarthalo/app/presenters/SearchPresenter;Lbike/smarthalo/app/models/SHLocation;Lbike/smarthalo/app/models/SHLocation;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 210
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHLocation;->realmGet$key()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lbike/smarthalo/app/models/SHLocation;->realmSet$key(Ljava/lang/String;)V

    .line 211
    invoke-static {p2}, Lbike/smarthalo/app/managers/storageManagers/UserLocationStorageManager;->saveSearchResult(Lbike/smarthalo/app/models/SHLocation;)V

    const/4 p1, 0x0

    .line 212
    iput-object p1, p0, Lbike/smarthalo/app/presenters/SearchPresenter;->autocompleteSessionToken:Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

    .line 213
    iget-object p1, p0, Lbike/smarthalo/app/presenters/SearchPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/SearchPresenterContract$View;

    invoke-interface {p1, p2}, Lbike/smarthalo/app/presenters/presenterContracts/SearchPresenterContract$View;->onSearchResultReady(Lbike/smarthalo/app/models/SHLocation;)V

    goto :goto_0

    .line 215
    :cond_0
    iget-object p1, p0, Lbike/smarthalo/app/presenters/SearchPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/SearchPresenterContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/presenters/presenterContracts/SearchPresenterContract$View;->onError()V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$searchWithQuery$3(Lbike/smarthalo/app/presenters/SearchPresenter;Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    .line 183
    iput-object p2, p0, Lbike/smarthalo/app/presenters/SearchPresenter;->lastSearchResults:Ljava/util/List;

    .line 184
    iget-object v0, p0, Lbike/smarthalo/app/presenters/SearchPresenter;->favouriteList:Ljava/util/List;

    invoke-direct {p0, p1, p2, v0}, Lbike/smarthalo/app/presenters/SearchPresenter;->updateDisplayList(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic lambda$subscribeToFavouritesUpdates$0(Lbike/smarthalo/app/presenters/SearchPresenter;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 114
    invoke-static {p1}, Lbike/smarthalo/app/coordinators/FavouritesController;->getFavouritesAsLocations(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/presenters/SearchPresenter;->favouriteList:Ljava/util/List;

    .line 115
    iget-object p1, p0, Lbike/smarthalo/app/presenters/SearchPresenter;->currentQuery:Ljava/lang/String;

    iget-object v0, p0, Lbike/smarthalo/app/presenters/SearchPresenter;->lastSearchResults:Ljava/util/List;

    iget-object v1, p0, Lbike/smarthalo/app/presenters/SearchPresenter;->favouriteList:Ljava/util/List;

    invoke-direct {p0, p1, v0, v1}, Lbike/smarthalo/app/presenters/SearchPresenter;->updateDisplayList(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic lambda$subscribeToQueryUpdates$1(Lbike/smarthalo/app/presenters/SearchPresenter;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 125
    iput-object p1, p0, Lbike/smarthalo/app/presenters/SearchPresenter;->currentQuery:Ljava/lang/String;

    .line 126
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 127
    invoke-direct {p0, p1}, Lbike/smarthalo/app/presenters/SearchPresenter;->searchWithQuery(Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 129
    invoke-virtual {p0}, Lbike/smarthalo/app/presenters/SearchPresenter;->resetResultsList()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic lambda$updateDisplayList$5(Lbike/smarthalo/app/presenters/SearchPresenter;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 9

    .line 231
    new-instance v0, Lbike/smarthalo/app/models/SHLocation;

    invoke-direct {v0}, Lbike/smarthalo/app/models/SHLocation;-><init>()V

    const/4 v1, 0x7

    .line 232
    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHLocation;->realmSet$type(I)V

    const-wide/16 v1, 0x0

    .line 233
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v3}, Lbike/smarthalo/app/models/SHLocation;->realmSet$latitude(Ljava/lang/Double;)V

    .line 234
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHLocation;->realmSet$longitude(Ljava/lang/Double;)V

    .line 236
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_5

    .line 241
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_5

    .line 242
    invoke-static {p1}, Lbike/smarthalo/app/managers/storageManagers/UserLocationStorageManager;->getRelevantSearchHistory(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 243
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    const/4 v6, 0x0

    .line 244
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 245
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ne v6, v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    .line 253
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lbike/smarthalo/app/models/SHLocation;

    .line 254
    invoke-virtual {v7}, Lbike/smarthalo/app/models/SHLocation;->realmGet$title()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, p1}, Lorg/apache/commons/lang3/StringUtils;->containsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v7}, Lbike/smarthalo/app/models/SHLocation;->realmGet$address()Ljava/lang/String;

    move-result-object v8

    .line 255
    invoke-static {v8, p1}, Lorg/apache/commons/lang3/StringUtils;->containsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v7}, Lbike/smarthalo/app/models/SHLocation;->realmGet$description()Ljava/lang/String;

    move-result-object v8

    .line 256
    invoke-static {v8, p1}, Lorg/apache/commons/lang3/StringUtils;->containsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 257
    :cond_4
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    :cond_6
    if-eqz p3, :cond_8

    .line 264
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_8

    const/4 p1, 0x0

    .line 265
    :goto_3
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v5

    if-ge p1, v5, :cond_9

    .line 266
    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x5

    if-ne p1, v5, :cond_7

    goto :goto_4

    :cond_7
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_8
    move v4, v5

    :cond_9
    :goto_4
    if-nez v4, :cond_10

    .line 275
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/UserLocationStorageManager;->getSearchHistory()Ljava/util/List;

    move-result-object p1

    .line 276
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_c

    .line 277
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v3, p3, :cond_b

    .line 278
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ne v3, v2, :cond_a

    goto :goto_6

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 283
    :cond_b
    :goto_6
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    :cond_c
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_10

    .line 287
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 288
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 290
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbike/smarthalo/app/models/SHLocation;

    .line 291
    invoke-virtual {v2}, Lbike/smarthalo/app/models/SHLocation;->realmGet$type()I

    move-result v3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_d

    .line 292
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 294
    :cond_d
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 298
    :cond_e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_f

    .line 299
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 300
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    :cond_f
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_10

    .line 304
    invoke-interface {v1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 308
    :cond_10
    invoke-direct {p0, v1, v4}, Lbike/smarthalo/app/presenters/SearchPresenter;->updateViewResults(Ljava/util/List;Z)V

    return-void
.end method

.method public static synthetic lambda$updateViewResults$6(Lbike/smarthalo/app/presenters/SearchPresenter;Ljava/util/List;Z)V
    .locals 1

    .line 314
    iget-object v0, p0, Lbike/smarthalo/app/presenters/SearchPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/SearchPresenterContract$View;

    if-nez p2, :cond_0

    iget-object p2, p0, Lbike/smarthalo/app/presenters/SearchPresenter;->currentQuery:Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-interface {v0, p1, p2}, Lbike/smarthalo/app/presenters/presenterContracts/SearchPresenterContract$View;->updateSearchResults(Ljava/util/List;Z)V

    return-void
.end method

.method private observeFirstLocation(Lio/reactivex/Flowable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Flowable<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    .line 155
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/SearchPresenter;->clearLocationSubscription()V

    const-wide/16 v0, 0x1

    .line 158
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Flowable;->take(J)Lio/reactivex/Flowable;

    move-result-object p1

    new-instance v0, Lbike/smarthalo/app/presenters/-$$Lambda$SearchPresenter$hJxZJxjmaCUESj6XG6cn5eAbvPE;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$SearchPresenter$hJxZJxjmaCUESj6XG6cn5eAbvPE;-><init>(Lbike/smarthalo/app/presenters/SearchPresenter;)V

    .line 159
    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/presenters/SearchPresenter;->locationSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private searchWithQuery(Ljava/lang/String;)V
    .locals 4

    .line 173
    iget-object v0, p0, Lbike/smarthalo/app/presenters/SearchPresenter;->currentLocation:Landroid/location/Location;

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lbike/smarthalo/app/presenters/SearchPresenter;->autocompleteSessionToken:Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Lbike/smarthalo/app/presenters/SearchPresenter;->geocodingManager:Lbike/smarthalo/app/managers/contracts/GeocodingManagerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/managers/contracts/GeocodingManagerContract;->getNewSessionToken()Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/presenters/SearchPresenter;->autocompleteSessionToken:Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

    .line 178
    :cond_0
    iget-object v0, p0, Lbike/smarthalo/app/presenters/SearchPresenter;->geocodingManager:Lbike/smarthalo/app/managers/contracts/GeocodingManagerContract;

    iget-object v1, p0, Lbike/smarthalo/app/presenters/SearchPresenter;->autocompleteSessionToken:Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

    iget-object v2, p0, Lbike/smarthalo/app/presenters/SearchPresenter;->currentLocation:Landroid/location/Location;

    new-instance v3, Lbike/smarthalo/app/presenters/-$$Lambda$SearchPresenter$Uip35vOmVu_2EHVUD7y-W4HRvg4;

    invoke-direct {v3, p0, p1}, Lbike/smarthalo/app/presenters/-$$Lambda$SearchPresenter$Uip35vOmVu_2EHVUD7y-W4HRvg4;-><init>(Lbike/smarthalo/app/presenters/SearchPresenter;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1, v2, v3}, Lbike/smarthalo/app/managers/contracts/GeocodingManagerContract;->searchForLocations(Ljava/lang/String;Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;Landroid/location/Location;Lbike/smarthalo/app/managers/cloudManagers/GeocodingManager$LocationSearchResultListener;)V

    goto :goto_0

    .line 187
    :cond_1
    iget-object p1, p0, Lbike/smarthalo/app/presenters/SearchPresenter;->context:Landroid/content/Context;

    invoke-static {p1}, Lbike/smarthalo/app/helpers/SHDialogHelper;->showNoLocationToast(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method private subscribeToFavouritesUpdates()V
    .locals 2

    .line 109
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/SearchPresenter;->clearFavouriteSubscription()V

    .line 111
    iget-object v0, p0, Lbike/smarthalo/app/presenters/SearchPresenter;->favouritesController:Lbike/smarthalo/app/coordinators/FavouritesController;

    .line 112
    invoke-virtual {v0}, Lbike/smarthalo/app/coordinators/FavouritesController;->getFavouritesSource()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$SearchPresenter$YVhVBI9EDReLwgOSF6LCEl8oT2Q;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$SearchPresenter$YVhVBI9EDReLwgOSF6LCEl8oT2Q;-><init>(Lbike/smarthalo/app/presenters/SearchPresenter;)V

    .line 113
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/presenters/SearchPresenter;->favouritesSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private subscribeToQueryUpdates()V
    .locals 4

    .line 120
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/SearchPresenter;->clearQuerySubscription()V

    .line 122
    iget-object v0, p0, Lbike/smarthalo/app/presenters/SearchPresenter;->querySource:Lio/reactivex/Flowable;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x190

    .line 123
    invoke-virtual {v0, v2, v3, v1}, Lio/reactivex/Flowable;->debounce(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$SearchPresenter$vsh2GPJnsWUt6wurWWq3qHExprA;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$SearchPresenter$vsh2GPJnsWUt6wurWWq3qHExprA;-><init>(Lbike/smarthalo/app/presenters/SearchPresenter;)V

    .line 124
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/presenters/SearchPresenter;->querySubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private updateDisplayList(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHLocation;",
            ">;",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHLocation;",
            ">;)V"
        }
    .end annotation

    .line 230
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$SearchPresenter$Y46VwKEto_dc6LwKeu5za5Xy3R0;

    invoke-direct {v1, p0, p1, p3, p2}, Lbike/smarthalo/app/presenters/-$$Lambda$SearchPresenter$Y46VwKEto_dc6LwKeu5za5Xy3R0;-><init>(Lbike/smarthalo/app/presenters/SearchPresenter;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 309
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private updateViewResults(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHLocation;",
            ">;Z)V"
        }
    .end annotation

    .line 313
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lbike/smarthalo/app/presenters/SearchPresenter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$SearchPresenter$2NBDJ0N9FOTg02czz3Awjvc-3UU;

    invoke-direct {v1, p0, p1, p2}, Lbike/smarthalo/app/presenters/-$$Lambda$SearchPresenter$2NBDJ0N9FOTg02czz3Awjvc-3UU;-><init>(Lbike/smarthalo/app/presenters/SearchPresenter;Ljava/util/List;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public getCurrentQuery()Ljava/lang/String;
    .locals 1

    .line 225
    iget-object v0, p0, Lbike/smarthalo/app/presenters/SearchPresenter;->currentQuery:Ljava/lang/String;

    return-object v0
.end method

.method public onSearchResultClicked(Lbike/smarthalo/app/models/SHLocation;)V
    .locals 3

    .line 199
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHLocation;->realmGet$title()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/presenters/SearchPresenter;->currentQuery:Ljava/lang/String;

    .line 201
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHLocation;->isValidForNavigation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lbike/smarthalo/app/presenters/SearchPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/SearchPresenterContract$View;

    invoke-interface {v0, p1}, Lbike/smarthalo/app/presenters/presenterContracts/SearchPresenterContract$View;->onSearchResultReady(Lbike/smarthalo/app/models/SHLocation;)V

    goto :goto_0

    .line 203
    :cond_0
    iget-object v0, p1, Lbike/smarthalo/app/models/SHLocation;->geocodingId:Ljava/lang/String;

    invoke-static {v0}, Lbike/smarthalo/app/helpers/StringHelper;->hasValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lbike/smarthalo/app/presenters/SearchPresenter;->geocodingManager:Lbike/smarthalo/app/managers/contracts/GeocodingManagerContract;

    iget-object v1, p0, Lbike/smarthalo/app/presenters/SearchPresenter;->autocompleteSessionToken:Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

    new-instance v2, Lbike/smarthalo/app/presenters/-$$Lambda$SearchPresenter$cJRYUKm0OYzv6lC6xj2Ssh7uc4A;

    invoke-direct {v2, p0, p1}, Lbike/smarthalo/app/presenters/-$$Lambda$SearchPresenter$cJRYUKm0OYzv6lC6xj2Ssh7uc4A;-><init>(Lbike/smarthalo/app/presenters/SearchPresenter;Lbike/smarthalo/app/models/SHLocation;)V

    .line 205
    invoke-interface {v0, p1, v1, v2}, Lbike/smarthalo/app/managers/contracts/GeocodingManagerContract;->getLocationInformationById(Lbike/smarthalo/app/models/SHLocation;Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;Lbike/smarthalo/app/managers/cloudManagers/GeocodingManager$LocationInformationListener;)V

    goto :goto_0

    .line 219
    :cond_1
    iget-object p1, p0, Lbike/smarthalo/app/presenters/SearchPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/SearchPresenterContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/presenters/presenterContracts/SearchPresenterContract$View;->onError()V

    :goto_0
    return-void
.end method

.method public onViewPaused()V
    .locals 2

    .line 78
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/SearchPresenter;->clearQuerySubscription()V

    .line 79
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/SearchPresenter;->clearFavouriteSubscription()V

    .line 80
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/SearchPresenter;->clearLocationSubscription()V

    .line 82
    iget-boolean v0, p0, Lbike/smarthalo/app/presenters/SearchPresenter;->isBoundToLocationService:Z

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lbike/smarthalo/app/presenters/SearchPresenter;->context:Landroid/content/Context;

    iget-object v1, p0, Lbike/smarthalo/app/presenters/SearchPresenter;->locationServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    return-void
.end method

.method public onViewResumed()V
    .locals 4

    .line 71
    iget-object v0, p0, Lbike/smarthalo/app/presenters/SearchPresenter;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lbike/smarthalo/app/presenters/SearchPresenter;->context:Landroid/content/Context;

    const-class v3, Lbike/smarthalo/app/services/SHLocationService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lbike/smarthalo/app/presenters/SearchPresenter;->locationServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 72
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/SearchPresenter;->subscribeToQueryUpdates()V

    .line 73
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/SearchPresenter;->subscribeToFavouritesUpdates()V

    return-void
.end method

.method public resetResultsList()V
    .locals 2

    const/4 v0, 0x0

    .line 192
    iput-object v0, p0, Lbike/smarthalo/app/presenters/SearchPresenter;->currentQuery:Ljava/lang/String;

    .line 193
    iget-object v1, p0, Lbike/smarthalo/app/presenters/SearchPresenter;->lastSearchResults:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 194
    iget-object v1, p0, Lbike/smarthalo/app/presenters/SearchPresenter;->favouriteList:Ljava/util/List;

    invoke-direct {p0, v0, v0, v1}, Lbike/smarthalo/app/presenters/SearchPresenter;->updateDisplayList(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public setFavouritesController(Lbike/smarthalo/app/coordinators/FavouritesController;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lbike/smarthalo/app/presenters/SearchPresenter;->favouritesController:Lbike/smarthalo/app/coordinators/FavouritesController;

    return-void
.end method

.method public setQuerySource(Lio/reactivex/Flowable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Flowable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 164
    iput-object p1, p0, Lbike/smarthalo/app/presenters/SearchPresenter;->querySource:Lio/reactivex/Flowable;

    return-void
.end method
