.class public Lcom/instabug/library/annotation/c;
.super Ljava/lang/Object;
.source "MarkUpDrawable.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected volatile a:Lcom/instabug/library/annotation/f/g;

.field protected b:Lcom/instabug/library/annotation/f/g;

.field protected c:Lcom/instabug/library/annotation/b;

.field protected d:Lcom/instabug/library/annotation/b;

.field private e:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/instabug/library/annotation/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/instabug/library/annotation/f/g;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/instabug/library/annotation/b;

    invoke-direct {v0}, Lcom/instabug/library/annotation/b;-><init>()V

    iput-object v0, p0, Lcom/instabug/library/annotation/c;->c:Lcom/instabug/library/annotation/b;

    .line 3
    new-instance v0, Lcom/instabug/library/annotation/b;

    invoke-direct {v0}, Lcom/instabug/library/annotation/b;-><init>()V

    iput-object v0, p0, Lcom/instabug/library/annotation/c;->d:Lcom/instabug/library/annotation/b;

    .line 4
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/instabug/library/annotation/c;->e:Ljava/util/Stack;

    .line 7
    iput-object p1, p0, Lcom/instabug/library/annotation/c;->a:Lcom/instabug/library/annotation/f/g;

    .line 8
    iput-object p1, p0, Lcom/instabug/library/annotation/c;->b:Lcom/instabug/library/annotation/f/g;

    return-void
.end method

