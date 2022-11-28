.class public final synthetic Lcom/google/android/libraries/places/internal/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field private final a:Lcom/google/android/libraries/places/internal/d;

.field private final b:Lcom/google/android/gms/tasks/CancellationToken;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/d;Lcom/google/android/gms/tasks/CancellationToken;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/e;->a:Lcom/google/android/libraries/places/internal/d;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/e;->b:Lcom/google/android/gms/tasks/CancellationToken;

    return-void
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/e;->a:Lcom/google/android/libraries/places/internal/d;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/e;->b:Lcom/google/android/gms/tasks/CancellationToken;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Location;

    const/4 v4, 0x0

    if-nez v2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x11

    if-lt v5, v6, :cond_1

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v5

    invoke-virtual {v2}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v7

    sub-long/2addr v5, v7

    .line 8
    sget-wide v7, Lcom/google/android/libraries/places/internal/d;->b:J

    cmp-long v2, v5, v7

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    :goto_0
    if-eqz v4, :cond_2

    return-object p1

    :cond_2
    if-eqz v1, :cond_3

    .line 14
    new-instance p1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p1, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>(Lcom/google/android/gms/tasks/CancellationToken;)V

    goto :goto_1

    .line 15
    :cond_3
    new-instance p1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 16
    :goto_1
    invoke-static {}, Lcom/google/android/gms/location/LocationRequest;->create()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v1

    const/16 v2, 0x64

    .line 17
    invoke-virtual {v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v1

    sget-wide v4, Lcom/google/android/libraries/places/internal/d;->a:J

    .line 18
    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/location/LocationRequest;->setExpirationDuration(J)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v1

    sget-wide v4, Lcom/google/android/libraries/places/internal/d;->c:J

    .line 19
    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v1

    const-wide/16 v4, 0xa

    .line 20
    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/location/LocationRequest;->setFastestInterval(J)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v1

    .line 21
    invoke-virtual {v1, v3}, Lcom/google/android/gms/location/LocationRequest;->setNumUpdates(I)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v1

    .line 24
    new-instance v2, Lcom/google/android/libraries/places/internal/h;

    invoke-direct {v2, p1}, Lcom/google/android/libraries/places/internal/h;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 26
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    .line 27
    iget-object v4, v0, Lcom/google/android/libraries/places/internal/d;->d:Lcom/google/android/gms/location/FusedLocationProviderClient;

    .line 28
    invoke-virtual {v4, v1, v2, v3}, Lcom/google/android/gms/location/FusedLocationProviderClient;->requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationCallback;Landroid/os/Looper;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v3, Lcom/google/android/libraries/places/internal/f;

    invoke-direct {v3, v0, p1}, Lcom/google/android/libraries/places/internal/f;-><init>(Lcom/google/android/libraries/places/internal/d;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 29
    invoke-virtual {v1, v3}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 30
    iget-object v1, v0, Lcom/google/android/libraries/places/internal/d;->e:Lcom/google/android/libraries/places/internal/fv;

    sget-wide v3, Lcom/google/android/libraries/places/internal/d;->a:J

    const-string v5, "Location timeout."

    invoke-virtual {v1, p1, v3, v4, v5}, Lcom/google/android/libraries/places/internal/fv;->a(Lcom/google/android/gms/tasks/TaskCompletionSource;JLjava/lang/String;)Z

    .line 32
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v3, Lcom/google/android/libraries/places/internal/g;

    invoke-direct {v3, v0, v2, p1}, Lcom/google/android/libraries/places/internal/g;-><init>(Lcom/google/android/libraries/places/internal/d;Lcom/google/android/gms/location/LocationCallback;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 33
    invoke-virtual {v1, v3}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 34
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
