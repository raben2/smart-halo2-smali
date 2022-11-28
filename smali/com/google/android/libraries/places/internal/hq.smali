.class final Lcom/google/android/libraries/places/internal/hq;
.super Lcom/google/android/libraries/places/internal/hg;
.source "PG"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/libraries/places/internal/hg<",
        "TK;>;"
    }
.end annotation


# instance fields
.field private final transient a:Lcom/google/android/libraries/places/internal/hd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/hd<",
            "TK;*>;"
        }
    .end annotation
.end field

.field private final transient b:Lcom/google/android/libraries/places/internal/ha;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/ha<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/hd;Lcom/google/android/libraries/places/internal/ha;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/places/internal/hd<",
            "TK;*>;",
            "Lcom/google/android/libraries/places/internal/ha<",
            "TK;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/hg;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/hq;->a:Lcom/google/android/libraries/places/internal/hd;

    .line 3
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/hq;->b:Lcom/google/android/libraries/places/internal/ha;

    return-void
.end method


# virtual methods
.method final a([Ljava/lang/Object;I)I
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/gz;->e()Lcom/google/android/libraries/places/internal/ha;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/places/internal/gz;->a([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public final a()Lcom/google/android/libraries/places/internal/hu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/libraries/places/internal/hu<",
            "TK;>;"
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/gz;->e()Lcom/google/android/libraries/places/internal/ha;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/gz;->iterator()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/hu;

    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 8
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/hq;->a:Lcom/google/android/libraries/places/internal/hd;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/hd;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final e()Lcom/google/android/libraries/places/internal/ha;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/libraries/places/internal/ha<",
            "TK;>;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/hq;->b:Lcom/google/android/libraries/places/internal/ha;

    return-object v0
.end method

.method final f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/gz;->a()Lcom/google/android/libraries/places/internal/hu;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/hq;->a:Lcom/google/android/libraries/places/internal/hd;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/hd;->size()I

    move-result v0

    return v0
.end method
