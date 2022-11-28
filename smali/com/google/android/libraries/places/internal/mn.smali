.class public final Lcom/google/android/libraries/places/internal/mn;
.super Lcom/google/android/libraries/places/internal/jy;
.source "PG"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/libraries/places/internal/jy<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final b:Lcom/google/android/libraries/places/internal/mn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/mn<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 27
    new-instance v0, Lcom/google/android/libraries/places/internal/mn;

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/internal/mn;-><init>(Ljava/util/List;)V

    .line 28
    sput-object v0, Lcom/google/android/libraries/places/internal/mn;->b:Lcom/google/android/libraries/places/internal/mn;

    .line 29
    iput-boolean v2, v0, Lcom/google/android/libraries/places/internal/jy;->a:Z

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/mn;-><init>(Ljava/util/List;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/jy;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/mn;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final add(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 6
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/jy;->c()V

    .line 7
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/mn;->c:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 8
    iget p1, p0, Lcom/google/android/libraries/places/internal/mn;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/libraries/places/internal/mn;->modCount:I

    return-void
.end method

.method public final synthetic b(I)Lcom/google/android/libraries/places/internal/lc;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/mn;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 24
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/mn;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 25
    new-instance p1, Lcom/google/android/libraries/places/internal/mn;

    invoke-direct {p1, v0}, Lcom/google/android/libraries/places/internal/mn;-><init>(Ljava/util/List;)V

    return-object p1

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/mn;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 11
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/jy;->c()V

    .line 12
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/mn;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    .line 13
    iget v0, p0, Lcom/google/android/libraries/places/internal/mn;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/libraries/places/internal/mn;->modCount:I

    return-object p1
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 15
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/jy;->c()V

    .line 16
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/mn;->c:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 17
    iget p2, p0, Lcom/google/android/libraries/places/internal/mn;->modCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/google/android/libraries/places/internal/mn;->modCount:I

    return-object p1
.end method

.method public final size()I
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/mn;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
