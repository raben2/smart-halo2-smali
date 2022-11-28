.class Lcom/google/android/libraries/places/internal/nt;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lcom/google/android/libraries/places/internal/kk;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/kk;)V
    .locals 1

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "output"

    .line 308
    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/kx;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/kk;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    .line 309
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    iput-object p0, p1, Lcom/google/android/libraries/places/internal/kk;->c:Lcom/google/android/libraries/places/internal/nt;

    return-void
.end method

.method public static a(Lcom/google/android/libraries/places/internal/kk;)Lcom/google/android/libraries/places/internal/nt;
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/kk;->c:Lcom/google/android/libraries/places/internal/nt;

    if-eqz v0, :cond_0

    .line 305
    iget-object p0, p0, Lcom/google/android/libraries/places/internal/kk;->c:Lcom/google/android/libraries/places/internal/nt;

    return-object p0

    .line 306
    :cond_0
    new-instance v0, Lcom/google/android/libraries/places/internal/nt;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/nt;-><init>(Lcom/google/android/libraries/places/internal/kk;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/android/libraries/places/internal/nu;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/nu;->a:Lcom/google/android/libraries/places/internal/nu;

    return-object v0
.end method

.method public a(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/google/android/libraries/places/internal/kk;->a(II)V

    return-void
.end method

.method public a(ID)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/kk;->a(ID)V

    return-void
.end method

.method public a(IF)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/places/internal/kk;->a(IF)V

    return-void
.end method

.method public a(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/places/internal/kk;->e(II)V

    return-void
.end method

.method public a(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    .line 6
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/kk;->a(IJ)V

    return-void
.end method

.method public a(ILcom/google/android/libraries/places/internal/kc;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/places/internal/kk;->a(ILcom/google/android/libraries/places/internal/kc;)V

    return-void
.end method

.method public a(ILcom/google/android/libraries/places/internal/lu;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/google/android/libraries/places/internal/lu<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 294
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    .line 296
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 297
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    const/4 v2, 0x2

    invoke-virtual {v1, p1, v2}, Lcom/google/android/libraries/places/internal/kk;->a(II)V

    .line 298
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    .line 299
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v2, v3}, Lcom/google/android/libraries/places/internal/lt;->a(Lcom/google/android/libraries/places/internal/lu;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 300
    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/internal/kk;->b(I)V

    .line 301
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, p2, v2, v0}, Lcom/google/android/libraries/places/internal/lt;->a(Lcom/google/android/libraries/places/internal/kk;Lcom/google/android/libraries/places/internal/lu;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 290
    instance-of v0, p2, Lcom/google/android/libraries/places/internal/kc;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    check-cast p2, Lcom/google/android/libraries/places/internal/kc;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/places/internal/kk;->b(ILcom/google/android/libraries/places/internal/kc;)V

    return-void

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    check-cast p2, Lcom/google/android/libraries/places/internal/ma;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/places/internal/kk;->a(ILcom/google/android/libraries/places/internal/ma;)V

    return-void
.end method

.method public a(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/mp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    check-cast p2, Lcom/google/android/libraries/places/internal/ma;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/kk;->a(ILcom/google/android/libraries/places/internal/ma;Lcom/google/android/libraries/places/internal/mp;)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/places/internal/kk;->a(ILjava/lang/String;)V

    return-void
.end method

.method public a(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    instance-of v0, p2, Lcom/google/android/libraries/places/internal/ll;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 190
    move-object v0, p2

    check-cast v0, Lcom/google/android/libraries/places/internal/ll;

    .line 191
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 192
    invoke-interface {v0, v1}, Lcom/google/android/libraries/places/internal/ll;->a(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/google/android/libraries/places/internal/nt;->b(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 195
    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 196
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Lcom/google/android/libraries/places/internal/kk;->a(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public a(ILjava/util/List;Lcom/google/android/libraries/places/internal/mp;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/google/android/libraries/places/internal/mp;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 282
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 283
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p3}, Lcom/google/android/libraries/places/internal/nt;->a(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/mp;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 51
    iget-object p3, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/libraries/places/internal/kk;->a(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 53
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 54
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/kk;->f(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 56
    :cond_0
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    invoke-virtual {p1, p3}, Lcom/google/android/libraries/places/internal/kk;->b(I)V

    .line 57
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 58
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/libraries/places/internal/kk;->a(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 61
    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 62
    iget-object p3, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/android/libraries/places/internal/kk;->b(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public a(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/places/internal/kk;->a(IZ)V

    return-void
.end method

.method public b(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lcom/google/android/libraries/places/internal/kk;->a(II)V

    return-void
.end method

.method public b(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    .line 16
    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/places/internal/kk;->b(II)V

    return-void
.end method

.method public b(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    .line 9
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/kk;->c(IJ)V

    return-void
.end method

.method b(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/places/internal/kk;->a(ILjava/lang/String;)V

    return-void

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    check-cast p2, Lcom/google/android/libraries/places/internal/kc;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/places/internal/kk;->a(ILcom/google/android/libraries/places/internal/kc;)V

    return-void
.end method

.method public b(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/mp;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    check-cast p2, Lcom/google/android/libraries/places/internal/ma;

    const/4 v1, 0x3

    .line 41
    invoke-virtual {v0, p1, v1}, Lcom/google/android/libraries/places/internal/kk;->a(II)V

    .line 43
    iget-object v1, v0, Lcom/google/android/libraries/places/internal/kk;->c:Lcom/google/android/libraries/places/internal/nt;

    invoke-interface {p3, p2, v1}, Lcom/google/android/libraries/places/internal/mp;->a(Ljava/lang/Object;Lcom/google/android/libraries/places/internal/nt;)V

    const/4 p2, 0x4

    .line 44
    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/places/internal/kk;->a(II)V

    return-void
.end method

.method public b(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/internal/kc;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 199
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/places/internal/kc;

    invoke-virtual {v1, p1, v2}, Lcom/google/android/libraries/places/internal/kk;->a(ILcom/google/android/libraries/places/internal/kc;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(ILjava/util/List;Lcom/google/android/libraries/places/internal/mp;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/google/android/libraries/places/internal/mp;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 286
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 287
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p3}, Lcom/google/android/libraries/places/internal/nt;->b(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/mp;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 66
    iget-object p3, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/libraries/places/internal/kk;->a(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 68
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 69
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    invoke-static {}, Lcom/google/android/libraries/places/internal/kk;->a()I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 71
    :cond_0
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    invoke-virtual {p1, p3}, Lcom/google/android/libraries/places/internal/kk;->b(I)V

    .line 72
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 73
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/libraries/places/internal/kk;->d(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 76
    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 77
    iget-object p3, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/android/libraries/places/internal/kk;->e(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public c(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/places/internal/kk;->b(II)V

    return-void
.end method

.method public c(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/kk;->a(IJ)V

    return-void
.end method

.method public c(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 81
    iget-object p3, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/libraries/places/internal/kk;->a(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 83
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 84
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/kk;->d(J)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 86
    :cond_0
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    invoke-virtual {p1, p3}, Lcom/google/android/libraries/places/internal/kk;->b(I)V

    .line 87
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 88
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 89
    invoke-virtual {p1, v1, v2}, Lcom/google/android/libraries/places/internal/kk;->a(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 92
    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 93
    iget-object p3, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 94
    invoke-virtual {p3, p1, v1, v2}, Lcom/google/android/libraries/places/internal/kk;->a(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public d(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/places/internal/kk;->e(II)V

    return-void
.end method

.method public d(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/kk;->c(IJ)V

    return-void
.end method

.method public d(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 98
    iget-object p3, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/libraries/places/internal/kk;->a(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 100
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 101
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/kk;->e(J)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 103
    :cond_0
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    invoke-virtual {p1, p3}, Lcom/google/android/libraries/places/internal/kk;->b(I)V

    .line 104
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 105
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/google/android/libraries/places/internal/kk;->a(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 108
    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 109
    iget-object p3, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Lcom/google/android/libraries/places/internal/kk;->a(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public e(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/places/internal/kk;->c(II)V

    return-void
.end method

.method public e(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/kk;->b(IJ)V

    return-void
.end method

.method public e(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 113
    iget-object p3, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/libraries/places/internal/kk;->a(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 115
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 116
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    invoke-static {}, Lcom/google/android/libraries/places/internal/kk;->c()I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 118
    :cond_0
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    invoke-virtual {p1, p3}, Lcom/google/android/libraries/places/internal/kk;->b(I)V

    .line 119
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 120
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/google/android/libraries/places/internal/kk;->c(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 123
    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 124
    iget-object p3, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Lcom/google/android/libraries/places/internal/kk;->c(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public f(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/places/internal/kk;->d(II)V

    return-void
.end method

.method public f(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 128
    iget-object p3, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/libraries/places/internal/kk;->a(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 130
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 131
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    invoke-static {}, Lcom/google/android/libraries/places/internal/kk;->e()I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 133
    :cond_0
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    invoke-virtual {p1, p3}, Lcom/google/android/libraries/places/internal/kk;->b(I)V

    .line 134
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 135
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/libraries/places/internal/kk;->a(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 138
    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 139
    iget-object p3, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/android/libraries/places/internal/kk;->a(IF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public g(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 143
    iget-object p3, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/libraries/places/internal/kk;->a(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 145
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 146
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    invoke-static {}, Lcom/google/android/libraries/places/internal/kk;->f()I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 148
    :cond_0
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    invoke-virtual {p1, p3}, Lcom/google/android/libraries/places/internal/kk;->b(I)V

    .line 149
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 150
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/google/android/libraries/places/internal/kk;->a(D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 153
    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 154
    iget-object p3, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Lcom/google/android/libraries/places/internal/kk;->a(ID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public h(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 158
    iget-object p3, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/libraries/places/internal/kk;->a(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 160
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 161
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/kk;->i(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 163
    :cond_0
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    invoke-virtual {p1, p3}, Lcom/google/android/libraries/places/internal/kk;->b(I)V

    .line 164
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 165
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 166
    invoke-virtual {p1, p3}, Lcom/google/android/libraries/places/internal/kk;->a(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 169
    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 170
    iget-object p3, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 171
    invoke-virtual {p3, p1, v1}, Lcom/google/android/libraries/places/internal/kk;->b(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public i(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 175
    iget-object p3, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/libraries/places/internal/kk;->a(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 177
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 178
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {}, Lcom/google/android/libraries/places/internal/kk;->g()I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 180
    :cond_0
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    invoke-virtual {p1, p3}, Lcom/google/android/libraries/places/internal/kk;->b(I)V

    .line 181
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 182
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/libraries/places/internal/kk;->a(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 185
    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 186
    iget-object p3, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/android/libraries/places/internal/kk;->a(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public j(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 204
    iget-object p3, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/libraries/places/internal/kk;->a(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 206
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 207
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/kk;->g(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 209
    :cond_0
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    invoke-virtual {p1, p3}, Lcom/google/android/libraries/places/internal/kk;->b(I)V

    .line 210
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 211
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/libraries/places/internal/kk;->b(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 214
    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 215
    iget-object p3, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/android/libraries/places/internal/kk;->c(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public k(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 219
    iget-object p3, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/libraries/places/internal/kk;->a(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 221
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 222
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    invoke-static {}, Lcom/google/android/libraries/places/internal/kk;->b()I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 224
    :cond_0
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    invoke-virtual {p1, p3}, Lcom/google/android/libraries/places/internal/kk;->b(I)V

    .line 225
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 226
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 227
    invoke-virtual {p1, p3}, Lcom/google/android/libraries/places/internal/kk;->d(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 230
    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 231
    iget-object p3, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 232
    invoke-virtual {p3, p1, v1}, Lcom/google/android/libraries/places/internal/kk;->e(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public l(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 236
    iget-object p3, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/libraries/places/internal/kk;->a(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 238
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 239
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    invoke-static {}, Lcom/google/android/libraries/places/internal/kk;->d()I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 241
    :cond_0
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    invoke-virtual {p1, p3}, Lcom/google/android/libraries/places/internal/kk;->b(I)V

    .line 242
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 243
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 244
    invoke-virtual {p1, v1, v2}, Lcom/google/android/libraries/places/internal/kk;->c(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 247
    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 248
    iget-object p3, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 249
    invoke-virtual {p3, p1, v1, v2}, Lcom/google/android/libraries/places/internal/kk;->c(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public m(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 253
    iget-object p3, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/libraries/places/internal/kk;->a(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 255
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 256
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/kk;->h(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 258
    :cond_0
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    invoke-virtual {p1, p3}, Lcom/google/android/libraries/places/internal/kk;->b(I)V

    .line 259
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 260
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/libraries/places/internal/kk;->c(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 263
    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 264
    iget-object p3, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/android/libraries/places/internal/kk;->d(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public n(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 268
    iget-object p3, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/libraries/places/internal/kk;->a(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 270
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 271
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/kk;->f(J)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 273
    :cond_0
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    invoke-virtual {p1, p3}, Lcom/google/android/libraries/places/internal/kk;->b(I)V

    .line 274
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 275
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/google/android/libraries/places/internal/kk;->b(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 278
    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 279
    iget-object p3, p0, Lcom/google/android/libraries/places/internal/nt;->a:Lcom/google/android/libraries/places/internal/kk;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Lcom/google/android/libraries/places/internal/kk;->b(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method
