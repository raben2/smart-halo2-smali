.class public final Lcom/google/android/libraries/places/internal/u;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcom/google/android/libraries/places/api/net/PlacesClient;


# instance fields
.field public final a:Lcom/google/android/libraries/places/internal/fw;

.field public final b:Lcom/google/android/libraries/places/internal/j;

.field public final c:Lcom/google/android/libraries/places/internal/ds;

.field public final d:Lcom/google/android/libraries/places/internal/a;

.field private final e:Lcom/google/android/libraries/places/internal/d;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/fw;Lcom/google/android/libraries/places/internal/d;Lcom/google/android/libraries/places/internal/j;Lcom/google/android/libraries/places/internal/ds;Lcom/google/android/libraries/places/internal/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/u;->a:Lcom/google/android/libraries/places/internal/fw;

    .line 3
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/u;->e:Lcom/google/android/libraries/places/internal/d;

    .line 4
    iput-object p3, p0, Lcom/google/android/libraries/places/internal/u;->b:Lcom/google/android/libraries/places/internal/j;

    .line 5
    iput-object p4, p0, Lcom/google/android/libraries/places/internal/u;->c:Lcom/google/android/libraries/places/internal/ds;

    .line 6
    iput-object p5, p0, Lcom/google/android/libraries/places/internal/u;->d:Lcom/google/android/libraries/places/internal/a;

    return-void
.end method

.method static a(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResponseT::",
            "Lcom/google/android/libraries/places/internal/az;",
            ">(",
            "Lcom/google/android/gms/tasks/Task<",
            "TResponseT;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TResponseT;>;"
        }
    .end annotation

    .line 55
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/k;->a(Ljava/lang/Exception;)Lcom/google/android/gms/common/api/ApiException;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final fetchPhoto(Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;)Lcom/google/android/gms/tasks/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/libraries/places/api/net/FetchPhotoResponse;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string v0, "Request must not be null."

    .line 18
    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/go;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/u;->d:Lcom/google/android/libraries/places/internal/a;

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/a;->a()J

    move-result-wide v0

    .line 20
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/u;->a:Lcom/google/android/libraries/places/internal/fw;

    .line 21
    invoke-virtual {v2, p1}, Lcom/google/android/libraries/places/internal/fw;->a(Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    new-instance v3, Lcom/google/android/libraries/places/internal/x;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/google/android/libraries/places/internal/x;-><init>(Lcom/google/android/libraries/places/internal/u;Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;J)V

    .line 22
    invoke-virtual {v2, v3}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/google/android/libraries/places/internal/y;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/y;-><init>(Lcom/google/android/libraries/places/internal/u;)V

    .line 23
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 26
    :goto_0
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/dx;->a(Ljava/lang/Throwable;)V

    .line 27
    throw p1
.end method

.method public final fetchPlace(Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;)Lcom/google/android/gms/tasks/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/libraries/places/api/net/FetchPlaceResponse;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string v0, "Request must not be null."

    .line 28
    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/go;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/u;->d:Lcom/google/android/libraries/places/internal/a;

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/a;->a()J

    move-result-wide v0

    .line 30
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/u;->a:Lcom/google/android/libraries/places/internal/fw;

    .line 31
    invoke-virtual {v2, p1}, Lcom/google/android/libraries/places/internal/fw;->a(Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    new-instance v3, Lcom/google/android/libraries/places/internal/z;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/google/android/libraries/places/internal/z;-><init>(Lcom/google/android/libraries/places/internal/u;Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;J)V

    .line 32
    invoke-virtual {v2, v3}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/google/android/libraries/places/internal/aa;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/aa;-><init>(Lcom/google/android/libraries/places/internal/u;)V

    .line 33
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 36
    :goto_0
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/dx;->a(Ljava/lang/Throwable;)V

    .line 37
    throw p1
.end method

.method public final findAutocompletePredictions(Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;)Lcom/google/android/gms/tasks/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsResponse;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string v0, "Request must not be null."

    .line 8
    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/go;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/u;->d:Lcom/google/android/libraries/places/internal/a;

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/a;->a()J

    move-result-wide v0

    .line 10
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/u;->a:Lcom/google/android/libraries/places/internal/fw;

    .line 11
    invoke-virtual {v2, p1}, Lcom/google/android/libraries/places/internal/fw;->a(Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    new-instance v3, Lcom/google/android/libraries/places/internal/v;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/google/android/libraries/places/internal/v;-><init>(Lcom/google/android/libraries/places/internal/u;Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;J)V

    .line 12
    invoke-virtual {v2, v3}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/google/android/libraries/places/internal/w;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/w;-><init>(Lcom/google/android/libraries/places/internal/u;)V

    .line 13
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 16
    :goto_0
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/dx;->a(Ljava/lang/Throwable;)V

    .line 17
    throw p1
.end method

.method public final findCurrentPlace(Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;)Lcom/google/android/gms/tasks/Task;
    .locals 13
    .annotation build Landroidx/annotation/RequiresPermission;
        allOf = {
            "android.permission.ACCESS_FINE_LOCATION",
            "android.permission.ACCESS_WIFI_STATE"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/libraries/places/api/net/FindCurrentPlaceResponse;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string v0, "Request must not be null."

    .line 38
    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/go;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/u;->d:Lcom/google/android/libraries/places/internal/a;

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/a;->a()J

    move-result-wide v4

    .line 40
    new-instance v6, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, -0x1

    invoke-direct {v6, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 41
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/u;->e:Lcom/google/android/libraries/places/internal/d;

    .line 42
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;->getCancellationToken()Lcom/google/android/gms/tasks/CancellationToken;

    move-result-object v1

    .line 43
    iget-object v7, v0, Lcom/google/android/libraries/places/internal/d;->e:Lcom/google/android/libraries/places/internal/fv;

    iget-object v2, v0, Lcom/google/android/libraries/places/internal/d;->d:Lcom/google/android/gms/location/FusedLocationProviderClient;

    .line 44
    invoke-virtual {v2}, Lcom/google/android/gms/location/FusedLocationProviderClient;->getLastLocation()Lcom/google/android/gms/tasks/Task;

    move-result-object v8

    sget-wide v10, Lcom/google/android/libraries/places/internal/d;->a:J

    const-string v12, "Location timeout."

    move-object v9, v1

    .line 45
    invoke-virtual/range {v7 .. v12}, Lcom/google/android/libraries/places/internal/fv;->a(Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/CancellationToken;JLjava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    .line 46
    new-instance v3, Lcom/google/android/libraries/places/internal/e;

    invoke-direct {v3, v0, v1}, Lcom/google/android/libraries/places/internal/e;-><init>(Lcom/google/android/libraries/places/internal/d;Lcom/google/android/gms/tasks/CancellationToken;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 47
    new-instance v1, Lcom/google/android/libraries/places/internal/ab;

    invoke-direct {v1, p0, v6, p1}, Lcom/google/android/libraries/places/internal/ab;-><init>(Lcom/google/android/libraries/places/internal/u;Ljava/util/concurrent/atomic/AtomicLong;Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;)V

    .line 48
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v7, Lcom/google/android/libraries/places/internal/ac;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/libraries/places/internal/ac;-><init>(Lcom/google/android/libraries/places/internal/u;Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;JLjava/util/concurrent/atomic/AtomicLong;)V

    .line 49
    invoke-virtual {v0, v7}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/google/android/libraries/places/internal/ad;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/ad;-><init>(Lcom/google/android/libraries/places/internal/u;)V

    .line 50
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 53
    :goto_0
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/dx;->a(Ljava/lang/Throwable;)V

    .line 54
    throw p1
.end method
