.class final Lcom/google/android/libraries/places/internal/na;
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

.field private b:Z

.field private c:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final synthetic d:Lcom/google/android/libraries/places/internal/ms;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/ms;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/na;->d:Lcom/google/android/libraries/places/internal/ms;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/google/android/libraries/places/internal/na;->a:I

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

    .line 23
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/na;->c:Ljava/util/Iterator;

    if-nez v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/na;->d:Lcom/google/android/libraries/places/internal/ms;

    .line 25
    iget-object v0, v0, Lcom/google/android/libraries/places/internal/ms;->b:Ljava/util/Map;

    .line 26
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/na;->c:Ljava/util/Iterator;

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/na;->c:Ljava/util/Iterator;

    return-object v0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 3

    .line 3
    iget v0, p0, Lcom/google/android/libraries/places/internal/na;->a:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/na;->d:Lcom/google/android/libraries/places/internal/ms;

    .line 4
    iget-object v2, v2, Lcom/google/android/libraries/places/internal/ms;->a:Ljava/util/List;

    .line 5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/na;->d:Lcom/google/android/libraries/places/internal/ms;

    .line 7
    iget-object v0, v0, Lcom/google/android/libraries/places/internal/ms;->b:Ljava/util/Map;

    .line 8
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/na;->a()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/na;->b:Z

    .line 30
    iget v1, p0, Lcom/google/android/libraries/places/internal/na;->a:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/libraries/places/internal/na;->a:I

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/na;->d:Lcom/google/android/libraries/places/internal/ms;

    .line 31
    iget-object v0, v0, Lcom/google/android/libraries/places/internal/ms;->a:Ljava/util/List;

    .line 32
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/na;->d:Lcom/google/android/libraries/places/internal/ms;

    .line 34
    iget-object v0, v0, Lcom/google/android/libraries/places/internal/ms;->a:Ljava/util/List;

    .line 35
    iget v1, p0, Lcom/google/android/libraries/places/internal/na;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0

    .line 36
    :cond_0
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/na;->a()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

.method public final remove()V
    .locals 3

    .line 10
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/na;->b:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/na;->b:Z

    .line 13
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/na;->d:Lcom/google/android/libraries/places/internal/ms;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/ms;->e()V

    .line 15
    iget v0, p0, Lcom/google/android/libraries/places/internal/na;->a:I

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/na;->d:Lcom/google/android/libraries/places/internal/ms;

    .line 16
    iget-object v1, v1, Lcom/google/android/libraries/places/internal/ms;->a:Ljava/util/List;

    .line 17
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 18
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/na;->d:Lcom/google/android/libraries/places/internal/ms;

    iget v1, p0, Lcom/google/android/libraries/places/internal/na;->a:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/android/libraries/places/internal/na;->a:I

    .line 19
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/ms;->c(I)Ljava/lang/Object;

    return-void

    .line 21
    :cond_0
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/na;->a()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void

    .line 11
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() was called before next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
