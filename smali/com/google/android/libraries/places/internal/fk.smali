.class final Lcom/google/android/libraries/places/internal/fk;
.super Landroid/database/DataSetObserver;
.source "PG"


# instance fields
.field private final synthetic a:Lcom/google/android/libraries/places/internal/fj;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/fj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/fk;->a:Lcom/google/android/libraries/places/internal/fj;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 2

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fk;->a:Lcom/google/android/libraries/places/internal/fj;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/fk;->a:Lcom/google/android/libraries/places/internal/fj;

    .line 3
    iget v1, v1, Lcom/google/android/libraries/places/internal/fj;->c:I

    .line 5
    iput v1, v0, Lcom/google/android/libraries/places/internal/fj;->b:I

    .line 7
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fk;->a:Lcom/google/android/libraries/places/internal/fj;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/fk;->a:Lcom/google/android/libraries/places/internal/fj;

    .line 8
    iget-object v1, v1, Lcom/google/android/libraries/places/internal/fj;->a:Lcom/google/android/libraries/places/internal/ex;

    .line 9
    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/ex;->getCount()I

    move-result v1

    .line 10
    iput v1, v0, Lcom/google/android/libraries/places/internal/fj;->c:I
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 14
    :goto_0
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/dx;->a(Ljava/lang/Throwable;)V

    .line 15
    throw v0
.end method

.method public final onInvalidated()V
    .locals 2

    .line 16
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fk;->a:Lcom/google/android/libraries/places/internal/fj;

    const/4 v1, 0x0

    .line 17
    iput v1, v0, Lcom/google/android/libraries/places/internal/fj;->c:I

    .line 19
    iput v1, v0, Lcom/google/android/libraries/places/internal/fj;->b:I

    return-void
.end method
