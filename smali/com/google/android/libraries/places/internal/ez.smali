.class final synthetic Lcom/google/android/libraries/places/internal/ez;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field private final a:Lcom/google/android/libraries/places/internal/ex;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/ex;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/ez;->a:Lcom/google/android/libraries/places/internal/ex;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ez;->a:Lcom/google/android/libraries/places/internal/ex;

    const/4 v1, 0x0

    .line 2
    iput-object v1, v0, Lcom/google/android/libraries/places/internal/ex;->c:Lcom/google/android/gms/tasks/CancellationTokenSource;

    .line 3
    iget-object v1, v0, Lcom/google/android/libraries/places/internal/ex;->e:Lcom/google/android/libraries/places/internal/fe;

    .line 4
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/ex;->a(Ljava/lang/Exception;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/google/android/libraries/places/internal/fe;->a(Lcom/google/android/libraries/places/internal/fe;Lcom/google/android/gms/common/api/Status;)Lcom/google/android/libraries/places/internal/fe;

    move-result-object p1

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/ex;->a(Lcom/google/android/libraries/places/internal/fe;)V

    return-void
.end method
