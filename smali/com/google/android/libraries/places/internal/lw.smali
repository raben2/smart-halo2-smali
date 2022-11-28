.class Lcom/google/android/libraries/places/internal/lw;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static b(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 21
    check-cast p1, Lcom/google/android/libraries/places/internal/lv;

    .line 22
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/lv;->isEmpty()Z

    move-result p0

    const/4 p2, 0x0

    if-eqz p0, :cond_0

    return p2

    .line 25
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/lv;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_1

    return p2

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 26
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 27
    new-instance p0, Ljava/lang/NoSuchMethodError;

    invoke-direct {p0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p0
.end method

.method static b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/lv;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/libraries/places/internal/lv<",
            "TK;TV;>;"
        }
    .end annotation

    .line 9
    check-cast p0, Lcom/google/android/libraries/places/internal/lv;

    .line 10
    check-cast p1, Lcom/google/android/libraries/places/internal/lv;

    .line 11
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/lv;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 13
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/lv;->a:Z

    if-nez v0, :cond_0

    .line 15
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/lv;->a()Lcom/google/android/libraries/places/internal/lv;

    move-result-object p0

    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/lv;->b()V

    .line 18
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/lv;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 19
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/lv;->putAll(Ljava/util/Map;)V

    :cond_1
    return-object p0
.end method


# virtual methods
.method public a(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 7
    invoke-static {p1, p2, p3}, Lcom/google/android/libraries/places/internal/lw;->b(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 6
    invoke-static {p1, p2}, Lcom/google/android/libraries/places/internal/lw;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/lv;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/libraries/places/internal/lv;

    return-object p1
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/libraries/places/internal/lv;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, Lcom/google/android/libraries/places/internal/lv;->a:Z

    return-object p1
.end method

.method public c(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/lu;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/libraries/places/internal/lu<",
            "**>;"
        }
    .end annotation

    .line 5
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method
