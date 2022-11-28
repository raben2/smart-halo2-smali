.class final Lbike/smarthalo/app/managers/cloudManagers/DirectionsCloudManager$1;
.super Ljava/lang/Object;
.source "DirectionsCloudManager.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/managers/cloudManagers/DirectionsCloudManager;->getValhallaDirectionsCallBack(Landroid/location/Location;Lbike/smarthalo/app/models/SHLocation;Landroid/content/Context;Lbike/smarthalo/app/api/RequestCallback;)Lretrofit2/Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lbike/smarthalo/app/api/valhalla/responses/ValhallaDirectionsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$cb:Lbike/smarthalo/app/api/RequestCallback;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$currentLocation:Landroid/location/Location;

.field final synthetic val$destination:Lbike/smarthalo/app/models/SHLocation;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/api/RequestCallback;Landroid/content/Context;Landroid/location/Location;Lbike/smarthalo/app/models/SHLocation;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lbike/smarthalo/app/managers/cloudManagers/DirectionsCloudManager$1;->val$cb:Lbike/smarthalo/app/api/RequestCallback;

    iput-object p2, p0, Lbike/smarthalo/app/managers/cloudManagers/DirectionsCloudManager$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lbike/smarthalo/app/managers/cloudManagers/DirectionsCloudManager$1;->val$currentLocation:Landroid/location/Location;

    iput-object p4, p0, Lbike/smarthalo/app/managers/cloudManagers/DirectionsCloudManager$1;->val$destination:Lbike/smarthalo/app/models/SHLocation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lbike/smarthalo/app/api/valhalla/responses/ValhallaDirectionsResponse;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 82
    iget-object p1, p0, Lbike/smarthalo/app/managers/cloudManagers/DirectionsCloudManager$1;->val$cb:Lbike/smarthalo/app/api/RequestCallback;

    const-string p2, "Failed to load directions from Valhalla"

    invoke-virtual {p1, p2}, Lbike/smarthalo/app/api/RequestCallback;->onFailure(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lbike/smarthalo/app/api/valhalla/responses/ValhallaDirectionsResponse;",
            ">;",
            "Lretrofit2/Response<",
            "Lbike/smarthalo/app/api/valhalla/responses/ValhallaDirectionsResponse;",
            ">;)V"
        }
    .end annotation

    .line 63
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 64
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/api/valhalla/responses/ValhallaDirectionsResponse;

    invoke-virtual {p1}, Lbike/smarthalo/app/api/valhalla/responses/ValhallaDirectionsResponse;->getTrip()Lbike/smarthalo/app/api/valhalla/responses/ValhallaTrip;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/api/valhalla/responses/ValhallaDirectionsResponse;

    invoke-virtual {p1}, Lbike/smarthalo/app/api/valhalla/responses/ValhallaDirectionsResponse;->getTrip()Lbike/smarthalo/app/api/valhalla/responses/ValhallaTrip;

    move-result-object p1

    invoke-virtual {p1}, Lbike/smarthalo/app/api/valhalla/responses/ValhallaTrip;->getLegs()Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/api/valhalla/responses/ValhallaLeg;

    invoke-virtual {p1}, Lbike/smarthalo/app/api/valhalla/responses/ValhallaLeg;->getManeuvers()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eqz p1, :cond_0

    .line 65
    new-instance p1, Lcom/google/gson/GsonBuilder;

    invoke-direct {p1}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object p1

    .line 66
    iget-object v0, p0, Lbike/smarthalo/app/managers/cloudManagers/DirectionsCloudManager$1;->val$cb:Lbike/smarthalo/app/api/RequestCallback;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lbike/smarthalo/app/api/RequestCallback;->onSuccess(Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :cond_0
    iget-object p1, p0, Lbike/smarthalo/app/managers/cloudManagers/DirectionsCloudManager$1;->val$cb:Lbike/smarthalo/app/api/RequestCallback;

    const-string p2, "The format of the valhalla data was incorrect"

    invoke-virtual {p1, p2}, Lbike/smarthalo/app/api/RequestCallback;->onFailure(Ljava/lang/String;)V

    .line 69
    iget-object p1, p0, Lbike/smarthalo/app/managers/cloudManagers/DirectionsCloudManager$1;->val$context:Landroid/content/Context;

    iget-object p2, p0, Lbike/smarthalo/app/managers/cloudManagers/DirectionsCloudManager$1;->val$currentLocation:Landroid/location/Location;

    iget-object v0, p0, Lbike/smarthalo/app/managers/cloudManagers/DirectionsCloudManager$1;->val$destination:Lbike/smarthalo/app/models/SHLocation;

    invoke-static {p1, p2, v0}, Lbike/smarthalo/app/analytics/DebugAnalyticsHelper;->sendInvalidValhallaDirectionEvent(Landroid/content/Context;Landroid/location/Location;Lbike/smarthalo/app/models/SHLocation;)V

    goto :goto_0

    .line 75
    :cond_1
    invoke-static {}, Lbike/smarthalo/app/managers/cloudManagers/DirectionsCloudManager;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResponse: body "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lretrofit2/Response;->message()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object p1, p0, Lbike/smarthalo/app/managers/cloudManagers/DirectionsCloudManager$1;->val$cb:Lbike/smarthalo/app/api/RequestCallback;

    const-string p2, "Failed to load directions from Valhalla"

    invoke-virtual {p1, p2}, Lbike/smarthalo/app/api/RequestCallback;->onFailure(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
