.class final Lcom/google/android/libraries/places/internal/hc;
.super Lcom/google/android/libraries/places/internal/ha;
.source "PG"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/places/internal/ha<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final transient a:I

.field private final transient b:I

.field private final synthetic c:Lcom/google/android/libraries/places/internal/ha;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/ha;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/hc;->c:Lcom/google/android/libraries/places/internal/ha;

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/ha;-><init>()V

    .line 2
    iput p2, p0, Lcom/google/android/libraries/places/internal/hc;->a:I

    .line 3
    iput p3, p0, Lcom/google/android/libraries/places/internal/hc;->b:I

    return-void
.end method


# virtual methods
.method public final a(II)Lcom/google/android/libraries/places/internal/ha;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/android/libraries/places/internal/ha<",
            "TE;>;"
        }
    .end annotation

    .line 11
    iget v0, p0, Lcom/google/android/libraries/places/internal/hc;->b:I

    invoke-static {p1, p2, v0}, Lcom/google/android/libraries/places/internal/go;->a(III)V

    .line 12
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/hc;->c:Lcom/google/android/libraries/places/internal/ha;

    iget v1, p0, Lcom/google/android/libraries/places/internal/hc;->a:I

    add-int/2addr p1, v1

    add-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/places/internal/ha;->subList(II)Ljava/util/List;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/ha;

    return-object p1
.end method

.method final b()[Ljava/lang/Object;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/hc;->c:Lcom/google/android/libraries/places/internal/ha;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/gz;->b()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final c()I
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/hc;->c:Lcom/google/android/libraries/places/internal/ha;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/gz;->c()I

    move-result v0

    iget v1, p0, Lcom/google/android/libraries/places/internal/hc;->a:I

    add-int/2addr v0, v1

    return v0
.end method

.method final d()I
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/hc;->c:Lcom/google/android/libraries/places/internal/ha;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/gz;->c()I

    move-result v0

    iget v1, p0, Lcom/google/android/libraries/places/internal/hc;->a:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/libraries/places/internal/hc;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method final f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 9
    iget v0, p0, Lcom/google/android/libraries/places/internal/hc;->b:I

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/go;->a(II)I

    .line 10
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/hc;->c:Lcom/google/android/libraries/places/internal/ha;

    iget v1, p0, Lcom/google/android/libraries/places/internal/hc;->a:I

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/ha;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    .line 5
    iget v0, p0, Lcom/google/android/libraries/places/internal/hc;->b:I

    return v0
.end method

.method public final synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/google/android/libraries/places/internal/ha;->a(II)Lcom/google/android/libraries/places/internal/ha;

    move-result-object p1

    return-object p1
.end method
