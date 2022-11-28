.class public Lbike/smarthalo/app/managers/cloudManagers/DirectionsCloudManager;
.super Ljava/lang/Object;
.source "DirectionsCloudManager.java"


# static fields
.field public static final MAX_DISTANCE_TO_REMOVE:D = 40.0

.field private static final TAG:Ljava/lang/String; = "DirectionsCloudManager"


# instance fields
.field private gson:Lcom/google/gson/Gson;

.field private valhallaDirectionsApi:Lbike/smarthalo/app/api/valhalla/ValhallaDirectionsApi;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lbike/smarthalo/app/managers/KeyManager;Z)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p1, p2}, Lbike/smarthalo/app/api/valhalla/ValhallaApi;->buildValhallaDirectionsApi(Lbike/smarthalo/app/managers/KeyManager;Z)Lbike/smarthalo/app/api/valhalla/ValhallaDirectionsApi;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/managers/cloudManagers/DirectionsCloudManager;->valhallaDirectionsApi:Lbike/smarthalo/app/api/valhalla/ValhallaDirectionsApi;

    .line 37
    new-instance p1, Lcom/google/gson/GsonBuilder;

    invoke-direct {p1}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/managers/cloudManagers/DirectionsCloudManager;->gson:Lcom/google/gson/Gson;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 29
    sget-object v0, Lbike/smarthalo/app/managers/cloudManagers/DirectionsCloudManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static getValhallaDirectionsCallBack(Landroid/location/Location;Lbike/smarthalo/app/models/SHLocation;Landroid/content/Context;Lbike/smarthalo/app/api/RequestCallback;)Lretrofit2/Callback;
    .locals 1
    .param p3    # Lbike/smarthalo/app/api/RequestCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Location;",
            "Lbike/smarthalo/app/models/SHLocation;",
            "Landroid/content/Context;",
            "Lbike/smarthalo/app/api/RequestCallback;",
            ")",
            "Lretrofit2/Callback<",
            "Lbike/smarthalo/app/api/valhalla/responses/ValhallaDirectionsResponse;",
            ">;"
        }
    .end annotation

    .line 60
    new-instance v0, Lbike/smarthalo/app/managers/cloudManagers/DirectionsCloudManager$1;

    invoke-direct {v0, p3, p2, p0, p1}, Lbike/smarthalo/app/managers/cloudManagers/DirectionsCloudManager$1;-><init>(Lbike/smarthalo/app/api/RequestCallback;Landroid/content/Context;Landroid/location/Location;Lbike/smarthalo/app/models/SHLocation;)V

    return-object v0
.end method


# virtual methods
.method public findValhallaStepsToLocation(Lbike/smarthalo/app/models/SHLocation;Landroid/location/Location;Ljava/lang/String;Lbike/smarthalo/app/api/valhalla/gets/ValhallaBicycleCostingOptions;Lbike/smarthalo/app/api/valhalla/gets/ValhallaDirectionsOptions;Landroid/content/Context;Lbike/smarthalo/app/api/RequestCallback;)V
    .locals 6
    .param p7    # Lbike/smarthalo/app/api/RequestCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 41
    new-instance v0, Lbike/smarthalo/app/api/valhalla/gets/ValhallaJSON;

    invoke-direct {v0}, Lbike/smarthalo/app/api/valhalla/gets/ValhallaJSON;-><init>()V

    .line 42
    new-instance v1, Lbike/smarthalo/app/api/valhalla/gets/ValhallaWayPointLocation;

    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lbike/smarthalo/app/api/valhalla/gets/ValhallaWayPointLocation;-><init>(DD)V

    .line 43
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 44
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p3

    iput-object p3, v1, Lbike/smarthalo/app/api/valhalla/gets/ValhallaWayPointLocation;->heading:Ljava/lang/Integer;

    .line 46
    :cond_0
    iget-object p3, v0, Lbike/smarthalo/app/api/valhalla/gets/ValhallaJSON;->locations:Ljava/util/ArrayList;

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    new-instance p3, Lbike/smarthalo/app/api/valhalla/gets/ValhallaWayPointLocation;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHLocation;->realmGet$latitude()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHLocation;->realmGet$longitude()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-direct {p3, v1, v2, v3, v4}, Lbike/smarthalo/app/api/valhalla/gets/ValhallaWayPointLocation;-><init>(DD)V

    .line 48
    iget-object v1, v0, Lbike/smarthalo/app/api/valhalla/gets/ValhallaJSON;->locations:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object p3, v0, Lbike/smarthalo/app/api/valhalla/gets/ValhallaJSON;->costingOptions:Lbike/smarthalo/app/api/valhalla/gets/ValhallaCostingOptions;

    iput-object p4, p3, Lbike/smarthalo/app/api/valhalla/gets/ValhallaCostingOptions;->bicycle:Lbike/smarthalo/app/api/valhalla/gets/ValhallaBicycleCostingOptions;

    .line 50
    iput-object p5, v0, Lbike/smarthalo/app/api/valhalla/gets/ValhallaJSON;->directionsOptions:Lbike/smarthalo/app/api/valhalla/gets/ValhallaDirectionsOptions;

    .line 52
    iget-object p3, p0, Lbike/smarthalo/app/managers/cloudManagers/DirectionsCloudManager;->valhallaDirectionsApi:Lbike/smarthalo/app/api/valhalla/ValhallaDirectionsApi;

    iget-object p4, p0, Lbike/smarthalo/app/managers/cloudManagers/DirectionsCloudManager;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p4, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-interface {p3, p4}, Lbike/smarthalo/app/api/valhalla/ValhallaDirectionsApi;->getDirections(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p3

    invoke-static {p2, p1, p6, p7}, Lbike/smarthalo/app/managers/cloudManagers/DirectionsCloudManager;->getValhallaDirectionsCallBack(Landroid/location/Location;Lbike/smarthalo/app/models/SHLocation;Landroid/content/Context;Lbike/smarthalo/app/api/RequestCallback;)Lretrofit2/Callback;

    move-result-object p1

    invoke-interface {p3, p1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method
