.class public final Lcom/google/android/libraries/places/internal/he;
.super Ljava/lang/Object;
.source "PG"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:[Ljava/lang/Object;

.field private b:I

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/he;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    mul-int/lit8 p1, p1, 0x2

    .line 4
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/he;->a:[Ljava/lang/Object;

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/google/android/libraries/places/internal/he;->b:I

    .line 6
    iput-boolean p1, p0, Lcom/google/android/libraries/places/internal/he;->c:Z

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/libraries/places/internal/hd;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/libraries/places/internal/hd<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/he;->c:Z

    .line 21
    iget v0, p0, Lcom/google/android/libraries/places/internal/he;->b:I

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/he;->a:[Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/hn;->a(I[Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/hn;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;
    .locals 3
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/google/android/libraries/places/internal/he<",
            "TK;TV;>;"
        }
    .end annotation

    .line 8
    iget v0, p0, Lcom/google/android/libraries/places/internal/he;->b:I

    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x1

    .line 9
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/he;->a:[Ljava/lang/Object;

    array-length v2, v1

    if-le v0, v2, :cond_0

    .line 10
    array-length v2, v1

    .line 11
    invoke-static {v2, v0}, Lcom/google/android/libraries/places/internal/go;->c(II)I

    move-result v0

    .line 12
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/he;->a:[Ljava/lang/Object;

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/he;->c:Z

    .line 14
    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/libraries/places/internal/go;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/he;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/libraries/places/internal/he;->b:I

    mul-int/lit8 v2, v1, 0x2

    aput-object p1, v0, v2

    mul-int/lit8 p1, v1, 0x2

    add-int/lit8 p1, p1, 0x1

    .line 16
    aput-object p2, v0, p1

    add-int/lit8 v1, v1, 0x1

    .line 17
    iput v1, p0, Lcom/google/android/libraries/places/internal/he;->b:I

    return-object p0
.end method
