.class public abstract Lcom/google/android/libraries/places/internal/ha;
.super Lcom/google/android/libraries/places/internal/gz;
.source "PG"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/libraries/places/internal/gz<",
        "TE;>;",
        "Ljava/util/List<",
        "TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final a:Lcom/google/android/libraries/places/internal/hv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/hv<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 73
    new-instance v0, Lcom/google/android/libraries/places/internal/gt;

    sget-object v1, Lcom/google/android/libraries/places/internal/hm;->a:Lcom/google/android/libraries/places/internal/ha;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/places/internal/gt;-><init>(Lcom/google/android/libraries/places/internal/ha;I)V

    sput-object v0, Lcom/google/android/libraries/places/internal/ha;->a:Lcom/google/android/libraries/places/internal/hv;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/gz;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/ha;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Lcom/google/android/libraries/places/internal/ha<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 3
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/go;->a([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .line 4
    array-length v0, p0

    invoke-static {p0, v0}, Lcom/google/android/libraries/places/internal/ha;->b([Ljava/lang/Object;I)Lcom/google/android/libraries/places/internal/ha;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/Collection;)Lcom/google/android/libraries/places/internal/ha;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TE;>;)",
            "Lcom/google/android/libraries/places/internal/ha<",
            "TE;>;"
        }
    .end annotation

    .line 6
    instance-of v0, p0, Lcom/google/android/libraries/places/internal/gz;

    if-eqz v0, :cond_1

    .line 7
    check-cast p0, Lcom/google/android/libraries/places/internal/gz;

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/gz;->e()Lcom/google/android/libraries/places/internal/ha;

    move-result-object p0

    .line 8
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/gz;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/gz;->toArray()[Ljava/lang/Object;

    move-result-object p0

    .line 9
    array-length v0, p0

    invoke-static {p0, v0}, Lcom/google/android/libraries/places/internal/ha;->b([Ljava/lang/Object;I)Lcom/google/android/libraries/places/internal/ha;

    move-result-object p0

    :cond_0
    return-object p0

    .line 11
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p0

    .line 12
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/go;->a([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .line 13
    array-length v0, p0

    invoke-static {p0, v0}, Lcom/google/android/libraries/places/internal/ha;->b([Ljava/lang/Object;I)Lcom/google/android/libraries/places/internal/ha;

    move-result-object p0

    return-object p0
.end method

.method public static a([Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/ha;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lcom/google/android/libraries/places/internal/ha<",
            "TE;>;"
        }
    .end annotation

    .line 15
    array-length v0, p0

    if-nez v0, :cond_0

    .line 16
    sget-object p0, Lcom/google/android/libraries/places/internal/hm;->a:Lcom/google/android/libraries/places/internal/ha;

    return-object p0

    .line 18
    :cond_0
    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    .line 19
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/go;->a([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .line 20
    array-length v0, p0

    invoke-static {p0, v0}, Lcom/google/android/libraries/places/internal/ha;->b([Ljava/lang/Object;I)Lcom/google/android/libraries/places/internal/ha;

    move-result-object p0

    return-object p0
.end method

.method static b([Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/ha;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/libraries/places/internal/ha<",
            "TE;>;"
        }
    .end annotation

    .line 22
    array-length v0, p0

    invoke-static {p0, v0}, Lcom/google/android/libraries/places/internal/ha;->b([Ljava/lang/Object;I)Lcom/google/android/libraries/places/internal/ha;

    move-result-object p0

    return-object p0
.end method

.method static b([Ljava/lang/Object;I)Lcom/google/android/libraries/places/internal/ha;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "I)",
            "Lcom/google/android/libraries/places/internal/ha<",
            "TE;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 24
    sget-object p0, Lcom/google/android/libraries/places/internal/hm;->a:Lcom/google/android/libraries/places/internal/ha;

    return-object p0

    .line 26
    :cond_0
    new-instance v0, Lcom/google/android/libraries/places/internal/hm;

    invoke-direct {v0, p0, p1}, Lcom/google/android/libraries/places/internal/hm;-><init>([Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static g()Lcom/google/android/libraries/places/internal/ha;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/libraries/places/internal/ha<",
            "TE;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/hm;->a:Lcom/google/android/libraries/places/internal/ha;

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 60
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Use SerializedForm"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method a([Ljava/lang/Object;I)I
    .locals 4

    .line 47
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/ha;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    add-int v2, p2, v1

    .line 49
    invoke-virtual {p0, v1}, Lcom/google/android/libraries/places/internal/ha;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/2addr p2, v0

    return p2
.end method

.method public a(II)Lcom/google/android/libraries/places/internal/ha;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/android/libraries/places/internal/ha<",
            "TE;>;"
        }
    .end annotation

    .line 32
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/ha;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/google/android/libraries/places/internal/go;->a(III)V

    sub-int/2addr p2, p1

    .line 34
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/ha;->size()I

    move-result v0

    if-ne p2, v0, :cond_0

    return-object p0

    :cond_0
    if-nez p2, :cond_1

    .line 37
    sget-object p1, Lcom/google/android/libraries/places/internal/hm;->a:Lcom/google/android/libraries/places/internal/ha;

    return-object p1

    .line 40
    :cond_1
    new-instance v0, Lcom/google/android/libraries/places/internal/hc;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/libraries/places/internal/hc;-><init>(Lcom/google/android/libraries/places/internal/ha;II)V

    return-object v0
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

    .line 28
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/ha;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/hv;

    return-object v0
.end method

.method public final add(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 44
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 42
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 31
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/ha;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final e()Lcom/google/android/libraries/places/internal/ha;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/libraries/places/internal/ha<",
            "TE;>;"
        }
    .end annotation

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 52
    invoke-static {p0, p1}, Lcom/google/android/libraries/places/internal/go;->a(Ljava/util/List;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 4

    .line 54
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/ha;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    .line 56
    invoke-virtual {p0, v2}, Lcom/google/android/libraries/places/internal/ha;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    not-int v1, v1

    not-int v1, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 29
    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/libraries/places/internal/go;->b(Ljava/util/List;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 62
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/gz;->a()Lcom/google/android/libraries/places/internal/hu;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 30
    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/libraries/places/internal/go;->d(Ljava/util/List;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public synthetic listIterator()Ljava/util/ListIterator;
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/places/internal/ha;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/hv;

    return-object v0
.end method

.method public synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 1

    .line 65
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/ha;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/go;->b(II)I

    .line 66
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/ha;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    sget-object p1, Lcom/google/android/libraries/places/internal/ha;->a:Lcom/google/android/libraries/places/internal/hv;

    return-object p1

    .line 68
    :cond_0
    new-instance v0, Lcom/google/android/libraries/places/internal/gt;

    invoke-direct {v0, p0, p1}, Lcom/google/android/libraries/places/internal/gt;-><init>(Lcom/google/android/libraries/places/internal/ha;I)V

    return-object v0
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 45
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 43
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/google/android/libraries/places/internal/ha;->a(II)Lcom/google/android/libraries/places/internal/ha;

    move-result-object p1

    return-object p1
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    .line 61
    new-instance v0, Lcom/google/android/libraries/places/internal/hb;

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/gz;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/internal/hb;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method
