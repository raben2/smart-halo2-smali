.class final synthetic Lcom/google/android/libraries/places/internal/ac;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field private final a:Lcom/google/android/libraries/places/internal/u;

.field private final b:Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;

.field private final c:J

.field private final d:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/u;Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;JLjava/util/concurrent/atomic/AtomicLong;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/ac;->a:Lcom/google/android/libraries/places/internal/u;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/ac;->b:Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;

    iput-wide p3, p0, Lcom/google/android/libraries/places/internal/ac;->c:J

    iput-object p5, p0, Lcom/google/android/libraries/places/internal/ac;->d:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ac;->a:Lcom/google/android/libraries/places/internal/u;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/ac;->b:Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;

    iget-wide v4, p0, Lcom/google/android/libraries/places/internal/ac;->c:J

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/ac;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3
    iget-object v3, v0, Lcom/google/android/libraries/places/internal/u;->d:Lcom/google/android/libraries/places/internal/a;

    invoke-interface {v3}, Lcom/google/android/libraries/places/internal/a;->a()J

    move-result-wide v8

    .line 4
    iget-object v0, v0, Lcom/google/android/libraries/places/internal/u;->c:Lcom/google/android/libraries/places/internal/ds;

    .line 5
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    move-object v1, v0

    move-object v3, p1

    .line 6
    invoke-virtual/range {v1 .. v9}, Lcom/google/android/libraries/places/internal/ds;->a(Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;Lcom/google/android/gms/tasks/Task;JJJ)V

    :cond_0
    return-object p1
.end method
