.class final Lcom/google/android/libraries/places/internal/ht;
.super Lcom/google/android/libraries/places/internal/hg;
.source "PG"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/libraries/places/internal/hg<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final transient a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private transient b:I
    .annotation runtime Lcom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/hg;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/go;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/ht;->a:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/hg;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/ht;->a:Ljava/lang/Object;

    .line 6
    iput p2, p0, Lcom/google/android/libraries/places/internal/ht;->b:I

    return-void
.end method


# virtual methods
.method final a([Ljava/lang/Object;I)I
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ht;->a:Ljava/lang/Object;

    aput-object v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    return p2
.end method

.method public final a()Lcom/google/android/libraries/places/internal/hu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/libraries/places/internal/hu<",
            "TE;>;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ht;->a:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/go;->d(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/hu;

    move-result-object v0

    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ht;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final g()Z
    .locals 1

    .line 19
    iget v0, p0, Lcom/google/android/libraries/places/internal/ht;->b:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final h()Lcom/google/android/libraries/places/internal/ha;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/libraries/places/internal/ha<",
            "TE;>;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ht;->a:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/ha;->a(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/ha;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/google/android/libraries/places/internal/ht;->b:I

    if-nez v0, :cond_0

    .line 17
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ht;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/places/internal/ht;->b:I

    :cond_0
    return v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/gz;->a()Lcom/google/android/libraries/places/internal/hu;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 20
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ht;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x5b

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