.method private c(Lcom/instabug/library/annotation/b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/library/annotation/c;->d:Lcom/instabug/library/annotation/b;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/instabug/library/annotation/c;->e:Ljava/util/Stack;

    new-instance v2, Lcom/instabug/library/annotation/b;

    invoke-direct {v2, v0}, Lcom/instabug/library/annotation/b;-><init>(Lcom/instabug/library/annotation/b;)V

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/instabug/library/annotation/c;->d:Lcom/instabug/library/annotation/b;

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 3

    .line 18
    iget-object v0, p0, Lcom/instabug/library/annotation/c;->a:Lcom/instabug/library/annotation/f/g;

    iget-object v1, p0, Lcom/instabug/library/annotation/c;->c:Lcom/instabug/library/annotation/b;

    iget-object v2, p0, Lcom/instabug/library/annotation/c;->d:Lcom/instabug/library/annotation/b;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/instabug/library/annotation/f/g;->a(Lcom/instabug/library/annotation/b;Lcom/instabug/library/annotation/b;II)V

    return-void
.end method

.method protected a(Landroid/graphics/Canvas;)V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/instabug/library/annotation/c;->d:Lcom/instabug/library/annotation/b;

    invoke-virtual {v0}, Lcom/instabug/library/annotation/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 5
    iget-object v0, p0, Lcom/instabug/library/annotation/c;->a:Lcom/instabug/library/annotation/f/g;

    iget-object v1, p0, Lcom/instabug/library/annotation/c;->c:Lcom/instabug/library/annotation/b;

    iget-object v2, p0, Lcom/instabug/library/annotation/c;->d:Lcom/instabug/library/annotation/b;

    invoke-virtual {v0, p1, v1, v2}, Lcom/instabug/library/annotation/f/g;->a(Landroid/graphics/Canvas;Lcom/instabug/library/annotation/b;Lcom/instabug/library/annotation/b;)V

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void
.end method

.method public varargs a(Landroid/graphics/Canvas;[Lcom/instabug/library/annotation/a;)V
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/instabug/library/annotation/c;->a:Lcom/instabug/library/annotation/f/g;

    iget-object v1, p0, Lcom/instabug/library/annotation/c;->c:Lcom/instabug/library/annotation/b;

    invoke-virtual {v0, p1, v1, p2}, Lcom/instabug/library/annotation/f/g;->a(Landroid/graphics/Canvas;Lcom/instabug/library/annotation/b;[Lcom/instabug/library/annotation/a;)V

    return-void
.end method

.method public a(Lcom/instabug/library/annotation/b;)V
    .locals 3

    .line 19
    iget-object v0, p0, Lcom/instabug/library/annotation/c;->a:Lcom/instabug/library/annotation/f/g;

    iget-object v1, p0, Lcom/instabug/library/annotation/c;->c:Lcom/instabug/library/annotation/b;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/instabug/library/annotation/f/g;->a(Lcom/instabug/library/annotation/b;Lcom/instabug/library/annotation/b;Z)V

    return-void
.end method

.method public a(Lcom/instabug/library/annotation/f/g;Lcom/instabug/library/annotation/b;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .line 21
    new-instance v0, Lcom/instabug/library/annotation/b;

    invoke-direct {v0, p2}, Lcom/instabug/library/annotation/b;-><init>(Lcom/instabug/library/annotation/b;)V

    invoke-direct {p0, v0}, Lcom/instabug/library/annotation/c;->c(Lcom/instabug/library/annotation/b;)V

    .line 22
    iput-object p1, p0, Lcom/instabug/library/annotation/c;->a:Lcom/instabug/library/annotation/f/g;

    .line 23
    instance-of p1, p1, Lcom/instabug/library/annotation/f/a;

    if-eqz p1, :cond_0

    .line 24
    iput-object p2, p0, Lcom/instabug/library/annotation/c;->c:Lcom/instabug/library/annotation/b;

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 7
    new-instance v0, Lcom/instabug/library/annotation/b;

    iget-object v1, p0, Lcom/instabug/library/annotation/c;->c:Lcom/instabug/library/annotation/b;

    invoke-direct {v0, v1}, Lcom/instabug/library/annotation/b;-><init>(Lcom/instabug/library/annotation/b;)V

    .line 8
    invoke-virtual {v0, p1}, Lcom/instabug/library/annotation/b;->a(Z)V

    .line 9
    invoke-direct {p0, v0}, Lcom/instabug/library/annotation/c;->c(Lcom/instabug/library/annotation/b;)V

    return-void
.end method

.method public a()Z
    .locals 4

    .line 10
    iget-object v0, p0, Lcom/instabug/library/annotation/c;->e:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 12
    iget-object v0, p0, Lcom/instabug/library/annotation/c;->e:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/library/annotation/b;

    iput-object v0, p0, Lcom/instabug/library/annotation/c;->d:Lcom/instabug/library/annotation/b;

    .line 14
    iget-object v0, p0, Lcom/instabug/library/annotation/c;->e:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/instabug/library/annotation/c;->b:Lcom/instabug/library/annotation/f/g;

    iput-object v0, p0, Lcom/instabug/library/annotation/c;->a:Lcom/instabug/library/annotation/f/g;

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/instabug/library/annotation/c;->a:Lcom/instabug/library/annotation/f/g;

    iget-object v1, p0, Lcom/instabug/library/annotation/c;->d:Lcom/instabug/library/annotation/b;

    iget-object v2, p0, Lcom/instabug/library/annotation/c;->c:Lcom/instabug/library/annotation/b;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/instabug/library/annotation/f/g;->a(Lcom/instabug/library/annotation/b;Lcom/instabug/library/annotation/b;Z)V

    return v3

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/graphics/PointF;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/library/annotation/c;->d:Lcom/instabug/library/annotation/b;

    invoke-virtual {v0}, Lcom/instabug/library/annotation/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/library/annotation/c;->a:Lcom/instabug/library/annotation/f/g;

    iget-object v1, p0, Lcom/instabug/library/annotation/c;->c:Lcom/instabug/library/annotation/b;

    invoke-virtual {v0, p1, v1}, Lcom/instabug/library/annotation/f/g;->a(Landroid/graphics/PointF;Lcom/instabug/library/annotation/b;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b()Lcom/instabug/library/annotation/f/g;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/instabug/library/annotation/c;->a:Lcom/instabug/library/annotation/f/g;

    return-object v0
.end method

.method public b(Landroid/graphics/Canvas;)V
    .locals 6

    .line 4
    iget-object v0, p0, Lcom/instabug/library/annotation/c;->a:Lcom/instabug/library/annotation/f/g;

    iget-object v1, p0, Lcom/instabug/library/annotation/c;->c:Lcom/instabug/library/annotation/b;

    invoke-virtual {v1}, Lcom/instabug/library/annotation/b;->d()Landroid/graphics/PointF;

    move-result-object v2

    iget-object v1, p0, Lcom/instabug/library/annotation/c;->c:Lcom/instabug/library/annotation/b;

    invoke-virtual {v1}, Lcom/instabug/library/annotation/b;->e()Landroid/graphics/PointF;

    move-result-object v3

    iget-object v1, p0, Lcom/instabug/library/annotation/c;->c:Lcom/instabug/library/annotation/b;

    .line 5
    invoke-virtual {v1}, Lcom/instabug/library/annotation/b;->b()Landroid/graphics/PointF;

    move-result-object v4

    iget-object v1, p0, Lcom/instabug/library/annotation/c;->c:Lcom/instabug/library/annotation/b;

    invoke-virtual {v1}, Lcom/instabug/library/annotation/b;->a()Landroid/graphics/PointF;

    move-result-object v5

    move-object v1, p1

    .line 6
    invoke-virtual/range {v0 .. v5}, Lcom/instabug/library/annotation/f/g;->a(Landroid/graphics/Canvas;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    return-void
.end method

.method public b(Lcom/instabug/library/annotation/b;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/instabug/library/annotation/c;->c:Lcom/instabug/library/annotation/b;

    .line 2
    iget-object v0, p0, Lcom/instabug/library/annotation/c;->d:Lcom/instabug/library/annotation/b;

    invoke-virtual {v0, p1}, Lcom/instabug/library/annotation/b;->a(Lcom/instabug/library/annotation/b;)V

    return-void
.end method

.method public c()Z
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/instabug/library/annotation/c;->d:Lcom/instabug/library/annotation/b;

    invoke-virtual {v0}, Lcom/instabug/library/annotation/b;->f()Z

    move-result v0

    return v0
.end method

.method public d()V
    .locals 2

    .line 1
    new-instance v0, Lcom/instabug/library/annotation/b;

    iget-object v1, p0, Lcom/instabug/library/annotation/c;->c:Lcom/instabug/library/annotation/b;

    invoke-direct {v0, v1}, Lcom/instabug/library/annotation/b;-><init>(Lcom/instabug/library/annotation/b;)V

    invoke-direct {p0, v0}, Lcom/instabug/library/annotation/c;->c(Lcom/instabug/library/annotation/b;)V

    return-void
.end method
