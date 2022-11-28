.class public final synthetic Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$GeocodingManager$b0jvl7j2rYncpBiPbqiCE9rfM0I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field private final synthetic f$0:Ljava/util/List;

.field private final synthetic f$1:Lbike/smarthalo/app/managers/cloudManagers/GeocodingManager$LocationSearchResultListener;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lbike/smarthalo/app/managers/cloudManagers/GeocodingManager$LocationSearchResultListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$GeocodingManager$b0jvl7j2rYncpBiPbqiCE9rfM0I;->f$0:Ljava/util/List;

    iput-object p2, p0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$GeocodingManager$b0jvl7j2rYncpBiPbqiCE9rfM0I;->f$1:Lbike/smarthalo/app/managers/cloudManagers/GeocodingManager$LocationSearchResultListener;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$GeocodingManager$b0jvl7j2rYncpBiPbqiCE9rfM0I;->f$0:Ljava/util/List;

    iget-object v1, p0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$GeocodingManager$b0jvl7j2rYncpBiPbqiCE9rfM0I;->f$1:Lbike/smarthalo/app/managers/cloudManagers/GeocodingManager$LocationSearchResultListener;

    check-cast p1, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsResponse;

    invoke-static {v0, v1, p1}, Lbike/smarthalo/app/managers/cloudManagers/GeocodingManager;->lambda$searchForLocations$2(Ljava/util/List;Lbike/smarthalo/app/managers/cloudManagers/GeocodingManager$LocationSearchResultListener;Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsResponse;)V

    return-void
.end method
