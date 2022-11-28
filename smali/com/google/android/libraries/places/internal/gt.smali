.class Lcom/google/android/libraries/places/internal/gt;
.super Lcom/google/android/libraries/places/internal/hv;
.source "PG"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/libraries/places/internal/hv<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/libraries/places/internal/ha;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/ha<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final b:I

.field private c:I


# direct methods
.method protected constructor <init>(II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/hv;-><init>()V

    .line 3
    invoke-static {p2, p1}, Lcom/google/android/libraries/places/internal/go;->b(II)I

    .line 4
    iput p1, p0, Lcom/google/android/libraries/places/internal/gt;->b:I

    .line 5
    iput p2, p0, Lcom/google/android/libraries/places/internal/gt;->c:I

    return-void
.end method

.method constructor <init>(Lcom/google/android/libraries/places/internal/ha;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/places/internal/ha<",
            "TE;>;I)V"
        }
    .end annotation

    .line 17
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/ha;->size()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/libraries/places/internal/gt;-><init>(II)V

    .line 18
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/gt;->a:Lcom/google/android/libraries/places/internal/ha;

    return-void
.end method


# virtual methods
.method protected a(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/gt;->a:Lcom/google/android/libraries/places/internal/ha;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/ha;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final hasNext()Z
    .locals 2

    .line 7
    iget v0, p0, Lcom/google/android/libraries/places/internal/gt;->c:I

    iget v1, p0, Lcom/google/android/libraries/places/internal/gt;->b:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasPrevious()Z
    .locals 1

    .line 12
    iget v0, p0, Lcom/google/android/libraries/places/internal/gt;->c:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 8
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/gt;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    iget v0, p0, Lcom/google/android/libraries/places/internal/gt;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/libraries/places/internal/gt;->c:I

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/places/internal/gt;->a(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 9
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final nextIndex()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/google/android/libraries/places/internal/gt;->c:I

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 13
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/gt;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    iget v0, p0, Lcom/google/android/libraries/places/internal/gt;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/libraries/places/internal/gt;->c:I

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/places/internal/gt;->a(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 14
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final previousIndex()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/google/android/libraries/places/internal/gt;->c:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method
