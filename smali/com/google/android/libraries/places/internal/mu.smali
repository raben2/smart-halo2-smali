.class final Lcom/google/android/libraries/places/internal/mu;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final synthetic c:Lcom/google/android/libraries/places/internal/ms;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/ms;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/mu;->c:Lcom/google/android/libraries/places/internal/ms;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/mu;->c:Lcom/google/android/libraries/places/internal/ms;

    .line 3
    iget-object p1, p1, Lcom/google/android/libraries/places/internal/ms;->a:Ljava/util/List;

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/google/android/libraries/places/internal/mu;->a:I

    return-void
.end method

.method private final a()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/mu;->b:Ljava/util/Iterator;

    if-nez v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/mu;->c:Lcom/google/android/libraries/places/internal/ms;

    .line 11
    iget-object v0, v0, Lcom/google/android/libraries/places/internal/ms;->d:Ljava/util/Map;

    .line 12
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/mu;->b:Ljava/util/Iterator;

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/mu;->b:Ljava/util/Iterator;

    return-object v0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    .line 5
    iget v0, p0, Lcom/google/android/libraries/places/internal/mu;->a:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/mu;->c:Lcom/google/android/libraries/places/internal/ms;

    .line 6
    iget-object v1, v1, Lcom/google/android/libraries/places/internal/ms;->a:Ljava/util/List;

    .line 7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/mu;->a()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 2

    .line 15
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/mu;->a()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/mu;->a()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/mu;->c:Lcom/google/android/libraries/places/internal/ms;

    .line 18
    iget-object v0, v0, Lcom/google/android/libraries/places/internal/ms;->a:Ljava/util/List;

    .line 19
    iget v1, p0, Lcom/google/android/libraries/places/internal/mu;->a:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/libraries/places/internal/mu;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

.method public final remove()V
    .locals 1

    .line 8
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
