.class final synthetic Lcom/google/android/libraries/places/internal/x;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field private final a:Lcom/google/android/libraries/places/internal/u;

.field private final b:Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;

.field private final c:J


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/u;Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/x;->a:Lcom/google/android/libraries/places/internal/u;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/x;->b:Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;

    iput-wide p3, p0, Lcom/google/android/libraries/places/internal/x;->c:J

    return-void
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/x;->a:Lcom/google/android/libraries/places/internal/u;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/x;->b:Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;

    iget-wide v4, p0, Lcom/google/android/libraries/places/internal/x;->c:J

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, v0, Lcom/google/android/libraries/places/internal/u;->d:Lcom/google/android/libraries/places/internal/a;

    invoke-interface {v1}, Lcom/google/android/libraries/places/internal/a;->a()J

    move-result-wide v6

    .line 4
    iget-object v2, v0, Lcom/google/android/libraries/places/internal/u;->c:Lcom/google/android/libraries/places/internal/ds;

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/libraries/places/internal/ds;->a(Lcom/google/android/gms/tasks/Task;JJ)V

    :cond_0
    return-object p1
.end method
