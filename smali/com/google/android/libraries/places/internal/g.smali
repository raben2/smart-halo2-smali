.class final synthetic Lcom/google/android/libraries/places/internal/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field private final a:Lcom/google/android/libraries/places/internal/d;

.field private final b:Lcom/google/android/gms/location/LocationCallback;

.field private final c:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/d;Lcom/google/android/gms/location/LocationCallback;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/g;->a:Lcom/google/android/libraries/places/internal/d;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/g;->b:Lcom/google/android/gms/location/LocationCallback;

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/g;->c:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/g;->a:Lcom/google/android/libraries/places/internal/d;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/g;->b:Lcom/google/android/gms/location/LocationCallback;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/g;->c:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    iget-object v2, p1, Lcom/google/android/libraries/places/internal/d;->d:Lcom/google/android/gms/location/FusedLocationProviderClient;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/location/FusedLocationProviderClient;->removeLocationUpdates(Lcom/google/android/gms/location/LocationCallback;)Lcom/google/android/gms/tasks/Task;

    .line 3
    iget-object p1, p1, Lcom/google/android/libraries/places/internal/d;->e:Lcom/google/android/libraries/places/internal/fv;

    invoke-virtual {p1, v1}, Lcom/google/android/libraries/places/internal/fv;->a(Lcom/google/android/gms/tasks/TaskCompletionSource;)Z

    return-void
.end method
