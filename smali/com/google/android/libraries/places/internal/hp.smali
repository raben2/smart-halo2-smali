.class final Lcom/google/android/libraries/places/internal/hp;
.super Lcom/google/android/libraries/places/internal/ha;
.source "PG"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/places/internal/ha<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/libraries/places/internal/ho;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/ho;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/hp;->a:Lcom/google/android/libraries/places/internal/ho;

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/ha;-><init>()V

    return-void
.end method


# virtual methods
.method public final f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .locals 3

    .line 7
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/hp;->a:Lcom/google/android/libraries/places/internal/ho;

    .line 8
    iget v0, v0, Lcom/google/android/libraries/places/internal/ho;->c:I

    .line 9
    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/go;->a(II)I

    .line 10
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/hp;->a:Lcom/google/android/libraries/places/internal/ho;

    .line 11
    iget-object v0, v0, Lcom/google/android/libraries/places/internal/ho;->a:[Ljava/lang/Object;

    mul-int/lit8 p1, p1, 0x2

    .line 12
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/hp;->a:Lcom/google/android/libraries/places/internal/ho;

    .line 13
    iget v1, v1, Lcom/google/android/libraries/places/internal/ho;->b:I

    add-int/2addr v1, p1

    .line 14
    aget-object v0, v0, v1

    .line 15
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/hp;->a:Lcom/google/android/libraries/places/internal/ho;

    .line 16
    iget-object v1, v1, Lcom/google/android/libraries/places/internal/ho;->a:[Ljava/lang/Object;

    .line 17
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/hp;->a:Lcom/google/android/libraries/places/internal/ho;

    .line 18
    iget v2, v2, Lcom/google/android/libraries/places/internal/ho;->b:I

    xor-int/lit8 v2, v2, 0x1

    add-int/2addr p1, v2

    .line 19
    aget-object p1, v1, p1

    .line 20
    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v1, v0, p1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public final size()I
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/hp;->a:Lcom/google/android/libraries/places/internal/ho;

    .line 3
    iget v0, v0, Lcom/google/android/libraries/places/internal/ho;->c:I

    return v0
.end method
